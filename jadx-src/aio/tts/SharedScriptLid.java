package aio.tts;

import aio.tts.NgramModel;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: SharedScriptLid.kt */
@Metadata(d1 = {"\u0000\u008f\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0003*\u0001-\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002;<B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0011\u001a\u00020\u00072\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00140\u0013J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0007H\u0002J\u001c\u0010$\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u0019\u001a\u00020\u00052\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&J\u0015\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u001fH\u0000¢\u0006\u0002\b*J\u000e\u0010+\u001a\u00020(2\u0006\u0010%\u001a\u00020&J8\u0010/\u001a\u0002002\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u001f2\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00050\u000e2\u0006\u00102\u001a\u00020\u00052\b\u00103\u001a\u0004\u0018\u00010\u0005H\u0002J\"\u00104\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0014050\u000e2\u0006\u00102\u001a\u00020\u0005H\u0002JB\u00106\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002070\u000e0\f2\f\u00108\u001a\b\u0012\u0004\u0012\u00020\u00050\u000e2\u0006\u00109\u001a\u00020:2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00140\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\fX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u000e0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001f0\u001ej\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001f` X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010!\u001a\u0012\u0012\u0004\u0012\u00020\u00050\"j\b\u0012\u0004\u0012\u00020\u0005`#X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u00020-X\u0082\u0004¢\u0006\u0004\n\u0002\u0010.¨\u0006="}, d2 = {"Laio/tts/SharedScriptLid;", "", "<init>", "()V", "TAG", "", "KIND_OTHER", "", "KIND_DEVANAGARI", "KIND_ARABIC", "KIND_BENGALI", "GROUP_OF_KIND", "", "GROUP_ORDER", "", "MIN_WORDS", "groupDefault", "kind", "isEnabled", "Lkotlin/Function1;", "", "fmt", "v", "", "tau", "group", "words", "END", "Lkotlin/text/Regex;", "models", "Ljava/util/HashMap;", "Laio/tts/NgramModel;", "Lkotlin/collections/HashMap;", "failed", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "modelFor", "context", "Landroid/content/Context;", "putModelForTesting", "", "model", "putModelForTesting$app", "preload", "cache", "aio/tts/SharedScriptLid$cache$1", "Laio/tts/SharedScriptLid$cache$1;", "decide", "Laio/tts/SharedScriptLid$Decision;", "cands", "text", "previous", "chunks", "Lkotlin/Pair;", "resolve", "Laio/tts/SharedScriptLid$Piece;", "texts", "kinds", "", "Piece", "Decision", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SharedScriptLid {
    public static final int KIND_ARABIC = 2;
    public static final int KIND_BENGALI = 3;
    public static final int KIND_DEVANAGARI = 1;
    public static final int KIND_OTHER = 0;
    private static final String TAG = "AllInOneTTS";
    public static final SharedScriptLid INSTANCE = new SharedScriptLid();
    private static final Map<Integer, String> GROUP_OF_KIND = MapsKt.mapOf(TuplesKt.to(1, "dev"), TuplesKt.to(2, "perso"), TuplesKt.to(3, "beng"));
    private static final Map<String, List<String>> GROUP_ORDER = MapsKt.mapOf(TuplesKt.to("dev", CollectionsKt.listOf((Object[]) new String[]{"hi", "mr", "ne", "bho", "mai", "kok", "sa"})), TuplesKt.to("perso", CollectionsKt.listOf((Object[]) new String[]{"ur", "ar", "sd"})), TuplesKt.to("beng", CollectionsKt.listOf((Object[]) new String[]{"bn", "as"})));
    private static final Map<String, Integer> MIN_WORDS = MapsKt.mapOf(TuplesKt.to("dev", 6), TuplesKt.to("perso", 2), TuplesKt.to("beng", 2));
    private static final Regex END = new Regex("[।॥?!؟۔\n]|(?<!\\d)\\.(?=\\s|$)");
    private static final HashMap<String, NgramModel> models = new HashMap<>();
    private static final HashSet<String> failed = new HashSet<>();
    private static final SharedScriptLid$cache$1 cache = new SharedScriptLid$cache$1();

    private SharedScriptLid() {
    }

    /* compiled from: SharedScriptLid.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\f"}, d2 = {"Laio/tts/SharedScriptLid$Piece;", "", "text", "", "lang", "note", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getText", "()Ljava/lang/String;", "getLang", "getNote", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Piece {
        private final String lang;
        private final String note;
        private final String text;

        public Piece(String text, String lang, String note) {
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(lang, "lang");
            Intrinsics.checkNotNullParameter(note, "note");
            this.text = text;
            this.lang = lang;
            this.note = note;
        }

        public final String getLang() {
            return this.lang;
        }

        public final String getNote() {
            return this.note;
        }

        public final String getText() {
            return this.text;
        }
    }

    public final String groupDefault(int kind, Function1<? super String, Boolean> isEnabled) {
        Intrinsics.checkNotNullParameter(isEnabled, "isEnabled");
        String str = GROUP_OF_KIND.get(Integer.valueOf(kind));
        Object obj = null;
        if (str == null) {
            return null;
        }
        Iterator it = ((Iterable) MapsKt.getValue(GROUP_ORDER, str)).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (isEnabled.invoke((String) next).booleanValue()) {
                obj = next;
                break;
            }
        }
        return (String) obj;
    }

    private final String fmt(float v) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format(Locale.US, "%.2f", Arrays.copyOf(new Object[]{Float.valueOf(v)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    private final float tau(String group, int words) {
        if (Intrinsics.areEqual(group, "dev")) {
            return words < 12 ? 0.3f : 0.25f;
        }
        return 0.1f;
    }

    public static /* synthetic */ NgramModel modelFor$default(SharedScriptLid sharedScriptLid, String str, Context context, int i, Object obj) {
        if ((i & 2) != 0) {
            context = null;
        }
        return sharedScriptLid.modelFor(str, context);
    }

    public final synchronized NgramModel modelFor(String group, Context context) {
        Application context2;
        Application application;
        Intrinsics.checkNotNullParameter(group, "group");
        NgramModel ngramModel = models.get(group);
        if (ngramModel != null) {
            return ngramModel;
        }
        NgramModel ngramModel2 = null;
        if (failed.contains(group)) {
            return null;
        }
        if (context == null) {
            try {
                context2 = App.INSTANCE.getContext();
            } catch (Throwable unused) {
                context2 = null;
            }
            if (context2 == null) {
                return null;
            }
            application = context2;
        } else {
            application = context;
        }
        long jNanoTime = System.nanoTime();
        try {
            InputStream inputStreamOpen = application.getAssets().open("lid/lid_" + group + ".bin");
            try {
                InputStream inputStream = inputStreamOpen;
                NgramModel.Companion companion = NgramModel.INSTANCE;
                Intrinsics.checkNotNull(inputStream);
                NgramModel ngramModelLoad = companion.load(inputStream);
                CloseableKt.closeFinally(inputStreamOpen, null);
                models.put(group, ngramModelLoad);
                Log.i(TAG, "language model '" + group + "' loaded in " + ((System.nanoTime() - jNanoTime) / 1000000) + " ms (" + ngramModelLoad.getGramCount() + " n-grams, " + ngramModelLoad.getLangs() + ")");
                DetailedLog.INSTANCE.log("Lang", "language model '" + group + "' loaded in " + ((System.nanoTime() - jNanoTime) / 1000000) + " ms (" + ngramModelLoad.getGramCount() + " n-grams, " + ngramModelLoad.getLangs() + ")");
                ngramModel2 = ngramModelLoad;
            } finally {
            }
        } catch (Throwable th) {
            failed.add(group);
            Log.e(TAG, "language model '" + group + "' could not be loaded; the fallback detection is used", th);
        }
        return ngramModel2;
    }

    public final void putModelForTesting$app(NgramModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        synchronized (this) {
            models.put(model.getGroup(), model);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void preload(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<String> it = GROUP_ORDER.keySet().iterator();
        while (it.hasNext()) {
            modelFor(it.next(), context);
        }
    }

    /* compiled from: SharedScriptLid.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0007\n\u0002\b\f\b\u0002\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001f\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Laio/tts/SharedScriptLid$Decision;", "", "lang", "", "note", "ambiguous", "", "words", "", "scores", "", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZILjava/util/Map;)V", "getLang", "()Ljava/lang/String;", "getNote", "getAmbiguous", "()Z", "getWords", "()I", "getScores", "()Ljava/util/Map;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    private static final class Decision {
        private final boolean ambiguous;
        private final String lang;
        private final String note;
        private final Map<String, Float> scores;
        private final int words;

        public Decision(String lang, String note, boolean z, int i, Map<String, Float> map) {
            Intrinsics.checkNotNullParameter(lang, "lang");
            Intrinsics.checkNotNullParameter(note, "note");
            this.lang = lang;
            this.note = note;
            this.ambiguous = z;
            this.words = i;
            this.scores = map;
        }

        public final boolean getAmbiguous() {
            return this.ambiguous;
        }

        public final String getLang() {
            return this.lang;
        }

        public final String getNote() {
            return this.note;
        }

        public final Map<String, Float> getScores() {
            return this.scores;
        }

        public final int getWords() {
            return this.words;
        }
    }

    private final Decision decide(String group, NgramModel model, List<String> cands, String text, String previous) {
        Triple triple;
        Triple triple2;
        String str = previous;
        String strNormalize = model.normalize(text);
        String str2 = strNormalize;
        int size = str2.length() == 0 ? 0 : StringsKt.split$default((CharSequence) str2, new char[]{' '}, false, 0, 6, (Object) null).size();
        String str3 = cands.get(0);
        Integer num = MIN_WORDS.get(group);
        if (size < (num != null ? num.intValue() : 2)) {
            if (str == null || !cands.contains(str)) {
                str = str3;
            }
            return new Decision(str, "ngram: only " + size + " word(s), too short -> " + str, true, size, null);
        }
        if (Intrinsics.areEqual(group, "beng") && cands.contains("as") && cands.contains("bn")) {
            String str4 = text;
            if (StringsKt.indexOf$default((CharSequence) str4, (char) 2544, 0, false, 6, (Object) null) >= 0 || StringsKt.indexOf$default((CharSequence) str4, (char) 2545, 0, false, 6, (Object) null) >= 0) {
                return new Decision("as", "ngram: Assamese-only letter present -> as", false, size, null);
            }
        }
        List<String> list = cands;
        String str5 = group + "|" + CollectionsKt.joinToString$default(list, ",", null, null, 0, null, null, 62, null) + "|" + strNormalize;
        SharedScriptLid$cache$1 sharedScriptLid$cache$1 = cache;
        synchronized (sharedScriptLid$cache$1) {
            triple = (Triple) sharedScriptLid$cache$1.get((Object) str5);
        }
        if (triple == null) {
            final float[] fArrScoresNormalized = model.scoresNormalized(strNormalize, cands);
            if (fArrScoresNormalized == null) {
                triple2 = new Triple(null, Float.valueOf(0.0f), MapsKt.emptyMap());
            } else {
                HashMap map = new HashMap();
                int i = 0;
                for (Object obj : list) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    map.put((String) obj, Float.valueOf(fArrScoresNormalized[i]));
                    i = i2;
                }
                List listSortedWith = CollectionsKt.sortedWith(CollectionsKt.getIndices(cands), new Comparator() { // from class: aio.tts.SharedScriptLid$decide$$inlined$sortedByDescending$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues(Float.valueOf(fArrScoresNormalized[((Number) t2).intValue()]), Float.valueOf(fArrScoresNormalized[((Number) t).intValue()]));
                    }
                });
                triple2 = new Triple(cands.get(((Number) listSortedWith.get(0)).intValue()), Float.valueOf(listSortedWith.size() > 1 ? fArrScoresNormalized[((Number) listSortedWith.get(0)).intValue()] - fArrScoresNormalized[((Number) listSortedWith.get(1)).intValue()] : 9.0f), map);
            }
            triple = triple2;
            SharedScriptLid$cache$1 sharedScriptLid$cache$12 = cache;
            synchronized (sharedScriptLid$cache$12) {
                sharedScriptLid$cache$12.put(str5, triple);
                Unit unit = Unit.INSTANCE;
            }
        }
        String str6 = (String) triple.getFirst();
        if (str6 == null) {
            return new Decision(str3, "ngram: no result -> " + str3, true, size, null);
        }
        float fFloatValue = ((Number) triple.getSecond()).floatValue();
        float fTau = tau(group, size);
        if (Intrinsics.areEqual(str6, str3) || fFloatValue >= fTau) {
            return new Decision(str6, "ngram: " + size + " words best=" + str6 + " margin=" + fmt(fFloatValue) + " tau=" + fmt(fTau) + " -> " + str6, false, size, (Map) triple.getThird());
        }
        return new Decision(str3, "ngram: " + size + " words best=" + str6 + " margin=" + fmt(fFloatValue) + " < tau=" + fmt(fTau) + " -> stays " + str3, true, size, (Map) triple.getThird());
    }

    private final List<Pair<String, Boolean>> chunks(String text) {
        ArrayList arrayList = new ArrayList();
        int last = 0;
        for (MatchResult matchResult : Regex.findAll$default(END, text, 0, 2, null)) {
            String strSubstring = text.substring(last, matchResult.getRange().getLast() + 1);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            arrayList.add(TuplesKt.to(strSubstring, true));
            last = matchResult.getRange().getLast() + 1;
        }
        if (last < text.length()) {
            String strSubstring2 = text.substring(last);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
            arrayList.add(TuplesKt.to(strSubstring2, false));
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x041e, code lost:
    
        r6 = r29;
        r7 = r30;
        r8 = r31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<aio.tts.SharedScriptLid.Piece>> resolve(java.util.List<java.lang.String> r29, int[] r30, kotlin.jvm.functions.Function1<? super java.lang.String, java.lang.Boolean> r31) {
        /*
            Method dump skipped, instructions count: 1078
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.SharedScriptLid.resolve(java.util.List, int[], kotlin.jvm.functions.Function1):java.util.Map");
    }

    /* compiled from: SharedScriptLid.kt */
    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001\u0000\b\u008a\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J,\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0018"}, d2 = {"aio/tts/SharedScriptLid$resolve$Chunk", "", "run", "", "text", "", "sentence", "<init>", "(ILjava/lang/String;I)V", "getRun", "()I", "getText", "()Ljava/lang/String;", "getSentence", "component1", "component2", "component3", "copy", "(ILjava/lang/String;I)Laio/tts/SharedScriptLid$resolve$Chunk;", "equals", "", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Chunk {
        private final int run;
        private final int sentence;
        private final String text;

        public static /* synthetic */ Chunk copy$default(Chunk chunk, int i, String str, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = chunk.run;
            }
            if ((i3 & 2) != 0) {
                str = chunk.text;
            }
            if ((i3 & 4) != 0) {
                i2 = chunk.sentence;
            }
            return chunk.copy(i, str, i2);
        }

        /* renamed from: component1, reason: from getter */
        public final int getRun() {
            return this.run;
        }

        /* renamed from: component2, reason: from getter */
        public final String getText() {
            return this.text;
        }

        /* renamed from: component3, reason: from getter */
        public final int getSentence() {
            return this.sentence;
        }

        public final Chunk copy(int run, String text, int sentence) {
            Intrinsics.checkNotNullParameter(text, "text");
            return new Chunk(run, text, sentence);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Chunk)) {
                return false;
            }
            Chunk chunk = (Chunk) other;
            return this.run == chunk.run && Intrinsics.areEqual(this.text, chunk.text) && this.sentence == chunk.sentence;
        }

        public int hashCode() {
            return (((Integer.hashCode(this.run) * 31) + this.text.hashCode()) * 31) + Integer.hashCode(this.sentence);
        }

        public String toString() {
            return "Chunk(run=" + this.run + ", text=" + this.text + ", sentence=" + this.sentence + ")";
        }

        public Chunk(int i, String text, int i2) {
            Intrinsics.checkNotNullParameter(text, "text");
            this.run = i;
            this.text = text;
            this.sentence = i2;
        }

        public final int getRun() {
            return this.run;
        }

        public final int getSentence() {
            return this.sentence;
        }

        public final String getText() {
            return this.text;
        }
    }
}
