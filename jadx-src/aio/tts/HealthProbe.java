package aio.tts;

import kotlin.Metadata;

/* compiled from: HealthProbe.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Laio/tts/HealthProbe;", "", "<init>", "()V", "lastCpuMs", "", "lastWallMs", "lastChargeUah", "line", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HealthProbe {
    private static long lastWallMs;
    public static final HealthProbe INSTANCE = new HealthProbe();
    private static long lastCpuMs = -1;
    private static long lastChargeUah = Long.MIN_VALUE;

    private HealthProbe() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:77:0x016e A[Catch: all -> 0x0302, TryCatch #1 {all -> 0x0302, blocks: (B:76:0x0119, B:78:0x0193, B:80:0x019b, B:82:0x01a1, B:85:0x01e1, B:87:0x01e5, B:94:0x0206, B:97:0x0222, B:103:0x0244, B:106:0x0260, B:111:0x026e, B:116:0x027c, B:120:0x0288, B:77:0x016e), top: B:134:0x0103 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01dd  */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2, types: [long] */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Type inference failed for: r25v4 */
    /* JADX WARN: Type inference failed for: r25v5 */
    /* JADX WARN: Type inference failed for: r25v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.lang.String line() {
        /*
            Method dump skipped, instructions count: 795
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.HealthProbe.line():java.lang.String");
    }
}
