package aio.tts;

import android.app.Application;
import android.os.Build;
import android.os.Process;
import android.util.Log;
import androidx.recyclerview.widget.ItemTouchHelper;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: App.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002¨\u0006\t"}, d2 = {"Laio/tts/App;", "Landroid/app/Application;", "<init>", "()V", "onCreate", "", "installCrashLogger", "logPreviousExits", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class App extends Application {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static Application context;

    @Override // android.app.Application
    public void onCreate() {
        String strCompactEnv;
        super.onCreate();
        context = this;
        installCrashLogger();
        try {
            System.loadLibrary("nofdsan");
        } catch (Throwable th) {
            DiagnosticLog.INSTANCE.log("Init", "nofdsan load failed: " + th);
            DetailedLog.INSTANCE.log("Init", "nofdsan load failed: " + th);
        }
        Prefs.INSTANCE.resetVolumeRatePitchToNewDefaultsOnce();
        Prefs.INSTANCE.resetNumberEmojiVoiceToMatchLanguageOnce();
        Prefs.INSTANCE.migrateDictionaryEnToVocalizerEnglishOnce();
        Prefs.INSTANCE.migrateGoogleVolumeDefaultOnce();
        Prefs.INSTANCE.migrateDictionaryToPerLanguageOnce();
        Prefs.INSTANCE.seedDictionaryWordExclusionDefaultsOnce();
        Prefs.INSTANCE.seedDictionaryWordExclusionDefaultsV2Once();
        Prefs.INSTANCE.seedDictionaryIndianEnglishV3Once();
        try {
            if (!Prefs.INSTANCE.logsClearedForPrivacyV96()) {
                DiagnosticLog.INSTANCE.clear();
                DetailedLog.INSTANCE.clear();
                Prefs.INSTANCE.setLogsClearedForPrivacyV96();
            }
        } catch (Throwable th2) {
            Log.w("AllInOneTTS", "privacy log clear failed", th2);
        }
        DetailedLog.INSTANCE.rearmIfActive();
        try {
            strCompactEnv = LoggingKt.compactEnv();
        } catch (Throwable th3) {
            strCompactEnv = "env unavailable: " + th3;
        }
        DiagnosticLog.INSTANCE.log("Init", "process start pid=" + Process.myPid() + " " + strCompactEnv);
        DetailedLog.INSTANCE.log("Init", "process start pid=" + Process.myPid() + " " + strCompactEnv);
        registerActivityLifecycleCallbacks(EdgeToEdgeInsets.INSTANCE);
        logPreviousExits();
        EloquenceHub.INSTANCE.checkRecentCrashes();
    }

    private final void installCrashLogger() {
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: aio.tts.App$$ExternalSyntheticLambda2
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread, Throwable th) {
                App.installCrashLogger$lambda$2(defaultUncaughtExceptionHandler, thread, th);
            }
        });
    }

    static final void installCrashLogger$lambda$2(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Thread thread, Throwable th) {
        try {
            StringWriter stringWriter = new StringWriter();
            try {
                th.printStackTrace(new PrintWriter(stringWriter));
                String string = stringWriter.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                List<String> listLines = StringsKt.lines(string);
                DiagnosticLog.INSTANCE.log("Crash", "uncaught " + th.getClass().getName() + ": " + th.getMessage() + " in thread " + thread.getName() + " | " + CollectionsKt.joinToString$default(CollectionsKt.take(listLines, 30), " <- ", null, null, 0, null, new Function1() { // from class: aio.tts.App$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return App.installCrashLogger$lambda$2$lambda$0((String) obj);
                    }
                }, 30, null));
                DetailedLog.INSTANCE.log("Crash", "uncaught exception in thread " + thread.getName() + ":");
                Iterator it = CollectionsKt.take(listLines, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION).iterator();
                while (it.hasNext()) {
                    DetailedLog.INSTANCE.log("Crash", "    " + ((String) it.next()));
                }
                DiagnosticLog.INSTANCE.flushNow();
                DetailedLog.INSTANCE.flushNow();
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
        }
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }

    static final CharSequence installCrashLogger$lambda$2$lambda$0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return StringsKt.trim((CharSequence) it).toString();
    }

    private final void logPreviousExits() {
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        new Thread(new Runnable() { // from class: aio.tts.App$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                App.logPreviousExits$lambda$7(this.f$0);
            }
        }).start();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ea A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f0 A[Catch: all -> 0x00db, TryCatch #9 {all -> 0x00db, blocks: (B:20:0x00d1, B:27:0x00df, B:35:0x00f0, B:37:0x00f6), top: B:111:0x00d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f6 A[Catch: all -> 0x00db, TRY_LEAVE, TryCatch #9 {all -> 0x00db, blocks: (B:20:0x00d1, B:27:0x00df, B:35:0x00f0, B:37:0x00f6), top: B:111:0x00d1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static final void logPreviousExits$lambda$7(aio.tts.App r24) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.App.logPreviousExits$lambda$7(aio.tts.App):void");
    }

    /* compiled from: App.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Laio/tts/App$Companion;", "", "<init>", "()V", "value", "Landroid/app/Application;", "context", "getContext", "()Landroid/app/Application;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Application getContext() {
            Application application = App.context;
            if (application != null) {
                return application;
            }
            Intrinsics.throwUninitializedPropertyAccessException("context");
            return null;
        }
    }
}
