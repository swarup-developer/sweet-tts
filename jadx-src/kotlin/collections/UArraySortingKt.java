package kotlin.collections;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UArraySorting.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\n\u0010\u000b\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\r\u0010\u000e\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u000f\u0010\u0010\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0012\u0010\u0013\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0014\u0010\u0015\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0017\u0010\u0018\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0019\u0010\u001a\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001e\u0010\u000b\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001f\u0010\u0010\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b \u0010\u0015\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b!\u0010\u001a¨\u0006\""}, d2 = {"partition", "", "array", "Lkotlin/UByteArray;", "left", "right", "partition-4UcCI2c", "([BII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort-Aa5vz7o", "([SII)V", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "quickSort-oBK06Vg", "([III)V", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "quickSort--nroSd4", "([JII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-Aa5vz7o", "sortArray-oBK06Vg", "sortArray--nroSd4", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class UArraySortingKt {
    /* renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m559partition4UcCI2c(byte[] bArr, int i, int i2) {
        int i3;
        byte bM176getw2LRezQ = UByteArray.m176getw2LRezQ(bArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int iM176getw2LRezQ = UByteArray.m176getw2LRezQ(bArr, i) & UByte.MAX_VALUE;
                i3 = bM176getw2LRezQ & UByte.MAX_VALUE;
                if (Intrinsics.compare(iM176getw2LRezQ, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UByteArray.m176getw2LRezQ(bArr, i2) & UByte.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                byte bM176getw2LRezQ2 = UByteArray.m176getw2LRezQ(bArr, i);
                UByteArray.m181setVurrAj0(bArr, i, UByteArray.m176getw2LRezQ(bArr, i2));
                UByteArray.m181setVurrAj0(bArr, i2, bM176getw2LRezQ2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m563quickSort4UcCI2c(byte[] bArr, int i, int i2) {
        int iM559partition4UcCI2c = m559partition4UcCI2c(bArr, i, i2);
        int i3 = iM559partition4UcCI2c - 1;
        if (i < i3) {
            m563quickSort4UcCI2c(bArr, i, i3);
        }
        if (iM559partition4UcCI2c < i2) {
            m563quickSort4UcCI2c(bArr, iM559partition4UcCI2c, i2);
        }
    }

    /* renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m560partitionAa5vz7o(short[] sArr, int i, int i2) {
        int i3;
        short sM439getMh2AYeg = UShortArray.m439getMh2AYeg(sArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int iM439getMh2AYeg = UShortArray.m439getMh2AYeg(sArr, i) & UShort.MAX_VALUE;
                i3 = sM439getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(iM439getMh2AYeg, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UShortArray.m439getMh2AYeg(sArr, i2) & UShort.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                short sM439getMh2AYeg2 = UShortArray.m439getMh2AYeg(sArr, i);
                UShortArray.m444set01HTLdE(sArr, i, UShortArray.m439getMh2AYeg(sArr, i2));
                UShortArray.m444set01HTLdE(sArr, i2, sM439getMh2AYeg2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m564quickSortAa5vz7o(short[] sArr, int i, int i2) {
        int iM560partitionAa5vz7o = m560partitionAa5vz7o(sArr, i, i2);
        int i3 = iM560partitionAa5vz7o - 1;
        if (i < i3) {
            m564quickSortAa5vz7o(sArr, i, i3);
        }
        if (iM560partitionAa5vz7o < i2) {
            m564quickSortAa5vz7o(sArr, iM560partitionAa5vz7o, i2);
        }
    }

    /* renamed from: partition-oBK06Vg, reason: not valid java name */
    private static final int m561partitionoBK06Vg(int[] iArr, int i, int i2) {
        int iM255getpVg5ArA = UIntArray.m255getpVg5ArA(iArr, (i + i2) / 2);
        while (i <= i2) {
            while (Integer.compareUnsigned(UIntArray.m255getpVg5ArA(iArr, i), iM255getpVg5ArA) < 0) {
                i++;
            }
            while (Integer.compareUnsigned(UIntArray.m255getpVg5ArA(iArr, i2), iM255getpVg5ArA) > 0) {
                i2--;
            }
            if (i <= i2) {
                int iM255getpVg5ArA2 = UIntArray.m255getpVg5ArA(iArr, i);
                UIntArray.m260setVXSXFK8(iArr, i, UIntArray.m255getpVg5ArA(iArr, i2));
                UIntArray.m260setVXSXFK8(iArr, i2, iM255getpVg5ArA2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m565quickSortoBK06Vg(int[] iArr, int i, int i2) {
        int iM561partitionoBK06Vg = m561partitionoBK06Vg(iArr, i, i2);
        int i3 = iM561partitionoBK06Vg - 1;
        if (i < i3) {
            m565quickSortoBK06Vg(iArr, i, i3);
        }
        if (iM561partitionoBK06Vg < i2) {
            m565quickSortoBK06Vg(iArr, iM561partitionoBK06Vg, i2);
        }
    }

    /* renamed from: partition--nroSd4, reason: not valid java name */
    private static final int m558partitionnroSd4(long[] jArr, int i, int i2) {
        long jM334getsVKNKU = ULongArray.m334getsVKNKU(jArr, (i + i2) / 2);
        while (i <= i2) {
            while (Long.compareUnsigned(ULongArray.m334getsVKNKU(jArr, i), jM334getsVKNKU) < 0) {
                i++;
            }
            while (Long.compareUnsigned(ULongArray.m334getsVKNKU(jArr, i2), jM334getsVKNKU) > 0) {
                i2--;
            }
            if (i <= i2) {
                long jM334getsVKNKU2 = ULongArray.m334getsVKNKU(jArr, i);
                ULongArray.m339setk8EXiF4(jArr, i, ULongArray.m334getsVKNKU(jArr, i2));
                ULongArray.m339setk8EXiF4(jArr, i2, jM334getsVKNKU2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m562quickSortnroSd4(long[] jArr, int i, int i2) {
        int iM558partitionnroSd4 = m558partitionnroSd4(jArr, i, i2);
        int i3 = iM558partitionnroSd4 - 1;
        if (i < i3) {
            m562quickSortnroSd4(jArr, i, i3);
        }
        if (iM558partitionnroSd4 < i2) {
            m562quickSortnroSd4(jArr, iM558partitionnroSd4, i2);
        }
    }

    /* renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m567sortArray4UcCI2c(byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m563quickSort4UcCI2c(array, i, i2 - 1);
    }

    /* renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m568sortArrayAa5vz7o(short[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m564quickSortAa5vz7o(array, i, i2 - 1);
    }

    /* renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m569sortArrayoBK06Vg(int[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m565quickSortoBK06Vg(array, i, i2 - 1);
    }

    /* renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m566sortArraynroSd4(long[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m562quickSortnroSd4(array, i, i2 - 1);
    }
}
