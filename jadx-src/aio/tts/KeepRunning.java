package aio.tts;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: KeepRunning.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\tJ\u0006\u0010\u000e\u001a\u00020\u000bJ\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\tH\u0002J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\tH\u0002J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Laio/tts/KeepRunning;", "", "<init>", "()V", "CHANNEL", "", "ID", "", NotificationCompat.CATEGORY_SERVICE, "Landroid/app/Service;", "onServiceCreated", "", "s", "onServiceDestroyed", "apply", "start", "stop", "log", NotificationCompat.CATEGORY_MESSAGE, "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class KeepRunning {
    private static final String CHANNEL = "keep_running";
    private static final int ID = 4101;
    public static final KeepRunning INSTANCE = new KeepRunning();
    private static volatile Service service;

    private KeepRunning() {
    }

    public final void onServiceCreated(Service s) {
        Intrinsics.checkNotNullParameter(s, "s");
        service = s;
        apply();
    }

    public final void onServiceDestroyed(Service s) {
        Intrinsics.checkNotNullParameter(s, "s");
        if (service == s) {
            stop(s);
            service = null;
        }
    }

    public final void apply() {
        Service service2 = service;
        if (service2 == null) {
            return;
        }
        if (Prefs.INSTANCE.keepRunningEnabled()) {
            start(service2);
        } else {
            stop(service2);
        }
    }

    private final void start(Service s) {
        try {
            NotificationManager notificationManager = (NotificationManager) s.getSystemService(NotificationManager.class);
            NotificationChannel notificationChannel = new NotificationChannel(CHANNEL, "Keep running in background", 1);
            notificationChannel.setShowBadge(false);
            notificationChannel.setSound(null, null);
            notificationManager.createNotificationChannel(notificationChannel);
            Notification notificationBuild = new Notification.Builder(s, CHANNEL).setSmallIcon(android.R.drawable.ic_lock_silent_mode_off).setContentTitle("Sweet TTS is running").setContentText("Keeps speech ready in the background").setContentIntent(PendingIntent.getActivity(s, 0, new Intent(s, (Class<?>) MainActivity.class), AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL)).setOngoing(true).setShowWhen(false).build();
            Intrinsics.checkNotNullExpressionValue(notificationBuild, "build(...)");
            s.startForeground(ID, notificationBuild, 2);
            log("on (foreground service with notification)");
        } catch (Throwable th) {
            log("could not start: " + th);
        }
    }

    private final void stop(Service s) {
        try {
            s.stopForeground(1);
        } catch (Throwable th) {
            log("could not stop: " + th);
        }
    }

    private final void log(String msg) {
        DiagnosticLog.INSTANCE.log("KeepRunning", msg);
        DetailedLog.INSTANCE.log("KeepRunning", msg);
    }
}
