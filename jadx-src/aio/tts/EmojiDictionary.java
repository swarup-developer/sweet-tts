package aio.tts;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: EmojiDictionary.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\u0006H\u0002J\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0002\b\rJ\"\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006R.\u0010\u0004\u001a\"\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005j\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0007`\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Laio/tts/EmojiDictionary;", "", "<init>", "()V", "cache", "Ljava/util/HashMap;", "", "Laio/tts/EmojiDictionary$Dict;", "Lkotlin/collections/HashMap;", "loadFor", "lang", "dictionaryLanguageFor", "resolvedVoice", "dictionaryLanguageFor$app", "rewrite", "text", "Dict", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EmojiDictionary {
    public static final EmojiDictionary INSTANCE = new EmojiDictionary();
    private static final HashMap<String, Dict> cache = new HashMap<>();

    private EmojiDictionary() {
    }

    /* compiled from: EmojiDictionary.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B)\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tR\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Laio/tts/EmojiDictionary$Dict;", "", "map", "", "", "lengths", "", "", "<init>", "(Ljava/util/Map;Ljava/util/List;)V", "getMap", "()Ljava/util/Map;", "getLengths", "()Ljava/util/List;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    private static final class Dict {
        private final List<Integer> lengths;
        private final Map<String, String> map;

        public Dict(Map<String, String> map, List<Integer> lengths) {
            Intrinsics.checkNotNullParameter(map, "map");
            Intrinsics.checkNotNullParameter(lengths, "lengths");
            this.map = map;
            this.lengths = lengths;
        }

        public final List<Integer> getLengths() {
            return this.lengths;
        }

        public final Map<String, String> getMap() {
            return this.map;
        }
    }

    private final Dict loadFor(String lang) throws JSONException, IOException {
        HashMap<String, Dict> map = cache;
        Dict dict = map.get(lang);
        if (dict == null) {
            dict = null;
            try {
                InputStream inputStreamOpen = App.INSTANCE.getContext().getAssets().open("emoji/" + lang + ".json");
                Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "open(...)");
                Reader inputStreamReader = new InputStreamReader(inputStreamOpen, Charsets.UTF_8);
                BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
                try {
                    String text = TextStreamsKt.readText(bufferedReader);
                    CloseableKt.closeFinally(bufferedReader, null);
                    JSONArray jSONArray = new JSONArray(text);
                    HashMap map2 = new HashMap(jSONArray.length());
                    Comparator comparatorReverseOrder = Comparator.reverseOrder();
                    Intrinsics.checkNotNullExpressionValue(comparatorReverseOrder, "reverseOrder(...)");
                    TreeSet treeSetSortedSetOf = SetsKt.sortedSetOf(comparatorReverseOrder, new Integer[0]);
                    int length = jSONArray.length();
                    for (int i = 0; i < length; i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        String strOptString = jSONObject.optString("cp", "");
                        String strOptString2 = jSONObject.optString("tts", "");
                        Intrinsics.checkNotNull(strOptString);
                        if (strOptString.length() != 0) {
                            Intrinsics.checkNotNull(strOptString2);
                            if (strOptString2.length() != 0) {
                                map2.put(strOptString, strOptString2);
                                treeSetSortedSetOf.add(Integer.valueOf(strOptString.length()));
                            }
                        }
                    }
                    dict = new Dict(map2, CollectionsKt.toList(treeSetSortedSetOf));
                } finally {
                }
            } catch (Exception unused) {
            }
            map.put(lang, dict);
        }
        return dict;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00db A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String dictionaryLanguageFor$app(java.lang.String r5, java.lang.String r6) {
        /*
            r4 = this;
            java.lang.String r0 = "lang"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "emoji"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r0)
            java.lang.String r1 = "en"
            if (r0 != 0) goto L17
            java.lang.String r0 = "number"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r0)
            if (r0 == 0) goto L7e
        L17:
            if (r6 == 0) goto L7e
            aio.tts.VoiceCatalog r5 = aio.tts.VoiceCatalog.INSTANCE
            java.util.List r5 = r5.getLANGUAGES()
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.util.Iterator r5 = r5.iterator()
        L25:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L6f
            java.lang.Object r0 = r5.next()
            r2 = r0
            kotlin.Pair r2 = (kotlin.Pair) r2
            java.lang.Object r2 = r2.component1()
            java.lang.String r2 = (java.lang.String) r2
            aio.tts.EmojiDictionary r3 = aio.tts.EmojiDictionary.INSTANCE
            aio.tts.EmojiDictionary$Dict r3 = r3.loadFor(r2)
            if (r3 == 0) goto L25
            aio.tts.VoiceCatalog r3 = aio.tts.VoiceCatalog.INSTANCE
            java.util.List r2 = r3.voicesFor(r2)
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            boolean r3 = r2 instanceof java.util.Collection
            if (r3 == 0) goto L56
            r3 = r2
            java.util.Collection r3 = (java.util.Collection) r3
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto L56
            goto L25
        L56:
            java.util.Iterator r2 = r2.iterator()
        L5a:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L25
            java.lang.Object r3 = r2.next()
            com.nuance.android.vocalizer.VocalizerVoice r3 = (com.nuance.android.vocalizer.VocalizerVoice) r3
            java.lang.String r3 = r3.mVoiceName
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r6)
            if (r3 == 0) goto L5a
            goto L70
        L6f:
            r0 = 0
        L70:
            kotlin.Pair r0 = (kotlin.Pair) r0
            if (r0 == 0) goto L7d
            java.lang.Object r5 = r0.getFirst()
            java.lang.String r5 = (java.lang.String) r5
            if (r5 == 0) goto L7d
            goto L7e
        L7d:
            r5 = r1
        L7e:
            aio.tts.EmojiDictionary$Dict r4 = r4.loadFor(r5)
            if (r4 == 0) goto L85
            return r5
        L85:
            int r4 = r5.hashCode()
            switch(r4) {
                case 3432: goto Lcf;
                case 3511: goto Lc6;
                case 3662: goto Lbd;
                case 97513: goto Lb4;
                case 97832: goto Lab;
                case 99646: goto La2;
                case 106375: goto L96;
                case 107861: goto L8d;
                default: goto L8c;
            }
        L8c:
            goto Ldb
        L8d:
            java.lang.String r4 = "mai"
            boolean r4 = r5.equals(r4)
            if (r4 != 0) goto Ld8
            goto Ldb
        L96:
            java.lang.String r4 = "kok"
            boolean r4 = r5.equals(r4)
            if (r4 != 0) goto L9f
            goto Ldb
        L9f:
            java.lang.String r4 = "mr"
            return r4
        La2:
            java.lang.String r4 = "doi"
            boolean r4 = r5.equals(r4)
            if (r4 != 0) goto Ld8
            goto Ldb
        Lab:
            java.lang.String r4 = "brx"
            boolean r4 = r5.equals(r4)
            if (r4 != 0) goto Ld8
            goto Ldb
        Lb4:
            java.lang.String r4 = "bho"
            boolean r4 = r5.equals(r4)
            if (r4 != 0) goto Ld8
            goto Ldb
        Lbd:
            java.lang.String r4 = "sa"
            boolean r4 = r5.equals(r4)
            if (r4 != 0) goto Ld8
            goto Ldb
        Lc6:
            java.lang.String r4 = "ne"
            boolean r4 = r5.equals(r4)
            if (r4 != 0) goto Ld8
            goto Ldb
        Lcf:
            java.lang.String r4 = "ks"
            boolean r4 = r5.equals(r4)
            if (r4 != 0) goto Ld8
            goto Ldb
        Ld8:
            java.lang.String r4 = "hi"
            return r4
        Ldb:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.EmojiDictionary.dictionaryLanguageFor$app(java.lang.String, java.lang.String):java.lang.String");
    }

    public static /* synthetic */ String rewrite$default(EmojiDictionary emojiDictionary, String str, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = null;
        }
        return emojiDictionary.rewrite(str, str2, str3);
    }

    public final String rewrite(String text, String lang, String resolvedVoice) throws JSONException, IOException {
        String str;
        int iIntValue;
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(lang, "lang");
        Dict dictLoadFor = loadFor(dictionaryLanguageFor$app(lang, resolvedVoice));
        if ((dictLoadFor == null && (dictLoadFor = loadFor("en")) == null) || dictLoadFor.getMap().isEmpty()) {
            return text;
        }
        StringBuilder sb = new StringBuilder(text.length());
        int i = 0;
        while (i < text.length()) {
            Iterator<Integer> it = dictLoadFor.getLengths().iterator();
            while (true) {
                if (!it.hasNext()) {
                    str = null;
                    iIntValue = 0;
                    break;
                }
                iIntValue = it.next().intValue();
                int i2 = i + iIntValue;
                if (i2 <= text.length()) {
                    String strSubstring = text.substring(i, i2);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    str = dictLoadFor.getMap().get(strSubstring);
                    if (str != null) {
                        break;
                    }
                }
            }
            if (str != null) {
                DetailedLog detailedLog = DetailedLog.INSTANCE;
                int i3 = iIntValue + i;
                String strSubstring2 = text.substring(i, i3);
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                detailedLog.log("Emoji", "matched \"" + strSubstring2 + "\" -> \"" + str + "\" (lang=" + lang + ", voice=" + resolvedVoice + ")");
                StringBuilder sb2 = sb;
                if (sb2.length() > 0 && !CharsKt.isWhitespace(StringsKt.last(sb2))) {
                    sb.append(' ');
                }
                sb.append(str);
                if (i3 < text.length()) {
                    sb.append(' ');
                }
                i = i3;
            } else {
                sb.append(text.charAt(i));
                i++;
            }
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
