package aio.tts;

import com.nuance.android.vocalizer.VocalizerVoice;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ExternalEngines.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\"#B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0011\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u000bJ\u000e\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000bJ\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u0012J\u000e\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u000bJ\f\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u0005R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR&\u0010\t\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r0\f0\nX\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u0013\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00120\f0\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0015X\u0086T¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Laio/tts/ExternalEngines;", "", "<init>", "()V", "ENGINES", "", "Laio/tts/ExternalEngines$Engine;", "getENGINES", "()Ljava/util/List;", "byVoice", "", "", "Lkotlin/Pair;", "Laio/tts/ExternalEngines$Entry;", "entryFor", "voiceName", "engineFor", "isExternalVoice", "", "installedCache", "Ljava/util/concurrent/ConcurrentHashMap;", "", "failedUntil", "INSTALLED_TTL_MS", "FAILED_COOLDOWN_MS", "isInstalled", "pkg", "isAvailable", "markFailed", "", "wholeEngine", "clearFailed", "catalogVoices", "Lcom/nuance/android/vocalizer/VocalizerVoice;", "Entry", "Engine", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ExternalEngines {
    private static final List<Engine> ENGINES;
    public static final long FAILED_COOLDOWN_MS = 60000;
    private static final long INSTALLED_TTL_MS = 5000;
    public static final ExternalEngines INSTANCE = new ExternalEngines();
    private static final Map<String, Pair<Engine, Entry>> byVoice;
    private static final ConcurrentHashMap<String, Long> failedUntil;
    private static final ConcurrentHashMap<String, Pair<Long, Boolean>> installedCache;

    /* compiled from: ExternalEngines.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Laio/tts/ExternalEngines$Entry;", "", "voiceName", "", "lang", "languageLabel", "locale", "Ljava/util/Locale;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V", "getVoiceName", "()Ljava/lang/String;", "getLang", "getLanguageLabel", "getLocale", "()Ljava/util/Locale;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Entry {
        private final String lang;
        private final String languageLabel;
        private final Locale locale;
        private final String voiceName;

        public Entry(String voiceName, String lang, String languageLabel, Locale locale) {
            Intrinsics.checkNotNullParameter(voiceName, "voiceName");
            Intrinsics.checkNotNullParameter(lang, "lang");
            Intrinsics.checkNotNullParameter(languageLabel, "languageLabel");
            Intrinsics.checkNotNullParameter(locale, "locale");
            this.voiceName = voiceName;
            this.lang = lang;
            this.languageLabel = languageLabel;
            this.locale = locale;
        }

        public final String getLang() {
            return this.lang;
        }

        public final String getLanguageLabel() {
            return this.languageLabel;
        }

        public final Locale getLocale() {
            return this.locale;
        }

        public final String getVoiceName() {
            return this.voiceName;
        }
    }

    private ExternalEngines() {
    }

    /* compiled from: ExternalEngines.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Laio/tts/ExternalEngines$Engine;", "", "key", "", "label", "pkg", "tier", "", "entries", "", "Laio/tts/ExternalEngines$Entry;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V", "getKey", "()Ljava/lang/String;", "getLabel", "getPkg", "getTier", "()I", "getEntries", "()Ljava/util/List;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Engine {
        private final List<Entry> entries;
        private final String key;
        private final String label;
        private final String pkg;
        private final int tier;

        public Engine(String key, String label, String pkg, int i, List<Entry> entries) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(label, "label");
            Intrinsics.checkNotNullParameter(pkg, "pkg");
            Intrinsics.checkNotNullParameter(entries, "entries");
            this.key = key;
            this.label = label;
            this.pkg = pkg;
            this.tier = i;
            this.entries = entries;
        }

        public final List<Entry> getEntries() {
            return this.entries;
        }

        public final String getKey() {
            return this.key;
        }

        public final String getLabel() {
            return this.label;
        }

        public final String getPkg() {
            return this.pkg;
        }

        public final int getTier() {
            return this.tier;
        }
    }

    static {
        List<Engine> listListOf;
        if (Edition.INSTANCE.getPLUS()) {
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            Locale US2 = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US2, "US");
            listListOf = CollectionsKt.listOf((Object[]) new Engine[]{new Engine("ibm", "IBM Eloquence", "com.karan.eloquence", 4, CollectionsKt.listOf(new Entry("IBM Eloquence", "en", "English", US))), new Engine("speechflow", "SpeechFlow", "in.visionHacks.eloquencePlus", 5, CollectionsKt.listOf((Object[]) new Entry[]{new Entry("SpeechFlow English", "en", "English", US2), new Entry("SpeechFlow Hindi", "hi", "Hindi", new Locale("hi", "IN")), new Entry("SpeechFlow Urdu", "ur", "Urdu", new Locale("ur", "IN"))}))});
        } else {
            listListOf = CollectionsKt.emptyList();
        }
        ENGINES = listListOf;
        ArrayList arrayList = new ArrayList();
        for (Engine engine : listListOf) {
            List<Entry> entries = engine.getEntries();
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(entries, 10));
            for (Entry entry : entries) {
                arrayList2.add(TuplesKt.to(entry.getVoiceName(), TuplesKt.to(engine, entry)));
            }
            CollectionsKt.addAll(arrayList, arrayList2);
        }
        byVoice = MapsKt.toMap(arrayList);
        installedCache = new ConcurrentHashMap<>();
        failedUntil = new ConcurrentHashMap<>();
    }

    public final List<Engine> getENGINES() {
        return ENGINES;
    }

    public final Entry entryFor(String voiceName) {
        Pair<Engine, Entry> pair;
        if (voiceName == null || (pair = byVoice.get(voiceName)) == null) {
            return null;
        }
        return pair.getSecond();
    }

    public final Engine engineFor(String voiceName) {
        Pair<Engine, Entry> pair;
        if (voiceName == null || (pair = byVoice.get(voiceName)) == null) {
            return null;
        }
        return pair.getFirst();
    }

    public final boolean isExternalVoice(String voiceName) {
        return voiceName != null && byVoice.containsKey(voiceName);
    }

    public final boolean isInstalled(String pkg) {
        Intrinsics.checkNotNullParameter(pkg, "pkg");
        long jCurrentTimeMillis = System.currentTimeMillis();
        Pair<Long, Boolean> pair = installedCache.get(pkg);
        if (pair != null) {
            long jLongValue = pair.component1().longValue();
            boolean zBooleanValue = pair.component2().booleanValue();
            if (jCurrentTimeMillis - jLongValue < INSTALLED_TTL_MS) {
                return zBooleanValue;
            }
        }
        boolean z = false;
        try {
            z = App.INSTANCE.getContext().getPackageManager().getApplicationInfo(pkg, 0).enabled;
        } catch (Throwable unused) {
        }
        installedCache.put(pkg, TuplesKt.to(Long.valueOf(jCurrentTimeMillis), Boolean.valueOf(z)));
        return z;
    }

    public final boolean isAvailable(String voiceName) {
        Intrinsics.checkNotNullParameter(voiceName, "voiceName");
        Engine engineEngineFor = engineFor(voiceName);
        if (engineEngineFor == null || !isInstalled(engineEngineFor.getPkg())) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ConcurrentHashMap<String, Long> concurrentHashMap = failedUntil;
        Long l = concurrentHashMap.get(engineEngineFor.getPkg());
        if ((l != null ? l.longValue() : 0L) > jCurrentTimeMillis) {
            return false;
        }
        Long l2 = concurrentHashMap.get("voice:" + voiceName);
        return (l2 != null ? l2.longValue() : 0L) <= jCurrentTimeMillis;
    }

    public final void markFailed(String voiceName, boolean wholeEngine) {
        Intrinsics.checkNotNullParameter(voiceName, "voiceName");
        Engine engineEngineFor = engineFor(voiceName);
        if (engineEngineFor == null) {
            return;
        }
        failedUntil.put(wholeEngine ? engineEngineFor.getPkg() : "voice:" + voiceName, Long.valueOf(System.currentTimeMillis() + FAILED_COOLDOWN_MS));
        DiagnosticLog diagnosticLog = DiagnosticLog.INSTANCE;
        if (wholeEngine) {
            voiceName = engineEngineFor.getLabel();
        }
        diagnosticLog.log("External", voiceName + " (" + engineEngineFor.getPkg() + ") cannot be used now: the language's normal voice is used for the next 60 s");
    }

    public final void clearFailed(String voiceName) {
        Intrinsics.checkNotNullParameter(voiceName, "voiceName");
        Engine engineEngineFor = engineFor(voiceName);
        if (engineEngineFor == null) {
            return;
        }
        ConcurrentHashMap<String, Long> concurrentHashMap = failedUntil;
        concurrentHashMap.remove(engineEngineFor.getPkg());
        concurrentHashMap.remove("voice:" + voiceName);
    }

    public final List<VocalizerVoice> catalogVoices() {
        List<Engine> list = ENGINES;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            List<Entry> entries = ((Engine) it.next()).getEntries();
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(entries, 10));
            for (Entry entry : entries) {
                VocalizerVoice vocalizerVoice = new VocalizerVoice();
                vocalizerVoice.mVoiceName = entry.getVoiceName();
                vocalizerVoice.mLanguage = entry.getLanguageLabel();
                vocalizerVoice.mLanguageTLW = VoiceCatalog.INSTANCE.tlwPrefixFor(entry.getLang());
                vocalizerVoice.mSampleRate = 0;
                arrayList2.add(vocalizerVoice);
            }
            CollectionsKt.addAll(arrayList, arrayList2);
        }
        return arrayList;
    }
}
