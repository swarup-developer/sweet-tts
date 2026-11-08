package aio.tts;

import kotlin.Metadata;

/* compiled from: Watchdog.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\b\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Laio/tts/StopClock;", "", "<init>", "()V", "lastFailMs", "", "noteFail", "", "sinceFailMs", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class StopClock {
    public static final StopClock INSTANCE = new StopClock();
    private static volatile long lastFailMs;

    private StopClock() {
    }

    public final void noteFail() {
        lastFailMs = System.currentTimeMillis();
    }

    public final long sinceFailMs() {
        if (lastFailMs == 0) {
            return -1L;
        }
        return System.currentTimeMillis() - lastFailMs;
    }
}
