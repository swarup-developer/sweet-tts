package aio.tts;

import android.app.Activity;
import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VoiceFolder.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u000bJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Laio/tts/VoiceFolder;", "", "<init>", "()V", "NAME", "", "REQUEST_CODE", "", "dir", "Ljava/io/File;", "hasAccess", "", "exists", "create", "askAccess", "", "activity", "Landroid/app/Activity;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VoiceFolder {
    public static final VoiceFolder INSTANCE = new VoiceFolder();
    public static final String NAME = "All In One TTS Voices";
    public static final int REQUEST_CODE = 4401;

    private VoiceFolder() {
    }

    public final File dir() {
        return new File(Environment.getExternalStorageDirectory(), NAME);
    }

    public final boolean hasAccess() {
        Application context = App.INSTANCE.getContext();
        if (Build.VERSION.SDK_INT >= 30) {
            return Environment.isExternalStorageManager();
        }
        return context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0 && context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public final boolean exists() {
        try {
            return dir().isDirectory();
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean create() {
        try {
            if (dir().mkdirs()) {
                return true;
            }
            return dir().isDirectory();
        } catch (Exception unused) {
            return false;
        }
    }

    public final void askAccess(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                activity.startActivity(new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION", Uri.parse("package:" + activity.getPackageName())));
                return;
            } catch (ActivityNotFoundException unused) {
                activity.startActivity(new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"));
                return;
            }
        }
        activity.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, REQUEST_CODE);
    }
}
