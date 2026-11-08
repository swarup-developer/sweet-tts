package aio.tts;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* compiled from: Tombstone.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u000eB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\nH\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Laio/tts/Tombstone;", "", "<init>", "()V", "ELOQUENCE_MARKS", "", "", "crashedInEloquence", "", "tombstone", "", "([B)Ljava/lang/Boolean;", "crashingThread", "b", "Reader", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Tombstone {
    public static final Tombstone INSTANCE = new Tombstone();
    private static final List<String> ELOQUENCE_MARKS = CollectionsKt.listOf((Object[]) new String[]{"libeloqiumjni", "org.eloqium", "aio.tts.Eloquence"});

    private Tombstone() {
    }

    public final Boolean crashedInEloquence(byte[] tombstone) {
        Intrinsics.checkNotNullParameter(tombstone, "tombstone");
        byte[] bArrCrashingThread = crashingThread(tombstone);
        if (bArrCrashingThread == null) {
            return null;
        }
        String str = new String(bArrCrashingThread, Charsets.ISO_8859_1);
        List<String> list = ELOQUENCE_MARKS;
        boolean z = false;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (StringsKt.contains$default((CharSequence) str, (CharSequence) it.next(), false, 2, (Object) null)) {
                    z = true;
                    break;
                }
            }
        }
        return Boolean.valueOf(z);
    }

    private final byte[] crashingThread(byte[] b) {
        HashMap map = new HashMap();
        Reader reader = new Reader(b, 0, b.length);
        long jVarint = -1;
        while (reader.more()) {
            try {
                long jVarint2 = reader.varint();
                int i = (int) (jVarint2 >>> 3);
                int i2 = (int) (jVarint2 & 7);
                if (i == 6 && i2 == 0) {
                    jVarint = reader.varint();
                } else if (i == 16 && i2 == 2) {
                    int length = reader.length();
                    Reader reader2 = new Reader(b, reader.getPos(), reader.getPos() + length);
                    reader.setPos(reader.getPos() + length);
                    IntRange intRange = null;
                    long jVarint3 = -1;
                    while (reader2.more()) {
                        long jVarint4 = reader2.varint();
                        if (jVarint4 == 8) {
                            jVarint3 = reader2.varint();
                        } else if (jVarint4 == 18) {
                            int length2 = reader2.length();
                            IntRange intRangeUntil = RangesKt.until(reader2.getPos(), reader2.getPos() + length2);
                            reader2.setPos(reader2.getPos() + length2);
                            intRange = intRangeUntil;
                        } else {
                            reader2.skip((int) (jVarint4 & 7));
                        }
                    }
                    if (jVarint3 >= 0 && intRange != null) {
                        map.put(Long.valueOf(jVarint3), intRange);
                    }
                } else {
                    reader.skip(i2);
                }
            } catch (RuntimeException unused) {
            }
        }
        IntRange intRange2 = (IntRange) map.get(Long.valueOf(jVarint));
        if (intRange2 == null) {
            return null;
        }
        return ArraysKt.copyOfRange(b, intRange2.getFirst(), intRange2.getLast() + 1);
    }

    /* compiled from: Tombstone.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0005J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\f¨\u0006\u0018"}, d2 = {"Laio/tts/Tombstone$Reader;", "", "b", "", "pos", "", "end", "<init>", "([BII)V", "getB", "()[B", "getPos", "()I", "setPos", "(I)V", "getEnd", "more", "", "varint", "", "length", "skip", "", "type", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    private static final class Reader {
        private final byte[] b;
        private final int end;
        private int pos;

        public Reader(byte[] b, int i, int i2) {
            Intrinsics.checkNotNullParameter(b, "b");
            this.b = b;
            this.pos = i;
            this.end = i2;
        }

        public final byte[] getB() {
            return this.b;
        }

        public final int getEnd() {
            return this.end;
        }

        public final int getPos() {
            return this.pos;
        }

        public final void setPos(int i) {
            this.pos = i;
        }

        public final boolean more() {
            return this.pos < this.end;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
        
            throw new java.lang.IllegalStateException("bad varint");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long varint() {
            /*
                r6 = this;
                r0 = 0
                r2 = 0
            L3:
                int r3 = r6.pos
                int r4 = r6.end
                if (r3 >= r4) goto L22
                r4 = 63
                if (r2 > r4) goto L22
                byte[] r4 = r6.b
                int r5 = r3 + 1
                r6.pos = r5
                r3 = r4[r3]
                r4 = r3 & 127(0x7f, float:1.78E-43)
                long r4 = (long) r4
                long r4 = r4 << r2
                long r0 = r0 | r4
                r3 = r3 & 128(0x80, float:1.794E-43)
                if (r3 != 0) goto L1f
                return r0
            L1f:
                int r2 = r2 + 7
                goto L3
            L22:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "bad varint"
                r6.<init>(r0)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: aio.tts.Tombstone.Reader.varint():long");
        }

        public final int length() {
            long jVarint = varint();
            if (jVarint < 0 || jVarint > this.end - this.pos) {
                throw new IllegalStateException("bad length");
            }
            return (int) jVarint;
        }

        public final void skip(int type) {
            if (type == 0) {
                varint();
            } else if (type == 1) {
                this.pos += 8;
            } else if (type == 2) {
                this.pos += length();
            } else if (type == 5) {
                this.pos += 4;
            } else {
                throw new IllegalStateException("wire type " + type);
            }
            if (this.pos > this.end) {
                throw new IllegalStateException("past the end");
            }
        }
    }
}
