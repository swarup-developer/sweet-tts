package aio.tts;

import aio.tts.ExternalEngines;
import androidx.core.text.util.LocalePreferences;
import com.nuance.android.vocalizer.VocalizerVoice;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: VoiceCatalog.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010$\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0006J\u0014\u0010\u001c\u001a\u00020\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0006\u0010\u001f\u001a\u00020\u001dJ\u0006\u0010 \u001a\u00020\u001dJ\u0014\u0010!\u001a\u00020\u001d2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0006H\u0002J\u0010\u0010'\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u0006H\u0002J\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010*\u001a\u00020\r2\u0006\u0010+\u001a\u00020\rJ\u0016\u0010,\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\rJ\u0014\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010+\u001a\u00020\rJ\u001e\u00100\u001a\u0004\u0018\u00010\u00062\u0006\u00101\u001a\u00020\r2\f\u00102\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u00103\u001a\u0004\u0018\u00010\r2\u0006\u0010+\u001a\u00020\rJ\u0006\u00104\u001a\u00020\rR \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR#\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\f0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\bR\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000R&\u0010\u0016\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u00170\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\r0\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010#\u001a\b\u0012\u0004\u0012\u00020\r0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0/X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Laio/tts/VoiceCatalog;", "", "<init>", "()V", "voices", "", "Lcom/nuance/android/vocalizer/VocalizerVoice;", "getVoices", "()Ljava/util/List;", "setVoices", "(Ljava/util/List;)V", "LANGUAGES", "Lkotlin/Pair;", "", "getLANGUAGES", "DEFAULT_ENABLED_LANGUAGES", "", "getDEFAULT_ENABLED_LANGUAGES", "()Ljava/util/Set;", "VOICE_DISPLAY_ORDER", "ELOQUENCE_VOICE_NAME", "GOOGLE_VOICE_PREFIX", "PLACEHOLDERS", "Lkotlin/Triple;", "placeholderNames", "isMissingPlaceholder", "", "v", "setVocalizerVoices", "", "real", "ensureEloquenceVoiceRegistered", "ensureExternalEnginesRegistered", "ensureGoogleVoicesRegistered", "entries", "OTHER_COUNTRY_WORDS", "tierOf", "", "voice", "displaySortKey", "sortedForDisplay", "list", "tlwPrefixFor", "lang", "voiceMatchesLanguage", "voicesFor", "PREFERRED_DEFAULTS", "", "defaultVoiceFor", "slot", "options", "preferredDefaultVoiceNameIfPresent", "languagesSummaryForAnnouncement", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VoiceCatalog {
    public static final String GOOGLE_VOICE_PREFIX = "Google ";
    public static final VoiceCatalog INSTANCE = new VoiceCatalog();
    private static volatile List<VocalizerVoice> voices = CollectionsKt.emptyList();
    private static final List<Pair<String, String>> LANGUAGES = CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to("en", "English"), TuplesKt.to("hi", "Hindi"), TuplesKt.to("mr", "Marathi"), TuplesKt.to("bn", "Bengali"), TuplesKt.to("gu", "Gujarati"), TuplesKt.to("pa", "Punjabi"), TuplesKt.to("ur", "Urdu"), TuplesKt.to("ar", "Arabic"), TuplesKt.to("ne", "Nepali"), TuplesKt.to("or", "Odia"), TuplesKt.to("kn", "Kannada"), TuplesKt.to("ta", "Tamil"), TuplesKt.to("te", "Telugu"), TuplesKt.to("ml", "Malayalam"), TuplesKt.to("as", "Assamese"), TuplesKt.to("bho", "Bhojpuri"), TuplesKt.to("brx", "Bodo"), TuplesKt.to("doi", "Dogri"), TuplesKt.to("kok", "Konkani"), TuplesKt.to("mai", "Maithili"), TuplesKt.to("sa", "Sanskrit"), TuplesKt.to("ks", "Kashmiri"), TuplesKt.to("sd", "Sindhi"), TuplesKt.to("mni", "Manipuri"), TuplesKt.to(LocalePreferences.FirstDayOfWeek.SATURDAY, "Santali")});
    private static final Set<String> DEFAULT_ENABLED_LANGUAGES = SetsKt.setOf((Object[]) new String[]{"en", "hi", "mr", "bn", "gu", "pa", "ur"});
    private static final List<String> VOICE_DISPLAY_ORDER = CollectionsKt.listOf((Object[]) new String[]{"Nathan", "Samantha", "Rishi", "Karen", "Daniel", "Lekha", "Neel", "Ananya", "Paya", "Alpana", "Vani", "Geeta"});
    private static final List<Triple<String, String, String>> PLACEHOLDERS = CollectionsKt.listOf((Object[]) new Triple[]{new Triple("Maged", "Arabic", "ARW"), new Triple("Tarik", "Arabic", "ARW")});
    private static volatile Set<String> placeholderNames = SetsKt.emptySet();
    private static final List<String> OTHER_COUNTRY_WORDS = CollectionsKt.listOf((Object[]) new String[]{"Bangladesh", "Pakistan", "US"});
    public static final String ELOQUENCE_VOICE_NAME = "ETI Eloquence";
    private static final Map<String, String> PREFERRED_DEFAULTS = MapsKt.mapOf(TuplesKt.to("en", ELOQUENCE_VOICE_NAME), TuplesKt.to("hi", "Lekha"), TuplesKt.to("ar", "Laila"), TuplesKt.to("ur", "Google Urdu India 2"), TuplesKt.to("emoji", "Rishi"), TuplesKt.to("number", "Rishi"));

    private VoiceCatalog() {
    }

    public final List<VocalizerVoice> getVoices() {
        return voices;
    }

    public final void setVoices(List<VocalizerVoice> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        voices = list;
    }

    public final List<Pair<String, String>> getLANGUAGES() {
        return LANGUAGES;
    }

    public final Set<String> getDEFAULT_ENABLED_LANGUAGES() {
        return DEFAULT_ENABLED_LANGUAGES;
    }

    public final boolean isMissingPlaceholder(VocalizerVoice v) {
        Intrinsics.checkNotNullParameter(v, "v");
        return placeholderNames.contains(v.mVoiceName);
    }

    public final void setVocalizerVoices(List<VocalizerVoice> real) {
        Intrinsics.checkNotNullParameter(real, "real");
        List<VocalizerVoice> list = voices;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            VocalizerVoice vocalizerVoice = (VocalizerVoice) obj;
            if (Intrinsics.areEqual(vocalizerVoice.mVoiceName, ELOQUENCE_VOICE_NAME) || StringsKt.startsWith$default(vocalizerVoice.mVoiceName, GOOGLE_VOICE_PREFIX, false, 2, (Object) null) || ExternalEngines.INSTANCE.isExternalVoice(vocalizerVoice.mVoiceName)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        List<VocalizerVoice> list2 = real;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((VocalizerVoice) it.next()).mVoiceName);
        }
        Set set = CollectionsKt.toSet(arrayList3);
        List<Triple<String, String, String>> list3 = PLACEHOLDERS;
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : list3) {
            if (!set.contains(((Triple) obj2).getFirst())) {
                arrayList4.add(obj2);
            }
        }
        ArrayList<Triple> arrayList5 = arrayList4;
        ArrayList arrayList6 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList5, 10));
        for (Triple triple : arrayList5) {
            String str = (String) triple.component1();
            String str2 = (String) triple.component2();
            String str3 = (String) triple.component3();
            VocalizerVoice vocalizerVoice2 = new VocalizerVoice();
            vocalizerVoice2.mVoiceName = str;
            vocalizerVoice2.mLanguage = str2;
            vocalizerVoice2.mLanguageTLW = str3;
            vocalizerVoice2.mSampleRate = 22;
            arrayList6.add(vocalizerVoice2);
        }
        ArrayList arrayList7 = arrayList6;
        ArrayList arrayList8 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList7, 10));
        Iterator it2 = arrayList7.iterator();
        while (it2.hasNext()) {
            arrayList8.add(((VocalizerVoice) it2.next()).mVoiceName);
        }
        placeholderNames = CollectionsKt.toSet(arrayList8);
        voices = CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) real, (Iterable) arrayList7), (Iterable) arrayList2);
    }

    public final void ensureEloquenceVoiceRegistered() {
        List<VocalizerVoice> list = voices;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(((VocalizerVoice) it.next()).mVoiceName, ELOQUENCE_VOICE_NAME)) {
                    return;
                }
            }
        }
        VocalizerVoice vocalizerVoice = new VocalizerVoice();
        vocalizerVoice.mVoiceName = ELOQUENCE_VOICE_NAME;
        vocalizerVoice.mLanguage = "English";
        vocalizerVoice.mLanguageTLW = "ENG";
        vocalizerVoice.mSampleRate = 22;
        voices = CollectionsKt.plus((Collection<? extends VocalizerVoice>) voices, vocalizerVoice);
    }

    public final void ensureExternalEnginesRegistered() {
        List<VocalizerVoice> listCatalogVoices = ExternalEngines.INSTANCE.catalogVoices();
        if (listCatalogVoices.isEmpty()) {
            return;
        }
        List<VocalizerVoice> list = voices;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!ExternalEngines.INSTANCE.isExternalVoice(((VocalizerVoice) obj).mVoiceName)) {
                arrayList.add(obj);
            }
        }
        voices = CollectionsKt.plus((Collection) arrayList, (Iterable) listCatalogVoices);
    }

    public final void ensureGoogleVoicesRegistered(List<VocalizerVoice> entries) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        List<VocalizerVoice> list = voices;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!StringsKt.startsWith$default(((VocalizerVoice) obj).mVoiceName, GOOGLE_VOICE_PREFIX, false, 2, (Object) null)) {
                arrayList.add(obj);
            }
        }
        voices = CollectionsKt.plus((Collection) arrayList, (Iterable) entries);
    }

    private final int tierOf(VocalizerVoice voice) {
        String str = voice.mVoiceName;
        if (Intrinsics.areEqual(str, ELOQUENCE_VOICE_NAME)) {
            return 0;
        }
        if (ExternalEngines.INSTANCE.isExternalVoice(str)) {
            ExternalEngines.Engine engineEngineFor = ExternalEngines.INSTANCE.engineFor(str);
            if (engineEngineFor != null) {
                return engineEngineFor.getTier();
            }
            return 4;
        }
        if (!StringsKt.startsWith$default(str, GOOGLE_VOICE_PREFIX, false, 2, (Object) null)) {
            return 1;
        }
        List<String> list = OTHER_COUNTRY_WORDS;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (StringsKt.contains$default((CharSequence) str, (CharSequence) (" " + ((String) it.next())), false, 2, (Object) null)) {
                    return 3;
                }
            }
        }
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String displaySortKey(VocalizerVoice voice) {
        String str;
        int iTierOf = tierOf(voice);
        if (StringsKt.startsWith$default(voice.mVoiceName, GOOGLE_VOICE_PREFIX, false, 2, (Object) null)) {
            str = voice.mVoiceName;
        } else {
            int iIndexOf = VOICE_DISPLAY_ORDER.indexOf(voice.mVoiceName);
            if (iIndexOf < 0) {
                iIndexOf = Integer.MAX_VALUE;
            }
            str = StringsKt.padStart(String.valueOf(iIndexOf), 6, '0') + "_" + voice.mVoiceName;
        }
        return iTierOf + "|" + str;
    }

    public final List<VocalizerVoice> sortedForDisplay(List<VocalizerVoice> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return CollectionsKt.sortedWith(list, new Comparator() { // from class: aio.tts.VoiceCatalog$sortedForDisplay$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(VoiceCatalog.INSTANCE.displaySortKey((VocalizerVoice) t), VoiceCatalog.INSTANCE.displaySortKey((VocalizerVoice) t2));
            }
        });
    }

    public final String tlwPrefixFor(String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        switch (lang.hashCode()) {
            case 3121:
                return !lang.equals("ar") ? "EN" : "ARW";
            case 3122:
                return !lang.equals("as") ? "EN" : "AS";
            case 3148:
                return !lang.equals("bn") ? "EN" : "BE";
            case 3310:
                return !lang.equals("gu") ? "EN" : "GU";
            case 3329:
                return !lang.equals("hi") ? "EN" : "HI";
            case 3427:
                return !lang.equals("kn") ? "EN" : "KA";
            case 3432:
                return !lang.equals("ks") ? "EN" : "KS";
            case 3487:
                return !lang.equals("ml") ? "EN" : "ML";
            case 3493:
                return !lang.equals("mr") ? "EN" : "MA";
            case 3511:
                return !lang.equals("ne") ? "EN" : "NP";
            case 3555:
                return !lang.equals("or") ? "EN" : "OD";
            case 3569:
                return !lang.equals("pa") ? "EN" : "PU";
            case 3662:
                return !lang.equals("sa") ? "EN" : "SK";
            case 3665:
                return !lang.equals("sd") ? "EN" : "SI";
            case 3693:
                return !lang.equals("ta") ? "EN" : "TA";
            case 3697:
                return !lang.equals("te") ? "EN" : "TE";
            case 3741:
                return !lang.equals("ur") ? "EN" : "UR";
            case 97513:
                return !lang.equals("bho") ? "EN" : "BHI";
            case 97832:
                return !lang.equals("brx") ? "EN" : "BR";
            case 99646:
                return !lang.equals("doi") ? "EN" : "DO";
            case 106375:
                return !lang.equals("kok") ? "EN" : "KO";
            case 107861:
                return !lang.equals("mai") ? "EN" : "MT";
            case 108264:
                return !lang.equals("mni") ? "EN" : "MN";
            case 113638:
                return !lang.equals(LocalePreferences.FirstDayOfWeek.SATURDAY) ? "EN" : "ST";
            default:
                return "EN";
        }
    }

    public final boolean voiceMatchesLanguage(VocalizerVoice voice, String lang) {
        Intrinsics.checkNotNullParameter(voice, "voice");
        Intrinsics.checkNotNullParameter(lang, "lang");
        return StringsKt.startsWith(voice.mLanguageTLW, tlwPrefixFor(lang), true);
    }

    public final List<VocalizerVoice> voicesFor(String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        List<VocalizerVoice> list = voices;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (INSTANCE.voiceMatchesLanguage((VocalizerVoice) obj, lang)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final VocalizerVoice defaultVoiceFor(String slot, List<VocalizerVoice> options) {
        Object next;
        Intrinsics.checkNotNullParameter(slot, "slot");
        Intrinsics.checkNotNullParameter(options, "options");
        String str = PREFERRED_DEFAULTS.get(slot);
        Iterator<T> it = options.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((VocalizerVoice) next).mVoiceName, str)) {
                break;
            }
        }
        VocalizerVoice vocalizerVoice = (VocalizerVoice) next;
        return vocalizerVoice == null ? (VocalizerVoice) CollectionsKt.firstOrNull((List) options) : vocalizerVoice;
    }

    public final String preferredDefaultVoiceNameIfPresent(String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        String str = PREFERRED_DEFAULTS.get(lang);
        if (str == null) {
            return null;
        }
        List<VocalizerVoice> listVoicesFor = voicesFor(lang);
        if (!(listVoicesFor instanceof Collection) || !listVoicesFor.isEmpty()) {
            Iterator<T> it = listVoicesFor.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(((VocalizerVoice) it.next()).mVoiceName, str)) {
                    return str;
                }
            }
        }
        return null;
    }

    public final String languagesSummaryForAnnouncement() {
        List<Pair<String, String>> list = LANGUAGES;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (Prefs.INSTANCE.isLanguageEnabled((String) ((Pair) obj).component1())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add((String) ((Pair) it.next()).getSecond());
        }
        ArrayList arrayList4 = arrayList3;
        if (arrayList4.isEmpty()) {
            return "Languages, nothing selected";
        }
        return "Languages, " + CollectionsKt.joinToString$default(arrayList4, ", ", null, null, 0, null, null, 62, null) + " selected";
    }
}
