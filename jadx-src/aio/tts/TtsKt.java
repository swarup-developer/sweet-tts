package aio.tts;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.ranges.RangesKt;

/* compiled from: Tts.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002\"\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"resamplePcm16Mono", "", "buffer", "offset", "", "length", "fromRate", "toRate", "lastSuppressedNote", "", "lastForwardNote", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TtsKt {
    private static String lastForwardNote = "";
    private static String lastSuppressedNote = "";

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] resamplePcm16Mono(byte[] bArr, int i, int i2, int i3, int i4) {
        int i5 = i2 / 2;
        if (i5 <= 0) {
            return new byte[0];
        }
        short[] sArr = new short[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            sArr[i6] = (short) ((bArr[i] & UByte.MAX_VALUE) | (bArr[i + 1] << 8));
            i += 2;
        }
        double d = i4 / i3;
        int iCoerceAtLeast = RangesKt.coerceAtLeast((int) (i5 * d), 1);
        byte[] bArr2 = new byte[iCoerceAtLeast * 2];
        int i7 = 0;
        for (int i8 = 0; i8 < iCoerceAtLeast; i8++) {
            double d2 = i8 / d;
            int i9 = i5 - 1;
            int iCoerceIn = RangesKt.coerceIn((int) d2, 0, i9);
            int iCoerceAtMost = RangesKt.coerceAtMost(iCoerceIn + 1, i9);
            double d3 = d2 - iCoerceIn;
            int iCoerceIn2 = RangesKt.coerceIn((int) (sArr[iCoerceIn] + ((sArr[iCoerceAtMost] - r7) * d3)), -32768, 32767);
            bArr2[i7] = (byte) (iCoerceIn2 & 255);
            bArr2[i7 + 1] = (byte) ((iCoerceIn2 >> 8) & 255);
            i7 += 2;
        }
        return bArr2;
    }
}
