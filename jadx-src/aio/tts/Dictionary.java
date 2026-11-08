package aio.tts;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Dictionary.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001:\u000256B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bJ\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bJ\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u0010J\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u000b2\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00170\u000b2\u0006\u0010\u001a\u001a\u00020\u0010H\u0002J\u001c\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u00102\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00170\u000bJ(\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u00102\b\b\u0002\u0010!\u001a\u00020\"J0\u0010#\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010$\u001a\u00020%2\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u00102\b\b\u0002\u0010!\u001a\u00020\"J\u0016\u0010&\u001a\u00020\u001c2\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010$\u001a\u00020%J\u0010\u0010'\u001a\u00020\"2\u0006\u0010(\u001a\u00020%H\u0002J \u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020%2\u0006\u0010-\u001a\u00020%H\u0002J(\u0010.\u001a\u00020\"2\u0006\u0010*\u001a\u00020+2\u0006\u0010/\u001a\u00020%2\u0006\u0010\u001f\u001a\u00020+2\u0006\u0010!\u001a\u00020\"H\u0002J \u00100\u001a\u00020\u00102\u0006\u00101\u001a\u00020\u00102\u0006\u00102\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0002J\u0016\u00103\u001a\u00020\u00102\u0006\u00101\u001a\u00020\u00102\u0006\u00104\u001a\u00020\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R,\u0010\u0014\u001a \u0012\u0004\u0012\u00020\u0010\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u000b0\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00067"}, d2 = {"Laio/tts/Dictionary;", "", "<init>", "()V", "ENGLISH_ELOQUENCE", "Laio/tts/Dictionary$Target;", "getENGLISH_ELOQUENCE", "()Laio/tts/Dictionary$Target;", "ENGLISH_VOCALIZER", "getENGLISH_VOCALIZER", "languageTargets", "", "allTargets", "enabledTargets", "targetFor", "key", "", "targetKeyFor", "resolvedVoice", "lang", "parsed", "Ljava/util/concurrent/ConcurrentHashMap;", "Lkotlin/Pair;", "Laio/tts/Dictionary$Entry;", "entriesFor", "parseEntries", PunctuationReader.RAW, "setEntriesFor", "", "entries", "addEntry", "find", "replace", "caseSensitive", "", "updateEntry", "index", "", "removeEntry", "isWordChar", "cp", "isWholeMatch", "codepoints", "", "startCp", "findCpLen", "regionMatches", "start", "applyEntry", "text", "entry", "rewrite", "targetKey", "Target", "Entry", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Dictionary {
    public static final Dictionary INSTANCE = new Dictionary();
    private static final Target ENGLISH_ELOQUENCE = new Target("eti_eloquence", "English (ETI Eloquence)", true);
    private static final Target ENGLISH_VOCALIZER = new Target("vocalizer_english", "English (Vocalizer)", true);
    private static final ConcurrentHashMap<String, Pair<String, List<Entry>>> parsed = new ConcurrentHashMap<>();

    private Dictionary() {
    }

    /* compiled from: Dictionary.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Laio/tts/Dictionary$Target;", "", "key", "", "label", "allowsCaseSensitive", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Z)V", "getKey", "()Ljava/lang/String;", "getLabel", "getAllowsCaseSensitive", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Target {
        private final boolean allowsCaseSensitive;
        private final String key;
        private final String label;

        public static /* synthetic */ Target copy$default(Target target, String str, String str2, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = target.key;
            }
            if ((i & 2) != 0) {
                str2 = target.label;
            }
            if ((i & 4) != 0) {
                z = target.allowsCaseSensitive;
            }
            return target.copy(str, str2, z);
        }

        /* renamed from: component1, reason: from getter */
        public final String getKey() {
            return this.key;
        }

        /* renamed from: component2, reason: from getter */
        public final String getLabel() {
            return this.label;
        }

        /* renamed from: component3, reason: from getter */
        public final boolean getAllowsCaseSensitive() {
            return this.allowsCaseSensitive;
        }

        public final Target copy(String key, String label, boolean allowsCaseSensitive) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(label, "label");
            return new Target(key, label, allowsCaseSensitive);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Target)) {
                return false;
            }
            Target target = (Target) other;
            return Intrinsics.areEqual(this.key, target.key) && Intrinsics.areEqual(this.label, target.label) && this.allowsCaseSensitive == target.allowsCaseSensitive;
        }

        public int hashCode() {
            return (((this.key.hashCode() * 31) + this.label.hashCode()) * 31) + Boolean.hashCode(this.allowsCaseSensitive);
        }

        public String toString() {
            return "Target(key=" + this.key + ", label=" + this.label + ", allowsCaseSensitive=" + this.allowsCaseSensitive + ")";
        }

        public Target(String key, String label, boolean z) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(label, "label");
            this.key = key;
            this.label = label;
            this.allowsCaseSensitive = z;
        }

        public final boolean getAllowsCaseSensitive() {
            return this.allowsCaseSensitive;
        }

        public final String getKey() {
            return this.key;
        }

        public final String getLabel() {
            return this.label;
        }
    }

    public final Target getENGLISH_ELOQUENCE() {
        return ENGLISH_ELOQUENCE;
    }

    public final Target getENGLISH_VOCALIZER() {
        return ENGLISH_VOCALIZER;
    }

    public final List<Target> languageTargets() {
        List<Pair<String, String>> languages = VoiceCatalog.INSTANCE.getLANGUAGES();
        ArrayList arrayList = new ArrayList();
        for (Object obj : languages) {
            if (!Intrinsics.areEqual(((Pair) obj).getFirst(), "en")) {
                arrayList.add(obj);
            }
        }
        ArrayList<Pair> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        for (Pair pair : arrayList2) {
            arrayList3.add(new Target((String) pair.component1(), (String) pair.component2(), false));
        }
        return arrayList3;
    }

    public final List<Target> allTargets() {
        return CollectionsKt.plus((Collection) CollectionsKt.listOf((Object[]) new Target[]{ENGLISH_ELOQUENCE, ENGLISH_VOCALIZER}), (Iterable) languageTargets());
    }

    public final List<Target> enabledTargets() {
        List listListOf = CollectionsKt.listOf((Object[]) new Target[]{ENGLISH_ELOQUENCE, ENGLISH_VOCALIZER});
        List<Target> listLanguageTargets = languageTargets();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listLanguageTargets) {
            if (Prefs.INSTANCE.isLanguageEnabled(((Target) obj).getKey())) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt.plus((Collection) listListOf, (Iterable) arrayList);
    }

    public final Target targetFor(String key) {
        Object next;
        Intrinsics.checkNotNullParameter(key, "key");
        Iterator<T> it = allTargets().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((Target) next).getKey(), key)) {
                break;
            }
        }
        return (Target) next;
    }

    public final String targetKeyFor(String resolvedVoice, String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        return Intrinsics.areEqual(resolvedVoice, VoiceCatalog.ELOQUENCE_VOICE_NAME) ? ENGLISH_ELOQUENCE.getKey() : Intrinsics.areEqual(lang, "en") ? ENGLISH_VOCALIZER.getKey() : lang;
    }

    /* compiled from: Dictionary.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Laio/tts/Dictionary$Entry;", "", "find", "", "replace", "caseSensitive", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Z)V", "getFind", "()Ljava/lang/String;", "getReplace", "getCaseSensitive", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Entry {
        private final boolean caseSensitive;
        private final String find;
        private final String replace;

        public static /* synthetic */ Entry copy$default(Entry entry, String str, String str2, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = entry.find;
            }
            if ((i & 2) != 0) {
                str2 = entry.replace;
            }
            if ((i & 4) != 0) {
                z = entry.caseSensitive;
            }
            return entry.copy(str, str2, z);
        }

        /* renamed from: component1, reason: from getter */
        public final String getFind() {
            return this.find;
        }

        /* renamed from: component2, reason: from getter */
        public final String getReplace() {
            return this.replace;
        }

        /* renamed from: component3, reason: from getter */
        public final boolean getCaseSensitive() {
            return this.caseSensitive;
        }

        public final Entry copy(String find, String replace, boolean caseSensitive) {
            Intrinsics.checkNotNullParameter(find, "find");
            Intrinsics.checkNotNullParameter(replace, "replace");
            return new Entry(find, replace, caseSensitive);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) other;
            return Intrinsics.areEqual(this.find, entry.find) && Intrinsics.areEqual(this.replace, entry.replace) && this.caseSensitive == entry.caseSensitive;
        }

        public int hashCode() {
            return (((this.find.hashCode() * 31) + this.replace.hashCode()) * 31) + Boolean.hashCode(this.caseSensitive);
        }

        public String toString() {
            return "Entry(find=" + this.find + ", replace=" + this.replace + ", caseSensitive=" + this.caseSensitive + ")";
        }

        public Entry(String find, String replace, boolean z) {
            Intrinsics.checkNotNullParameter(find, "find");
            Intrinsics.checkNotNullParameter(replace, "replace");
            this.find = find;
            this.replace = replace;
            this.caseSensitive = z;
        }

        public /* synthetic */ Entry(String str, String str2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, (i & 4) != 0 ? false : z);
        }

        public final boolean getCaseSensitive() {
            return this.caseSensitive;
        }

        public final String getFind() {
            return this.find;
        }

        public final String getReplace() {
            return this.replace;
        }
    }

    public final List<Entry> entriesFor(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        String strDictionaryJsonFor = Prefs.INSTANCE.dictionaryJsonFor(key);
        if (strDictionaryJsonFor == null) {
            return CollectionsKt.emptyList();
        }
        ConcurrentHashMap<String, Pair<String, List<Entry>>> concurrentHashMap = parsed;
        Pair<String, List<Entry>> pair = concurrentHashMap.get(key);
        if (pair != null && Intrinsics.areEqual(pair.getFirst(), strDictionaryJsonFor)) {
            return pair.getSecond();
        }
        List<Entry> entries = parseEntries(strDictionaryJsonFor);
        concurrentHashMap.put(key, TuplesKt.to(strDictionaryJsonFor, entries));
        return entries;
    }

    private final List<Entry> parseEntries(String raw) throws JSONException {
        try {
            JSONArray jSONArray = new JSONArray(raw);
            IntRange intRangeUntil = RangesKt.until(0, jSONArray.length());
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRangeUntil, 10));
            Iterator<Integer> it = intRangeUntil.iterator();
            while (it.hasNext()) {
                JSONObject jSONObject = jSONArray.getJSONObject(((IntIterator) it).nextInt());
                String string = jSONObject.getString("find");
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                String string2 = jSONObject.getString("replace");
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                arrayList.add(new Entry(string, string2, jSONObject.optBoolean("caseSensitive", false)));
            }
            return arrayList;
        } catch (Exception unused) {
            return CollectionsKt.emptyList();
        }
    }

    public final void setEntriesFor(String key, List<Entry> entries) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(entries, "entries");
        JSONArray jSONArray = new JSONArray();
        for (Entry entry : entries) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("find", entry.getFind());
            jSONObject.put("replace", entry.getReplace());
            jSONObject.put("caseSensitive", entry.getCaseSensitive());
            jSONArray.put(jSONObject);
        }
        Prefs prefs = Prefs.INSTANCE;
        String string = jSONArray.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        prefs.setDictionaryJsonFor(key, string);
    }

    public static /* synthetic */ void addEntry$default(Dictionary dictionary, String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        dictionary.addEntry(str, str2, str3, z);
    }

    public final void addEntry(String key, String find, String replace, boolean caseSensitive) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(find, "find");
        Intrinsics.checkNotNullParameter(replace, "replace");
        setEntriesFor(key, CollectionsKt.plus((Collection<? extends Entry>) entriesFor(key), new Entry(find, replace, caseSensitive)));
    }

    public static /* synthetic */ void updateEntry$default(Dictionary dictionary, String str, int i, String str2, String str3, boolean z, int i2, Object obj) {
        if ((i2 & 16) != 0) {
            z = false;
        }
        dictionary.updateEntry(str, i, str2, str3, z);
    }

    public final void updateEntry(String key, int index, String find, String replace, boolean caseSensitive) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(find, "find");
        Intrinsics.checkNotNullParameter(replace, "replace");
        List<Entry> mutableList = CollectionsKt.toMutableList((Collection) entriesFor(key));
        if (index < 0 || index >= mutableList.size()) {
            return;
        }
        mutableList.set(index, new Entry(find, replace, caseSensitive));
        setEntriesFor(key, mutableList);
    }

    public final void removeEntry(String lang, int index) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        List<Entry> mutableList = CollectionsKt.toMutableList((Collection) entriesFor(lang));
        if (index < 0 || index >= mutableList.size()) {
            return;
        }
        mutableList.remove(index);
        setEntriesFor(lang, mutableList);
    }

    private final boolean isWordChar(int cp) {
        int type;
        return Character.isLetterOrDigit(cp) || cp == 8204 || cp == 8205 || (type = Character.getType(cp)) == 6 || type == 8 || type == 7;
    }

    private final boolean isWholeMatch(int[] codepoints, int startCp, int findCpLen) {
        int i = findCpLen + startCp;
        return (startCp == 0 || !isWordChar(codepoints[startCp + (-1)]) || !isWordChar(codepoints[startCp])) && (i >= codepoints.length || !isWordChar(codepoints[i + (-1)]) || !isWordChar(codepoints[i]));
    }

    private final boolean regionMatches(int[] codepoints, int start, int[] find, boolean caseSensitive) {
        int length = find.length;
        for (int i = 0; i < length; i++) {
            int i2 = codepoints[start + i];
            int i3 = find[i];
            if (caseSensitive) {
                if (i2 != i3) {
                    return false;
                }
            } else {
                if (Character.toLowerCase(i2) != Character.toLowerCase(i3)) {
                    return false;
                }
            }
        }
        return true;
    }

    private final String applyEntry(String text, Entry entry, boolean caseSensitive) {
        if (entry.getFind().length() <= 0 || StringsKt.contains(text, entry.getFind(), !caseSensitive)) {
            int[] array = text.codePoints().toArray();
            int[] array2 = entry.getFind().codePoints().toArray();
            int length = array2.length;
            if (length != 0 && length <= array.length) {
                StringBuilder sb = new StringBuilder(text.length());
                int i = 0;
                boolean z = false;
                while (i < array.length) {
                    int i2 = i + length;
                    if (i2 <= array.length) {
                        Intrinsics.checkNotNull(array);
                        Intrinsics.checkNotNull(array2);
                        if (regionMatches(array, i, array2, caseSensitive) && isWholeMatch(array, i, length)) {
                            sb.append(entry.getReplace());
                            z = true;
                            i = i2;
                        }
                    }
                    sb.appendCodePoint(array[i]);
                    i++;
                }
                if (z) {
                    String string = sb.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    return string;
                }
            }
        }
        return text;
    }

    public final String rewrite(String text, String targetKey) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(targetKey, "targetKey");
        List<Entry> listEntriesFor = entriesFor(targetKey);
        if (listEntriesFor.isEmpty()) {
            return text;
        }
        Target targetTargetFor = targetFor(targetKey);
        boolean z = targetTargetFor != null && targetTargetFor.getAllowsCaseSensitive();
        for (Entry entry : listEntriesFor) {
            if (entry.getFind().length() != 0) {
                String strApplyEntry = applyEntry(text, entry, z && entry.getCaseSensitive());
                if (!Intrinsics.areEqual(strApplyEntry, text)) {
                    DetailedLog.INSTANCE.log("Dictionary", "target=" + targetKey + " \"" + entry.getFind() + "\" -> \"" + entry.getReplace() + "\": " + LogText.INSTANCE.of(text) + " -> " + LogText.INSTANCE.of(strApplyEntry));
                }
                text = strApplyEntry;
            }
        }
        return text;
    }
}
