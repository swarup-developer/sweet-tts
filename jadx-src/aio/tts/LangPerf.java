package aio.tts;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: Lang.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0017R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0007R\u0011\u0010\u000e\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\u0010\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000bR\u0011\u0010\u0012\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000b¨\u0006\u0018"}, d2 = {"Laio/tts/LangPerf;", "", "<init>", "()V", "mlCalls", "Ljava/util/concurrent/atomic/AtomicInteger;", "getMlCalls", "()Ljava/util/concurrent/atomic/AtomicInteger;", "mlNs", "Ljava/util/concurrent/atomic/AtomicLong;", "getMlNs", "()Ljava/util/concurrent/atomic/AtomicLong;", "lidCalls", "getLidCalls", "lidNs", "getLidNs", "dictNs", "getDictNs", "fixNs", "getFixNs", "reset", "", "summary", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LangPerf {
    public static final LangPerf INSTANCE = new LangPerf();
    private static final AtomicInteger mlCalls = new AtomicInteger();
    private static final AtomicLong mlNs = new AtomicLong();
    private static final AtomicInteger lidCalls = new AtomicInteger();
    private static final AtomicLong lidNs = new AtomicLong();
    private static final AtomicLong dictNs = new AtomicLong();
    private static final AtomicLong fixNs = new AtomicLong();

    private LangPerf() {
    }

    public final AtomicInteger getMlCalls() {
        return mlCalls;
    }

    public final AtomicLong getMlNs() {
        return mlNs;
    }

    public final AtomicInteger getLidCalls() {
        return lidCalls;
    }

    public final AtomicLong getLidNs() {
        return lidNs;
    }

    public final AtomicLong getDictNs() {
        return dictNs;
    }

    public final AtomicLong getFixNs() {
        return fixNs;
    }

    public final void reset() {
        dictNs.set(0L);
        fixNs.set(0L);
        mlCalls.set(0);
        mlNs.set(0L);
        lidCalls.set(0);
        lidNs.set(0L);
    }

    public final String summary() {
        StringBuilder sb = new StringBuilder();
        AtomicInteger atomicInteger = lidCalls;
        if (atomicInteger.get() > 0) {
            sb.append("ngramLid=" + atomicInteger.get() + "x/" + (lidNs.get() / 1000) + "us ");
        }
        AtomicLong atomicLong = dictNs;
        if (atomicLong.get() >= 1000000) {
            sb.append("dictionary=" + (atomicLong.get() / 1000) + "us ");
        }
        AtomicLong atomicLong2 = fixNs;
        if (atomicLong2.get() >= 1000000) {
            sb.append("textFixes=" + (atomicLong2.get() / 1000) + "us ");
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return StringsKt.trim((CharSequence) string).toString();
    }
}
