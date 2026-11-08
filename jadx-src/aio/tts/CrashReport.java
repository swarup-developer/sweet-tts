package aio.tts;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.sequences.SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: CrashReport.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bH\u0002JF\u0010\f\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2$\u0010\u0010\u001a \u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\r0\u0011H\u0002J \u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000bH\u0002J(\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000bH\u0002J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000bH\u0002J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0007J\u000e\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0007¨\u0006 "}, d2 = {"Laio/tts/CrashReport;", "", "<init>", "()V", "varint", "", "b", "", "pos", "", "limit", "", "walk", "", "from", "to", "f", "Lkotlin/Function4;", "str", "", "s", "e", "frame", "index", "thread", "Laio/tts/CrashReport$Thr;", "parse", "Laio/tts/CrashReport$Result;", PunctuationReader.RAW, "fallback", "Result", "Thr", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CrashReport {
    public static final CrashReport INSTANCE = new CrashReport();

    /* compiled from: CrashReport.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Laio/tts/CrashReport$Result;", "", "short", "", "full", "", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "getShort", "()Ljava/lang/String;", "getFull", "()Ljava/util/List;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Result {
        private final List<String> full;
        private final String short;

        public Result(String str, List<String> full) {
            Intrinsics.checkNotNullParameter(str, "short");
            Intrinsics.checkNotNullParameter(full, "full");
            this.short = str;
            this.full = full;
        }

        public final List<String> getFull() {
            return this.full;
        }

        public final String getShort() {
            return this.short;
        }
    }

    private CrashReport() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CrashReport.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b\u0002\u0018\u00002\u00020\u0001B5\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0018\b\u0002\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0007j\b\u0012\u0004\u0012\u00020\u0005`\b¢\u0006\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R!\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0007j\b\u0012\u0004\u0012\u00020\u0005`\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Laio/tts/CrashReport$Thr;", "", "id", "", "name", "", "frames", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "<init>", "(JLjava/lang/String;Ljava/util/ArrayList;)V", "getId", "()J", "setId", "(J)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getFrames", "()Ljava/util/ArrayList;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    static final class Thr {
        private final ArrayList<String> frames;
        private long id;
        private String name;

        public Thr() {
            this(0L, null, null, 7, null);
        }

        public Thr(long j, String name, ArrayList<String> frames) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(frames, "frames");
            this.id = j;
            this.name = name;
            this.frames = frames;
        }

        public /* synthetic */ Thr(long j, String str, ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? new ArrayList() : arrayList);
        }

        public final ArrayList<String> getFrames() {
            return this.frames;
        }

        public final long getId() {
            return this.id;
        }

        public final String getName() {
            return this.name;
        }

        public final void setId(long j) {
            this.id = j;
        }

        public final void setName(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.name = str;
        }
    }

    static /* synthetic */ long varint$default(CrashReport crashReport, byte[] bArr, int[] iArr, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = bArr.length;
        }
        return crashReport.varint(bArr, iArr, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
    
        throw new java.lang.IllegalStateException("bad varint");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long varint(byte[] r7, int[] r8, int r9) {
        /*
            r6 = this;
            r0 = 0
            r6 = 0
            r2 = r6
        L4:
            r3 = r8[r6]
            if (r3 >= r9) goto L1d
            r4 = 63
            if (r2 > r4) goto L1d
            int r4 = r3 + 1
            r8[r6] = r4
            r3 = r7[r3]
            r4 = r3 & 127(0x7f, float:1.78E-43)
            long r4 = (long) r4
            long r4 = r4 << r2
            long r0 = r0 | r4
            if (r3 < 0) goto L1a
            return r0
        L1a:
            int r2 = r2 + 7
            goto L4
        L1d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "bad varint"
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.CrashReport.varint(byte[], int[], int):long");
    }

    private final void walk(byte[] b, int from, int to, Function4<? super Integer, ? super Long, ? super Integer, ? super Integer, Unit> f) {
        int[] iArr = {from};
        while (iArr[0] < to) {
            long jVarint = varint(b, iArr, to);
            int i = (int) (jVarint >> 3);
            int i2 = (int) (jVarint & 7);
            if (i2 == 0) {
                f.invoke(Integer.valueOf(i), Long.valueOf(varint(b, iArr, to)), -1, -1);
            } else if (i2 == 1) {
                iArr[0] = iArr[0] + 8;
            } else if (i2 == 2) {
                long jVarint2 = varint(b, iArr, to);
                int i3 = iArr[0];
                if (jVarint2 < 0 || jVarint2 > to - i3) {
                    if (to != b.length) {
                        throw new IllegalStateException("bad length");
                    }
                    return;
                } else {
                    iArr[0] = ((int) jVarint2) + i3;
                    f.invoke(Integer.valueOf(i), 0L, Integer.valueOf(i3), Integer.valueOf(iArr[0]));
                }
            } else if (i2 == 5) {
                iArr[0] = iArr[0] + 4;
            } else {
                throw new IllegalStateException("bad wire type");
            }
        }
    }

    private final String str(byte[] b, int s, int e) {
        return new String(b, s, e - s, Charsets.UTF_8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final String frame(final byte[] b, int s, int e, int index) {
        StringBuilder sbAppend;
        final Ref.LongRef longRef = new Ref.LongRef();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = "";
        final Ref.LongRef longRef2 = new Ref.LongRef();
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = "";
        walk(b, s, e, new Function4() { // from class: aio.tts.CrashReport$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return CrashReport.frame$lambda$0(longRef, objectRef, b, longRef2, objectRef2, ((Integer) obj).intValue(), ((Long) obj2).longValue(), ((Integer) obj3).intValue(), ((Integer) obj4).intValue());
            }
        });
        String strSubstringAfterLast$default = StringsKt.substringAfterLast$default((String) objectRef2.element, '/', (String) null, 2, (Object) null);
        if (((CharSequence) objectRef.element).length() > 0) {
            sbAppend = new StringBuilder().append(objectRef.element).append("+").append(longRef2.element);
        } else {
            sbAppend = new StringBuilder("pc=0x").append(Long.toHexString(longRef.element));
        }
        return "#" + index + " " + strSubstringAfterLast$default + " " + sbAppend.toString();
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v8, types: [T, java.lang.String] */
    static final Unit frame$lambda$0(Ref.LongRef longRef, Ref.ObjectRef objectRef, byte[] bArr, Ref.LongRef longRef2, Ref.ObjectRef objectRef2, int i, long j, int i2, int i3) {
        if (i == 1) {
            longRef.element = j;
        } else if (i == 4) {
            objectRef.element = INSTANCE.str(bArr, i2, i3);
        } else if (i == 5) {
            longRef2.element = j;
        } else if (i == 6) {
            objectRef2.element = INSTANCE.str(bArr, i2, i3);
        }
        return Unit.INSTANCE;
    }

    private final Thr thread(final byte[] b, int s, int e) {
        final Thr thr = new Thr(0L, null, null, 7, null);
        walk(b, s, e, new Function4() { // from class: aio.tts.CrashReport$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return CrashReport.thread$lambda$1(thr, b, ((Integer) obj).intValue(), ((Long) obj2).longValue(), ((Integer) obj3).intValue(), ((Integer) obj4).intValue());
            }
        });
        return thr;
    }

    static final Unit thread$lambda$1(Thr thr, byte[] bArr, int i, long j, int i2, int i3) {
        if (i == 1) {
            thr.setId(j);
        } else if (i == 2) {
            thr.setName(INSTANCE.str(bArr, i2, i3));
        } else if (i == 4) {
            thr.getFrames().add(INSTANCE.frame(bArr, i2, i3, thr.getFrames().size()));
        }
        return Unit.INSTANCE;
    }

    public final Result parse(final byte[] raw) {
        Object next;
        Intrinsics.checkNotNullParameter(raw, "raw");
        final Ref.LongRef longRef = new Ref.LongRef();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = "";
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = "";
        final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        objectRef3.element = "";
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        walk(raw, 0, raw.length, new Function4() { // from class: aio.tts.CrashReport$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return CrashReport.parse$lambda$5(objectRef, raw, longRef, objectRef3, objectRef2, arrayList, arrayList2, ((Integer) obj).intValue(), ((Long) obj2).longValue(), ((Integer) obj3).intValue(), ((Integer) obj4).intValue());
            }
        });
        ArrayList arrayList3 = arrayList2;
        Iterator it = arrayList3.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((Thr) next).getId() == longRef.element) {
                break;
            }
        }
        Thr thr = (Thr) next;
        if (thr == null) {
            throw new IllegalStateException("crashing thread not found");
        }
        String str = objectRef3.element + " | thread " + thr.getName() + " (" + longRef.element + ")" + (((CharSequence) objectRef2.element).length() > 0 ? " | abort: " + objectRef2.element : "") + (arrayList.isEmpty() ? "" : " | cause: " + CollectionsKt.joinToString$default(arrayList, "; ", null, null, 0, null, null, 62, null));
        String str2 = str + " | top frames: " + CollectionsKt.joinToString$default(CollectionsKt.take(thr.getFrames(), 12), " <- ", null, null, 0, null, null, 62, null);
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(str);
        arrayList4.add("build: " + objectRef.element);
        arrayList4.add("CRASHING THREAD " + thr.getName() + " (" + longRef.element + "), " + thr.getFrames().size() + " frames:");
        Iterator it2 = CollectionsKt.take(thr.getFrames(), 80).iterator();
        while (it2.hasNext()) {
            arrayList4.add("    " + ((String) it2.next()));
        }
        ArrayList arrayList5 = new ArrayList();
        for (Object obj : arrayList3) {
            if (((Thr) obj) != thr) {
                arrayList5.add(obj);
            }
        }
        for (Thr thr2 : CollectionsKt.take(arrayList5, 60)) {
            arrayList4.add("thread " + thr2.getName() + " (" + thr2.getId() + "): " + CollectionsKt.joinToString$default(CollectionsKt.take(thr2.getFrames(), 8), " <- ", null, null, 0, null, null, 62, null));
        }
        return new Result(StringsKt.take(str2, 2500), arrayList4);
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v7, types: [T, java.lang.String] */
    static final Unit parse$lambda$5$lambda$2(Ref.LongRef longRef, Ref.ObjectRef objectRef, byte[] bArr, Ref.ObjectRef objectRef2, Ref.BooleanRef booleanRef, Ref.LongRef longRef2, int i, long j, int i2, int i3) {
        if (i == 1) {
            longRef.element = j;
        } else if (i == 2) {
            objectRef.element = INSTANCE.str(bArr, i2, i3);
        } else if (i == 4) {
            objectRef2.element = INSTANCE.str(bArr, i2, i3);
        } else if (i == 8) {
            booleanRef.element = j != 0;
        } else if (i == 9) {
            longRef2.element = j;
        }
        return Unit.INSTANCE;
    }

    static final Unit parse$lambda$5$lambda$3(ArrayList arrayList, byte[] bArr, int i, long j, int i2, int i3) {
        if (i == 1) {
            arrayList.add(INSTANCE.str(bArr, i2, i3));
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Type inference failed for: r12v13, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v8, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v1, types: [T, java.lang.String] */
    static final Unit parse$lambda$5(Ref.ObjectRef objectRef, final byte[] bArr, Ref.LongRef longRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3, final ArrayList arrayList, final ArrayList arrayList2, int i, long j, int i2, int i3) {
        if (i == 2) {
            objectRef.element = INSTANCE.str(bArr, i2, i3);
        } else if (i == 6) {
            longRef.element = j;
        } else if (i == 10) {
            final Ref.LongRef longRef2 = new Ref.LongRef();
            final Ref.ObjectRef objectRef4 = new Ref.ObjectRef();
            String str = "";
            objectRef4.element = "";
            final Ref.ObjectRef objectRef5 = new Ref.ObjectRef();
            objectRef5.element = "";
            final Ref.LongRef longRef3 = new Ref.LongRef();
            longRef3.element = -1L;
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            INSTANCE.walk(bArr, i2, i3, new Function4() { // from class: aio.tts.CrashReport$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    return CrashReport.parse$lambda$5$lambda$2(longRef2, objectRef4, bArr, objectRef5, booleanRef, longRef3, ((Integer) obj).intValue(), ((Long) obj2).longValue(), ((Integer) obj3).intValue(), ((Integer) obj4).intValue());
                }
            });
            long j2 = longRef2.element;
            Object obj = objectRef4.element;
            Object obj2 = objectRef5.element;
            if (booleanRef.element) {
                str = " fault address 0x" + Long.toHexString(longRef3.element);
            }
            objectRef2.element = "signal " + j2 + " " + obj + " " + obj2 + str;
        } else {
            switch (i) {
                case 14:
                    objectRef3.element = INSTANCE.str(bArr, i2, i3);
                    break;
                case 15:
                    INSTANCE.walk(bArr, i2, i3, new Function4() { // from class: aio.tts.CrashReport$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function4
                        public final Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
                            return CrashReport.parse$lambda$5$lambda$3(arrayList, bArr, ((Integer) obj3).intValue(), ((Long) obj4).longValue(), ((Integer) obj5).intValue(), ((Integer) obj6).intValue());
                        }
                    });
                    break;
                case 16:
                    INSTANCE.walk(bArr, i2, i3, new Function4() { // from class: aio.tts.CrashReport$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function4
                        public final Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
                            return CrashReport.parse$lambda$5$lambda$4(arrayList2, bArr, ((Integer) obj3).intValue(), ((Long) obj4).longValue(), ((Integer) obj5).intValue(), ((Integer) obj6).intValue());
                        }
                    });
                    break;
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit parse$lambda$5$lambda$4(ArrayList arrayList, byte[] bArr, int i, long j, int i2, int i3) {
        if (i == 2) {
            arrayList.add(INSTANCE.thread(bArr, i2, i3));
        }
        return Unit.INSTANCE;
    }

    public final Result fallback(byte[] raw) {
        Intrinsics.checkNotNullParameter(raw, "raw");
        String strJoinToString$default = SequencesKt.joinToString$default(SequencesKt.take(SequencesKt.map(Regex.findAll$default(new Regex("[\\x20-\\x7e]{6,}"), new String(raw, Charsets.ISO_8859_1), 0, 2, null), new Function1() { // from class: aio.tts.CrashReport$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CrashReport.fallback$lambda$10((MatchResult) obj);
            }
        }), 4000), " | ", null, null, 0, null, null, 62, null);
        return new Result(StringsKt.take(strJoinToString$default, 1500), CollectionsKt.listOf(StringsKt.take(strJoinToString$default, 30000)));
    }

    static final String fallback$lambda$10(MatchResult it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getValue();
    }
}
