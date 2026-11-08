package aio.tts;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: NgramModel.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0005\u0018\u0000 %2\u00020\u0001:\u0001%Ba\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\"\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\f0\u000ej\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\f`\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0003J\u001e\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u001f\u001a\u00020\u00032\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005J\u001e\u0010#\u001a\u0004\u0018\u00010!2\u0006\u0010$\u001a\u00020\u00032\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0016R*\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\f0\u000ej\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\f`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Laio/tts/NgramModel;", "", "group", "", "langs", "", "orders", "", "scale", "", "floor", "", "", "grams", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "<init>", "(Ljava/lang/String;Ljava/util/List;[II[[SLjava/util/HashMap;)V", "getGroup", "()Ljava/lang/String;", "getLangs", "()Ljava/util/List;", "[[S", "gramCount", "getGramCount", "()I", "index", "", "cleanRegex", "Lkotlin/text/Regex;", "normalize", "text", "scores", "", "candidates", "scoresNormalized", "norm", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NgramModel {
    private final Regex cleanRegex;
    private final short[][] floor;
    private final HashMap<String, short[]> grams;
    private final String group;
    private final Map<String, Integer> index;
    private final List<String> langs;
    private final int[] orders;
    private final int scale;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Map<String, String> SCRIPT_KEEP = MapsKt.mapOf(TuplesKt.to("dev", "\\u0900-\\u097F"), TuplesKt.to("perso", "\\u0600-\\u06FF\\u0750-\\u077F\\uFB50-\\uFDFF\\uFE70-\\uFEFF"), TuplesKt.to("beng", "\\u0980-\\u09FF"));
    private static final Regex MARKS = new Regex("[।॥۔]");
    private static final Regex WHITESPACE = new Regex("\\s+");

    public /* synthetic */ NgramModel(String str, List list, int[] iArr, int i, short[][] sArr, HashMap map, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, iArr, i, sArr, map);
    }

    private NgramModel(String str, List<String> list, int[] iArr, int i, short[][] sArr, HashMap<String, short[]> map) {
        this.group = str;
        this.langs = list;
        this.orders = iArr;
        this.scale = i;
        this.floor = sArr;
        this.grams = map;
        Iterable<IndexedValue> iterableWithIndex = CollectionsKt.withIndex(list);
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(iterableWithIndex, 10)), 16));
        for (IndexedValue indexedValue : iterableWithIndex) {
            Pair pair = TuplesKt.to(indexedValue.getValue(), Integer.valueOf(indexedValue.getIndex()));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        this.index = linkedHashMap;
        this.cleanRegex = new Regex("[^" + MapsKt.getValue(SCRIPT_KEEP, this.group) + "\\s]");
    }

    public final String getGroup() {
        return this.group;
    }

    public final List<String> getLangs() {
        return this.langs;
    }

    public final int getGramCount() {
        return this.grams.size();
    }

    public final String normalize(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        String strNormalize = Normalizer.normalize(text, Normalizer.Form.NFC);
        Intrinsics.checkNotNullExpressionValue(strNormalize, "normalize(...)");
        return StringsKt.trim((CharSequence) WHITESPACE.replace(MARKS.replace(this.cleanRegex.replace(StringsKt.replace$default(StringsKt.replace$default(strNormalize, "\u200c", "", false, 4, (Object) null), "\u200d", "", false, 4, (Object) null), " "), " "), " ")).toString();
    }

    public final float[] scores(String text, List<String> candidates) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(candidates, "candidates");
        String strNormalize = normalize(text);
        if (strNormalize.length() == 0) {
            return null;
        }
        return scoresNormalized(strNormalize, candidates);
    }

    public final float[] scoresNormalized(String norm, List<String> candidates) {
        int i;
        Intrinsics.checkNotNullParameter(norm, "norm");
        Intrinsics.checkNotNullParameter(candidates, "candidates");
        int size = candidates.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            Integer num = this.index.get(candidates.get(i2));
            if (num == null) {
                return null;
            }
            iArr[i2] = num.intValue();
        }
        if (size == 0) {
            return null;
        }
        String str = " " + norm + " ";
        long[] jArr = new long[size];
        int length = this.orders.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = this.orders[i4];
            short[] sArr = this.floor[i4];
            int i6 = 0;
            while (true) {
                int i7 = i6 + i5;
                if (i7 <= str.length()) {
                    HashMap<String, short[]> map = this.grams;
                    String strSubstring = str.substring(i6, i7);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    i3++;
                    if (map.get(strSubstring) == null) {
                        int i8 = 0;
                        while (i8 < size) {
                            jArr[i8] = jArr[i8] + sArr[iArr[i8]];
                            i8++;
                            length = length;
                        }
                        i = length;
                    } else {
                        i = length;
                        int i9 = 0;
                        while (i9 < size) {
                            long[] jArr2 = jArr;
                            jArr2[i9] = jArr[i9] + r12[iArr[i9]];
                            i9++;
                            str = str;
                            jArr = jArr2;
                        }
                    }
                    i6++;
                    length = i;
                    str = str;
                    jArr = jArr;
                }
            }
        }
        long[] jArr3 = jArr;
        float fMax = this.scale * Math.max(1, i3);
        float[] fArr = new float[size];
        for (int i10 = 0; i10 < size; i10++) {
            fArr[i10] = jArr3[i10] / fMax;
        }
        return fArr;
    }

    /* compiled from: NgramModel.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Laio/tts/NgramModel$Companion;", "", "<init>", "()V", "SCRIPT_KEEP", "", "", "MARKS", "Lkotlin/text/Regex;", "WHITESPACE", "load", "Laio/tts/NgramModel;", "stream", "Ljava/io/InputStream;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final NgramModel load(InputStream stream) throws IOException {
            Intrinsics.checkNotNullParameter(stream, "stream");
            DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(stream, 65536));
            try {
                DataInputStream dataInputStream2 = dataInputStream;
                byte[] bArr = new byte[4];
                dataInputStream2.readFully(bArr);
                if (!Intrinsics.areEqual(new String(bArr, Charsets.US_ASCII), "LID1")) {
                    throw new IllegalArgumentException("not a language model file".toString());
                }
                String utf = dataInputStream2.readUTF();
                int i = dataInputStream2.readInt();
                ArrayList arrayList = new ArrayList(i);
                for (int i2 = 0; i2 < i; i2++) {
                    arrayList.add(dataInputStream2.readUTF());
                }
                ArrayList arrayList2 = arrayList;
                int i3 = dataInputStream2.readInt();
                int[] iArr = new int[i3];
                for (int i4 = 0; i4 < i3; i4++) {
                    iArr[i4] = dataInputStream2.readInt();
                }
                int i5 = dataInputStream2.readInt();
                short[][] sArr = new short[i3][];
                for (int i6 = 0; i6 < i3; i6++) {
                    int size = arrayList2.size();
                    short[] sArr2 = new short[size];
                    for (int i7 = 0; i7 < size; i7++) {
                        sArr2[i7] = dataInputStream2.readShort();
                    }
                    sArr[i6] = sArr2;
                }
                int i8 = dataInputStream2.readInt();
                HashMap map = new HashMap(i8 * 2);
                for (int i9 = 0; i9 < i8; i9++) {
                    String utf2 = dataInputStream2.readUTF();
                    HashMap map2 = map;
                    int size2 = arrayList2.size();
                    short[] sArr3 = new short[size2];
                    for (int i10 = 0; i10 < size2; i10++) {
                        sArr3[i10] = dataInputStream2.readShort();
                    }
                    map2.put(utf2, sArr3);
                }
                Intrinsics.checkNotNull(utf);
                NgramModel ngramModel = new NgramModel(utf, arrayList2, iArr, i5, sArr, map, null);
                CloseableKt.closeFinally(dataInputStream, null);
                return ngramModel;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(dataInputStream, th);
                    throw th2;
                }
            }
        }
    }
}
