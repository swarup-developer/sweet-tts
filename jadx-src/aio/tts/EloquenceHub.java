package aio.tts;

import android.app.ActivityManager;
import android.app.Application;
import android.app.ApplicationExitInfo;
import android.os.Build;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.eloqium.tts.engine.EloqiumEngine;

/* compiled from: EloquenceHub.kt */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u001a\u001a\u00020\u0019J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0005H\u0002J\u0018\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u0005H\u0002J\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0006\u0010$\u001a\u00020\u0019J\u0006\u0010%\u001a\u00020\u001cJ\u0016\u0010&\u001a\u00020\u001c2\u0006\u0010'\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0005J\u000e\u0010*\u001a\u00020\u001c2\u0006\u0010'\u001a\u00020\u0010J\u0006\u0010+\u001a\u00020\u001cJ\u0006\u0010,\u001a\u00020\u001cJ\b\u0010-\u001a\u00020\u001cH\u0002J\u0006\u0010.\u001a\u00020\u001cJ\u0012\u0010/\u001a\u0004\u0018\u0001002\u0006\u00101\u001a\u000202H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\n0\u0012j\b\u0012\u0004\u0012\u00020\n`\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Laio/tts/EloquenceHub;", "", "<init>", "()V", "TAG", "", "LANGUAGE_EN_US", "", "SAMPLE_RATE_HZ", "HANG_MS", "", "utteranceLock", "Ljava/util/concurrent/locks/ReentrantLock;", "getUtteranceLock", "()Ljava/util/concurrent/locks/ReentrantLock;", "engine", "Lorg/eloqium/tts/engine/EloqiumEngine;", "breaks", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "circuitOpenUntilMs", "circuitReason", "armedEngine", "lastProgressMs", "watchdogStarted", "", "isAvailable", "log", "", NotificationCompat.CATEGORY_MESSAGE, "openCircuit", "ms", "why", "lastFastStopMs", "fastStopBreaks", "fastStopOff", "fastStopAllowed", "noteFastStop", "reportBroken", "e", "armLock", "Ljava/lang/Object;", "arm", NotificationCompat.CATEGORY_PROGRESS, "disarm", "startWatchdog", "checkRecentCrashes", "readTombstone", "", "exit", "Landroid/app/ApplicationExitInfo;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EloquenceHub {
    private static final long HANG_MS = 5000;
    public static final int LANGUAGE_EN_US = 65536;
    public static final int SAMPLE_RATE_HZ = 22050;
    private static final String TAG = "AllInOneTTS";
    private static volatile EloqiumEngine armedEngine;
    private static volatile long circuitOpenUntilMs;
    private static EloqiumEngine engine;
    private static volatile int fastStopBreaks;
    private static volatile boolean fastStopOff;
    private static volatile long lastFastStopMs;
    private static volatile long lastProgressMs;
    private static boolean watchdogStarted;
    public static final EloquenceHub INSTANCE = new EloquenceHub();
    private static final ReentrantLock utteranceLock = new ReentrantLock();
    private static final ArrayList<Long> breaks = new ArrayList<>();
    private static volatile String circuitReason = "";
    private static final Object armLock = new Object();

    static final boolean reportBroken$lambda$2$lambda$1(long j, long j2) {
        return j - j2 > 300000;
    }

    private EloquenceHub() {
    }

    public final ReentrantLock getUtteranceLock() {
        return utteranceLock;
    }

    public final boolean isAvailable() {
        long j = circuitOpenUntilMs;
        if (j == 0) {
            return true;
        }
        if (System.currentTimeMillis() < j) {
            return false;
        }
        circuitOpenUntilMs = 0L;
        log("Eloquence switched on again (was off: " + circuitReason + ")");
        return true;
    }

    private final void log(String msg) {
        Log.w(TAG, "EloquenceHub: " + msg);
        try {
            DiagnosticLog.INSTANCE.log("Eloquence", msg);
        } catch (Throwable unused) {
        }
        try {
            DetailedLog.INSTANCE.log("Eloquence", msg);
        } catch (Throwable unused2) {
        }
    }

    private final void openCircuit(long ms, String why) {
        circuitReason = why;
        circuitOpenUntilMs = System.currentTimeMillis() + ms;
        log("Eloquence switched OFF for " + (ms / 1000) + "s (" + why + "); English uses a Vocalizer voice meanwhile");
    }

    public final synchronized EloqiumEngine engine() {
        if (!isAvailable()) {
            return null;
        }
        EloqiumEngine eloqiumEngine = engine;
        if (eloqiumEngine != null) {
            return eloqiumEngine;
        }
        startWatchdog();
        EloqiumEngine eloqiumEngineOpen = EloqiumEngine.INSTANCE.open(65536, SAMPLE_RATE_HZ);
        if (eloqiumEngineOpen == null) {
            Log.e(TAG, "EloquenceHub: failed to open native openevv engine (eciId=0x" + Integer.toHexString(65536) + ")");
            openCircuit(ExternalEngines.FAILED_COOLDOWN_MS, "engine could not be opened");
            return null;
        }
        Log.d(TAG, "EloquenceHub: openevv engine ready, sampleRateHz=" + eloqiumEngineOpen.getSampleRateHz());
        try {
            EloquenceVoice.INSTANCE.noteBuiltIn(eloqiumEngineOpen);
        } catch (Throwable th) {
            log("could not read the voice presets: " + th);
        }
        engine = eloqiumEngineOpen;
        return eloqiumEngineOpen;
    }

    public final boolean fastStopAllowed() {
        return !fastStopOff && System.currentTimeMillis() >= Prefs.INSTANCE.eloqFastStopOffUntil();
    }

    public final void noteFastStop() {
        lastFastStopMs = System.currentTimeMillis();
    }

    public final void reportBroken(final EloqiumEngine e, String why) {
        Intrinsics.checkNotNullParameter(e, "e");
        Intrinsics.checkNotNullParameter(why, "why");
        if (System.currentTimeMillis() - lastFastStopMs < 3000 && !fastStopOff) {
            fastStopBreaks++;
            log("engine broke " + (System.currentTimeMillis() - lastFastStopMs) + "ms after a stop at once (" + fastStopBreaks + " so far)");
            if (fastStopBreaks >= 2) {
                fastStopOff = true;
                log("stop at once switched OFF for this run: a swipe now reads the rest of the piece and throws it away");
            }
        }
        synchronized (this) {
            if (engine != e) {
                return;
            }
            EloquenceHub eloquenceHub = INSTANCE;
            engine = null;
            final long jCurrentTimeMillis = System.currentTimeMillis();
            ArrayList<Long> arrayList = breaks;
            arrayList.add(Long.valueOf(jCurrentTimeMillis));
            CollectionsKt.removeAll((List) arrayList, new Function1() { // from class: aio.tts.EloquenceHub$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(EloquenceHub.reportBroken$lambda$2$lambda$1(jCurrentTimeMillis, ((Long) obj).longValue()));
                }
            });
            eloquenceHub.log("engine dropped: " + why + " (" + arrayList.size() + " in the last 5 min)");
            if (arrayList.size() >= 3) {
                eloquenceHub.openCircuit(300000L, "engine broke " + arrayList.size() + " times in 5 minutes");
            }
            Unit unit = Unit.INSTANCE;
            Thread thread = new Thread(new Runnable() { // from class: aio.tts.EloquenceHub$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    e.close();
                }
            }, "eloq-closer");
            thread.setDaemon(true);
            thread.start();
        }
    }

    public final void arm(EloqiumEngine e) {
        Intrinsics.checkNotNullParameter(e, "e");
        lastProgressMs = System.currentTimeMillis();
        armedEngine = e;
        Object obj = armLock;
        synchronized (obj) {
            obj.notifyAll();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void progress() {
        lastProgressMs = System.currentTimeMillis();
    }

    public final void disarm() {
        armedEngine = null;
    }

    private final synchronized void startWatchdog() {
        if (watchdogStarted) {
            return;
        }
        watchdogStarted = true;
        Thread thread = new Thread(new Runnable() { // from class: aio.tts.EloquenceHub$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                EloquenceHub.startWatchdog$lambda$7();
            }
        }, "eloq-watchdog");
        thread.setDaemon(true);
        thread.setPriority(1);
        thread.start();
    }

    static final void startWatchdog$lambda$7() {
        while (true) {
            try {
                synchronized (armLock) {
                    while (armedEngine == null) {
                        armLock.wait();
                    }
                    Unit unit = Unit.INSTANCE;
                }
                Thread.sleep(500L);
                EloqiumEngine eloqiumEngine = armedEngine;
                if (eloqiumEngine != null && System.currentTimeMillis() - lastProgressMs >= HANG_MS) {
                    EloquenceHub eloquenceHub = INSTANCE;
                    armedEngine = null;
                    eloquenceHub.log("native engine gave no audio for 5s, aborting it");
                    eloqiumEngine.emergencyStop();
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final void checkRecentCrashes() {
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        try {
            if (Prefs.INSTANCE.debugNoBreaker()) {
                return;
            }
            Application context = App.INSTANCE.getContext();
            ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityManager.class);
            if (activityManager == null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            List<ApplicationExitInfo> historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(context.getPackageName(), 0, 6);
            Intrinsics.checkNotNullExpressionValue(historicalProcessExitReasons, "getHistoricalProcessExitReasons(...)");
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss", Locale.US);
            for (ApplicationExitInfo applicationExitInfo : historicalProcessExitReasons) {
                if (applicationExitInfo.getReason() == 5 && jCurrentTimeMillis - applicationExitInfo.getTimestamp() < 1800000) {
                    long timestamp = applicationExitInfo.getTimestamp() + 86400000;
                    if (Prefs.INSTANCE.eloqFastStopOffUntil() < timestamp) {
                        Intrinsics.checkNotNull(applicationExitInfo);
                        byte[] tombstone = readTombstone(applicationExitInfo);
                        Boolean boolCrashedInEloquence = tombstone != null ? Tombstone.INSTANCE.crashedInEloquence(tombstone) : null;
                        if (Intrinsics.areEqual((Object) boolCrashedInEloquence, (Object) true)) {
                            Prefs.INSTANCE.setEloqFastStopOffUntil(timestamp);
                            log("Eloquence crashed at " + simpleDateFormat.format(Long.valueOf(applicationExitInfo.getTimestamp())) + ": stop at once switched off for 24 hours");
                        } else {
                            log("native crash at " + simpleDateFormat.format(Long.valueOf(applicationExitInfo.getTimestamp())) + " " + (Intrinsics.areEqual((Object) boolCrashedInEloquence, (Object) false) ? "was not in Eloquence" : "without a readable tombstone") + ": stop at once stays on");
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : historicalProcessExitReasons) {
                ApplicationExitInfo applicationExitInfo2 = (ApplicationExitInfo) obj;
                if (applicationExitInfo2.getReason() == 5 && jCurrentTimeMillis - applicationExitInfo2.getTimestamp() < 600000) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            if (arrayList2.size() >= 2) {
                Iterator it = arrayList2.iterator();
                if (!it.hasNext()) {
                    throw new NoSuchElementException();
                }
                long timestamp2 = ((ApplicationExitInfo) it.next()).getTimestamp();
                while (it.hasNext()) {
                    long timestamp3 = ((ApplicationExitInfo) it.next()).getTimestamp();
                    if (timestamp2 < timestamp3) {
                        timestamp2 = timestamp3;
                    }
                }
                long j = timestamp2 + 900000;
                if (j > jCurrentTimeMillis) {
                    openCircuit(j - jCurrentTimeMillis, arrayList2.size() + " native crashes in the last 10 minutes");
                }
            }
        } catch (Throwable th) {
            Log.w(TAG, "EloquenceHub.checkRecentCrashes failed", th);
        }
    }

    private final byte[] readTombstone(ApplicationExitInfo exit) {
        int i;
        try {
            InputStream traceInputStream = exit.getTraceInputStream();
            if (traceInputStream != null) {
                InputStream inputStream = traceInputStream;
                try {
                    InputStream inputStream2 = inputStream;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[65536];
                    while (byteArrayOutputStream.size() < 4194304 && (i = inputStream2.read(bArr)) >= 0) {
                        byteArrayOutputStream.write(bArr, 0, i);
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    CloseableKt.closeFinally(inputStream, null);
                    return byteArray;
                } finally {
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
