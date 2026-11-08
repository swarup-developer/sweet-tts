package aio.tts;

import aio.tts.Dictionary;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* compiled from: DictionarySeeds.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\nH\u0002R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Laio/tts/DictionarySeeds;", "", "<init>", "()V", "e", "Laio/tts/Dictionary$Entry;", "find", "", "replace", "cs", "", "ELOQUENCE_ENGLISH", "", "getELOQUENCE_ENGLISH", "()Ljava/util/List;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DictionarySeeds {
    private static final List<Dictionary.Entry> ELOQUENCE_ENGLISH;
    public static final DictionarySeeds INSTANCE;

    private DictionarySeeds() {
    }

    private final Dictionary.Entry e(String find, String replace, boolean cs) {
        return new Dictionary.Entry(find, replace, cs);
    }

    static /* synthetic */ Dictionary.Entry e$default(DictionarySeeds dictionarySeeds, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return dictionarySeeds.e(str, str2, z);
    }

    public final List<Dictionary.Entry> getELOQUENCE_ENGLISH() {
        return ELOQUENCE_ENGLISH;
    }

    static {
        DictionarySeeds dictionarySeeds = new DictionarySeeds();
        INSTANCE = dictionarySeeds;
        ELOQUENCE_ENGLISH = CollectionsKt.listOf((Object[]) new Dictionary.Entry[]{dictionarySeeds.e("Mar", "March", true), e$default(dictionarySeeds, "Tue", "Tuesday", false, 4, null), e$default(dictionarySeeds, "Tues", "Tuesday", false, 4, null), e$default(dictionarySeeds, "Thu", "Thursday", false, 4, null), e$default(dictionarySeeds, "Thur", "Thursday", false, 4, null), e$default(dictionarySeeds, "Thurs", "Thursday", false, 4, null), e$default(dictionarySeeds, "omg", "oe em jee", false, 4, null), e$default(dictionarySeeds, "LOL", "ell oe ell", false, 4, null), e$default(dictionarySeeds, "lmao", "ell em ey oe", false, 4, null), e$default(dictionarySeeds, "lmfao", "ell em eff aigh oe", false, 4, null), e$default(dictionarySeeds, "rofl", "ar oe eff ell", false, 4, null), e$default(dictionarySeeds, "ROFLMAO", "ar oe eff ell em ey oe", false, 4, null), e$default(dictionarySeeds, "idk", "I don't know", false, 4, null), e$default(dictionarySeeds, "imo", "igh em oe", false, 4, null), e$default(dictionarySeeds, "IMHO", "igh em aitch oe", false, 4, null), e$default(dictionarySeeds, "ikr", "igh keigh ar", false, 4, null), e$default(dictionarySeeds, "stfu", "ess tea eff yue", false, 4, null), e$default(dictionarySeeds, "IYKYK", "igh wie keigh wie keigh", false, 4, null), e$default(dictionarySeeds, "IDGAF", "igh dee jee aigh eff", false, 4, null), e$default(dictionarySeeds, "ILY", "igh ell wie", false, 4, null), e$default(dictionarySeeds, "OTOH", "oe tea oe aitch", false, 4, null), e$default(dictionarySeeds, "AKA", "ey keigh ey", false, 4, null), e$default(dictionarySeeds, "FAQ", "eff ey kew", false, 4, null), e$default(dictionarySeeds, "FWIW", "for what it's worth", false, 4, null), e$default(dictionarySeeds, "AFAIK", "as far as I know", false, 4, null), e$default(dictionarySeeds, "AFAIC", "as far as I'm concerned", false, 4, null), e$default(dictionarySeeds, "AFAICT", "as far as I can tell", false, 4, null), e$default(dictionarySeeds, "IIRC", "if I recall correctly", false, 4, null), e$default(dictionarySeeds, "ios", "igh oe ess", false, 4, null), dictionarySeeds.e("OS", "oe ess", true), dictionarySeeds.e("AI", "aigh igh", true), e$default(dictionarySeeds, "api", "aigh pee igh", false, 4, null), e$default(dictionarySeeds, "apk", "ey pee kay", false, 4, null), e$default(dictionarySeeds, "url", "yue ar ell", false, 4, null), e$default(dictionarySeeds, "urls", "yue ar ells", false, 4, null), e$default(dictionarySeeds, "usb", "yue ess bea", false, 4, null), dictionarySeeds.e("GUI", "jee yue igh", true), dictionarySeeds.e("LED", "ell ee dee", true), dictionarySeeds.e("OLED", "oe ell ee dee", true), e$default(dictionarySeeds, "JPEG", "jay peg", false, 4, null), e$default(dictionarySeeds, "MPEG", "em peg", false, 4, null), dictionarySeeds.e("IP", "igh pea", true), dictionarySeeds.e("ISO", "igh ess oe", true), dictionarySeeds.e("IEEE", "I triple E", true), e$default(dictionarySeeds, "ibm", "igh bea em", false, 4, null), dictionarySeeds.e("SEO", "ess ee oe", true), dictionarySeeds.e("UX", "yue eks", true), dictionarySeeds.e("UI", "yue igh", true), e$default(dictionarySeeds, "dpi", "dee pea igh", false, 4, null), e$default(dictionarySeeds, "ppi", "pea pea igh", false, 4, null), dictionarySeeds.e("VGA", "vee jee ey", true), dictionarySeeds.e("IMEI", "igh em ee igh", true), dictionarySeeds.e("GUID", "jee yue igh dee", true), dictionarySeeds.e("UUID", "yue yue igh dee", true), dictionarySeeds.e("UEFI", "yue ee eff igh", true), dictionarySeeds.e("PWA", "pea doubleyou ey", true), e$default(dictionarySeeds, "MySQL", "my ess kew l", false, 4, null), e$default(dictionarySeeds, "ffmpeg", "eff eff em peg", false, 4, null), dictionarySeeds.e("SUV", "ess yue vee", true), dictionarySeeds.e("EV", "ee vee", true), dictionarySeeds.e("OTA", "oe tea ey", true), dictionarySeeds.e("BYOD", "bea wie oe dee", true), e$default(dictionarySeeds, "nvda", "en vee dee ey", false, 4, null), e$default(dictionarySeeds, "nvaccess", "en vee access", false, 4, null), e$default(dictionarySeeds, "chatgpt", "chat gee pee tea", false, 4, null), e$default(dictionarySeeds, "gpay", "g pay", false, 4, null), e$default(dictionarySeeds, "gmail", "G mail", false, 4, null), e$default(dictionarySeeds, "imdb", "igh em dee bea", false, 4, null), e$default(dictionarySeeds, "airbnb", "Air bea en bea", false, 4, null), dictionarySeeds.e("AQI", "aigh kew igh", true), dictionarySeeds.e("CAGR", "cea ey jee ar", true), e$default(dictionarySeeds, "kashmir", "kushmeer", false, 4, null), e$default(dictionarySeeds, "kashmiri", "kushmeeri", false, 4, null), e$default(dictionarySeeds, "Govt", "Government", false, 4, null), e$default(dictionarySeeds, "Avg", "average", false, 4, null), e$default(dictionarySeeds, "incl", "including", false, 4, null), e$default(dictionarySeeds, "Univ", "university", false, 4, null), e$default(dictionarySeeds, "Qty", "quantity", false, 4, null), e$default(dictionarySeeds, "esc", "escape", false, 4, null)});
    }
}
