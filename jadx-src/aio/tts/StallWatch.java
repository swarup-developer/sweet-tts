package aio.tts;

import androidx.core.app.NotificationCompat;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: Watchdog.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u0010J\b\u0010\u0013\u001a\u00020\u0010H\u0002J\b\u0010\u0014\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0018\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Laio/tts/StallWatch;", "", "<init>", "()V", "LIMIT_MS", "", "thread", "Ljava/lang/Thread;", "lastProgressMs", "startedMs", "reported", "", "running", "idleLock", "Ljava/lang/Object;", "begin", "", NotificationCompat.CATEGORY_PROGRESS, "end", "ensureThread", "loop", "frameText", "", "f", "Ljava/lang/StackTraceElement;", "report", "t", "now", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class StallWatch {
    private static final long LIMIT_MS = 20000;
    private static volatile long lastProgressMs;
    private static volatile boolean reported;
    private static boolean running;
    private static volatile long startedMs;
    private static volatile Thread thread;
    public static final StallWatch INSTANCE = new StallWatch();
    private static final Object idleLock = new Object();

    private StallWatch() {
    }

    public final void begin() {
        thread = Thread.currentThread();
        startedMs = System.currentTimeMillis();
        lastProgressMs = startedMs;
        reported = false;
        ensureThread();
        Object obj = idleLock;
        synchronized (obj) {
            obj.notifyAll();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void progress() {
        lastProgressMs = System.currentTimeMillis();
    }

    public final void end() {
        thread = null;
    }

    private final synchronized void ensureThread() {
        if (running) {
            return;
        }
        running = true;
        Thread thread2 = new Thread(new Runnable() { // from class: aio.tts.StallWatch$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                StallWatch.INSTANCE.loop();
            }
        }, "aiotts-stallwatch");
        thread2.setDaemon(true);
        thread2.setPriority(1);
        thread2.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loop() {
        while (true) {
            try {
                synchronized (idleLock) {
                    while (thread == null) {
                        idleLock.wait();
                    }
                    Unit unit = Unit.INSTANCE;
                }
                Thread.sleep(5000L);
                Thread thread2 = thread;
                if (thread2 != null) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (!reported && jCurrentTimeMillis - lastProgressMs >= LIMIT_MS) {
                        reported = true;
                        report(thread2, jCurrentTimeMillis);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private final String frameText(StackTraceElement f) {
        String className = f.getClassName();
        Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
        return StringsKt.substringAfterLast$default(className, '.', (String) null, 2, (Object) null) + "." + f.getMethodName() + ":" + f.getLineNumber();
    }

    private final void report(Thread t, long now) {
        Iterator it;
        StackTraceElement[] stackTrace = t.getStackTrace();
        DiagnosticLog diagnosticLog = DiagnosticLog.INSTANCE;
        long j = (now - lastProgressMs) / 1000;
        long j2 = (now - startedMs) / 1000;
        String name = t.getName();
        Thread.State state = t.getState();
        Intrinsics.checkNotNull(stackTrace);
        diagnosticLog.log("Hang", "no audio progress for " + j + "s (call running " + j2 + "s) thread=" + name + " state=" + state + " top: " + CollectionsKt.joinToString$default(ArraysKt.take(stackTrace, 12), " <- ", null, null, 0, null, new Function1() { // from class: aio.tts.StallWatch$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StallWatch.report$lambda$4((StackTraceElement) obj);
            }
        }, 30, null));
        DetailedLog.INSTANCE.log("Hang", "synth thread " + t.getName() + " state=" + t.getState() + ", " + stackTrace.length + " frames:");
        Iterator it2 = ArraysKt.take(stackTrace, 60).iterator();
        while (it2.hasNext()) {
            DetailedLog.INSTANCE.log("Hang", "    " + ((StackTraceElement) it2.next()));
        }
        Set<Map.Entry<Thread, StackTraceElement[]>> setEntrySet = Thread.getAllStackTraces().entrySet();
        ArrayList arrayList = new ArrayList();
        Iterator it3 = setEntrySet.iterator();
        while (it3.hasNext()) {
            Object next = it3.next();
            Map.Entry entry = (Map.Entry) next;
            if (entry.getKey() != t) {
                Object value = entry.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                Object[] objArr = (Object[]) value;
                int length = objArr.length;
                int i = 0;
                while (i < length) {
                    StackTraceElement stackTraceElement = (StackTraceElement) objArr[i];
                    String className = stackTraceElement.getClassName();
                    Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
                    it = it3;
                    if (!StringsKt.startsWith$default(className, BuildConfig.APPLICATION_ID, false, 2, (Object) null)) {
                        String className2 = stackTraceElement.getClassName();
                        Intrinsics.checkNotNullExpressionValue(className2, "getClassName(...)");
                        if (!StringsKt.startsWith$default(className2, "org.eloqium", false, 2, (Object) null)) {
                            String className3 = stackTraceElement.getClassName();
                            Intrinsics.checkNotNullExpressionValue(className3, "getClassName(...)");
                            if (!StringsKt.startsWith$default(className3, "com.nuance", false, 2, (Object) null)) {
                                i++;
                                it3 = it;
                            }
                        }
                    }
                    arrayList.add(next);
                    break;
                }
                it = it3;
            } else {
                it = it3;
            }
            it3 = it;
        }
        for (Map.Entry entry2 : CollectionsKt.take(arrayList, 15)) {
            Thread thread2 = (Thread) entry2.getKey();
            StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) entry2.getValue();
            DetailedLog detailedLog = DetailedLog.INSTANCE;
            String name2 = thread2.getName();
            Thread.State state2 = thread2.getState();
            Intrinsics.checkNotNull(stackTraceElementArr);
            detailedLog.log("Hang", "thread " + name2 + " state=" + state2 + ": " + CollectionsKt.joinToString$default(ArraysKt.take(stackTraceElementArr, 10), " <- ", null, null, 0, null, new Function1() { // from class: aio.tts.StallWatch$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return StallWatch.report$lambda$8((StackTraceElement) obj);
                }
            }, 30, null));
        }
    }

    static final CharSequence report$lambda$4(StackTraceElement stackTraceElement) {
        StallWatch stallWatch = INSTANCE;
        Intrinsics.checkNotNull(stackTraceElement);
        return stallWatch.frameText(stackTraceElement);
    }

    static final CharSequence report$lambda$8(StackTraceElement stackTraceElement) {
        StallWatch stallWatch = INSTANCE;
        Intrinsics.checkNotNull(stackTraceElement);
        return stallWatch.frameText(stackTraceElement);
    }
}
