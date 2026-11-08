package aio.tts;

import android.widget.Button;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.DebugKt;

/* compiled from: Desc.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b:\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\u000bJ\u001e\u0010\f\u001a\u0004\u0018\u00010\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006J$\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\u0018\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020H2\b\u0010\r\u001a\u0004\u0018\u00010\u0006R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0011\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006I"}, d2 = {"Laio/tts/Desc;", "", "<init>", "()V", "LANGS", "", "", "getLANGS", "()Ljava/util/List;", "lang", DebugKt.DEBUG_PROPERTY_VALUE_ON, "", "pick", "hi", "en", "withDesc", "title", "GOOGLE_TTS_INTRO", "GOOGLE_CLEAR_DATA", "GOOGLE_CLEAR_DATA_EN", "GOOGLE_LANG_DETECT", "GOOGLE_LANG_DETECT_EN", "GOOGLE_DOWNLOAD", "GOOGLE_DOWNLOAD_EN", "LANGUAGES_INTRO", "VOICES", "PER_APP", "PUNCTUATION", "CLEAR_CACHE", "CLEAR_CACHE_EN", "CLEAR_DATA", "LONG_NUMBER", "LONG_NUMBER_APPLIES", "MOBILE", "AMOUNT", "AMOUNT_EN", "OTP", "OTP_CLIPBOARD", "OTP_AFTER", "DICTIONARY", "DICTIONARY_EN", "WHOLE_MESSAGE", "QUICK_START", "QUICK_START_EN", "KEEP_RUNNING", "KEEP_RUNNING_EN", "LOGGING", "DETAILED_LOG", "VOLUME_RATE_PITCH", "NUMBERS_BTN", "OTHER_BTN", "SLIDER_INTRO", "PERAPP_ADD_NOPERM", "PERAPP_ADD_NOPERM_EN", "PERAPP_ADD_OK", "PERAPP_PICK", "APP_VOICE_INTRO", "DICT_EXPORT", "DICT_IMPORT", "DICT_ENTRIES_INTRO", "SETTINGS_EXPORT", "SETTINGS_IMPORT", "LOG_CLEAR", "LOG_SHARE", "LOG_OPEN", "LOG_SAVE", "MORE_VOICES", "WHATS_NEW_BTN", "WHATS_NEW_BTN_EN", "describeButton", "", "b", "Landroid/widget/Button;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Desc {
    public static final String AMOUNT = "अंग्रेज़ी आवाज़ में 6 से 9 अंक की रकम Million/Billion की जगह Lakh/Crore में पढ़ी जाएगी।";
    public static final String AMOUNT_EN = "Uses Crore/Lakh instead of Billion/Million for English Voices";
    public static final String APP_VOICE_INTRO = "इस ऐप में हर भाषा के लिए अलग आवाज़ चुनिए। Same as global default का मतलब है कि बाकी जगह वाली आवाज़ ही लगेगी।";
    public static final String CLEAR_CACHE = "ऐप का cache साफ़ करता है और सारी आवाज़ें व सेटिंग ताज़ा करता है। आपकी सेटिंग मिटती नहीं।";
    public static final String CLEAR_CACHE_EN = "Clears this app's cache and refreshes all voices and preferences.";
    public static final String CLEAR_DATA = "ऐप की सारी सेटिंग और डेटा मिटाकर शुरुआती हालत में ले जाता है।";
    public static final String DETAILED_LOG = "हर चरण का मिलीसेकंड में विस्तृत रिकॉर्ड। सिर्फ जाँच के समय चालू रखें।";
    public static final String DICTIONARY = "किसी शब्द की जगह दूसरा शब्द बोलवाना, जैसे गलत उच्चारण ठीक करना। रिप्लेसमेंट खाली छोड़ेंगे तो वह शब्द बोला ही नहीं जाएगा।";
    public static final String DICTIONARY_EN = "Add or edit find/replace entries";
    public static final String DICT_ENTRIES_INTRO = "Add Entry से नई प्रविष्टि जोड़िए: कौन सा शब्द और उसकी जगह क्या बोलना है। रिप्लेसमेंट खाली छोड़ेंगे तो वह शब्द बोला ही नहीं जाएगा। जैसे Maybe पहले से खाली रिप्लेसमेंट के साथ जुड़ा है, इसलिए WhatsApp की चैट में यह लेबल सुनाई नहीं देता।";
    public static final String DICT_EXPORT = "डिक्शनरी को फाइल में सेव करता है।";
    public static final String DICT_IMPORT = "पहले सेव की हुई डिक्शनरी की फाइल वापस लाता है।";
    public static final String GOOGLE_CLEAR_DATA = "App Info की स्क्रीन खुलेगी। वहाँ Clear data बटन ढूँढकर डेटा साफ़ कीजिए। ऐप की पहली सेटिंग के समय यह एक बार करना ज़रूरी है। बाद में भी जब Google TTS अटके या गड़बड़ करे, तो दोबारा करना पड़ सकता है।";
    public static final String GOOGLE_CLEAR_DATA_EN = "This will open Google TTS App Info screen, find Clear Data option & use it";
    public static final String GOOGLE_DOWNLOAD = "Google की आवाज़ें डाउनलोड करने की स्क्रीन खुलेगी। सिर्फ वही भाषाएँ डाउनलोड कीजिए जो आपको चाहिए।";
    public static final String GOOGLE_DOWNLOAD_EN = "Opens Google TTS's own voice download screen";
    public static final String GOOGLE_LANG_DETECT = "Google TTS की सेटिंग खुलेगी। वहाँ Language detection में तीन विकल्प आते हैं, उनमें से Off चुन लीजिए। ऐप के ठीक से काम करने के लिए यह ज़रूरी है।";
    public static final String GOOGLE_LANG_DETECT_EN = "Opens Google TTS settings, find Language detection & turn it off";
    public static final String GOOGLE_TTS_INTRO = "ऑल इन वन को ठीक से चलाने के लिए Google TTS की ये तीन सेटिंग करना ज़रूरी है।";
    public static final String KEEP_RUNNING = "जब कोई स्क्रीन रीडर ऑल इन वन का इस्तेमाल कर रहा हो, तब एक छोटी सूचना दिखाकर ऐप को बैकग्राउंड में चालू रखता है, ताकि फ़ोन उसे बंद न करे। बैटरी नहीं खाता।";
    public static final String KEEP_RUNNING_EN = "Shows a quiet notification while a screen reader uses All In One, so the phone does not close it in the background";
    public static final String LANGUAGES_INTRO = "सिर्फ वही भाषाएँ चुनिए जो आपको चाहिए, बाकी खाली रखिए। जितनी कम भाषाएँ, उतनी तेज़ और सही पहचान।";
    public static final String LOGGING = "ऐप की गतिविधि का छोटा रिकॉर्ड रखता है, गड़बड़ी जाँचने के लिए।";
    public static final String LOG_CLEAR = "लॉग मिटाता है।";
    public static final String LOG_OPEN = "लॉग खोलकर दिखाता है।";
    public static final String LOG_SAVE = "लॉग की कॉपी फोन के Documents फोल्डर में, All In One TTS नाम के फोल्डर में रखता है।";
    public static final String LOG_SHARE = "लॉग की फाइल दूसरी ऐप में भेजता है।";
    public static final String LONG_NUMBER = "बड़ी संख्या कैसे पढ़ी जाए। None: जैसी है वैसी। Ones, Tens, Hundreds: संख्या को दाएँ से 1, 2 या 3 अंकों के टुकड़ों में बाँटकर हर टुकड़ा संख्या की तरह पढ़ेगा, जैसे 'दो सौ चौंतीस'। Group of 2, 3, 4, 5: टुकड़ों में बाँटकर हर अंक अलग-अलग पढ़ेगा, टुकड़ों के बीच रुककर, जैसे '2 3 4'। उदाहरण: 1234567890 को Hundreds में पढ़ने पर '1, 234, 567, 890' के हर टुकड़े संख्या की तरह पढ़े जाएँगे। Group of 3 में '1, 2 3 4, 5 6 7, 8 9 0' के हर अंक अलग पढ़े जाएँगे।";
    public static final String LONG_NUMBER_APPLIES = "ऊपर की सेटिंग कितने अंकों से लगे। 8 चुनने पर सिर्फ 8 या ज़्यादा अंकों की संख्या पर लगेगी, छोटी संख्या सामान्य पढ़ी जाएगी। 4 अंक अक्सर साल होते हैं, इसलिए चुनाव 5 से शुरू होता है।";
    public static final String MOBILE = "मोबाइल नंबर किन टुकड़ों में पढ़ा जाए, इसका चुनाव। हर अंक अलग-अलग पढ़ा जाएगा और टुकड़ों के बीच रुकेगा। विकल्पों के नाम में दिखे टुकड़े ही असल में बनेंगे। उदाहरण: +91 98765 43210 को 5-5 वाले विकल्प में '9 1, 9 8 7 6 5, 4 3 2 1 0' पढ़ा जाएगा।";
    public static final String MORE_VOICES = "इस बटन से अतिरिक्त Vocalizer आवाज़ें एक फोल्डर से जोड़ी जाती हैं। हर चरण पर बटन का नाम बदल जाता है और बताता है कि अगला काम क्या है।";
    public static final String NUMBERS_BTN = "संख्याएँ, मोबाइल नंबर और OTP कैसे पढ़े जाएँ।";
    public static final String OTHER_BTN = "Dictionary, लॉग और बाकी सेटिंग।";
    public static final String OTP = "संदेश में OTP मिले तो उसे अंक-अंक करके रुक-रुककर पढ़ेगा। OTP पढ़ने के बाद 40 सेकंड तक आप फोन को शेक करेंगे, तो हर शेक पर वह OTP फिर से सुनाएगा। नया OTP आते ही 40 सेकंड फिर से शुरू हो जाते हैं।";
    public static final String OTP_AFTER = "OTP आने के कितने सेकंड बाद clipboard में कॉपी हो। देर रखने से 'Copied' की घोषणा संदेश पढ़ते समय बीच में नहीं आती।";
    public static final String OTP_CLIPBOARD = "चुने हुए सेकंड के बाद OTP अपने आप clipboard में कॉपी हो जाएगा, ताकि आप उसे OTP भरने की जगह पर आराम से paste कर सकें।";
    public static final String PERAPP_ADD_NOPERM = "पहली बार Usage Access की अनुमति देनी होगी, ताकि ऐप जान सके कि स्क्रीन पर कौन सी ऐप खुली है। यह अनुमति App info की Permissions सूची में नहीं आती। यह फोन की Settings में Special app access के अंदर Usage access में मिलती है। अगर वहाँ स्विच ऑन न हो और फोन restricted setting का संदेश दिखाए, तो Settings में Apps में All In One TTS खोलकर App info में जाइए। ऊपर दाएँ कोने में More options (तीन बिंदु) दबाकर Allow restricted settings चुनिए, फिर अनुमति दोबारा दीजिए।";
    public static final String PERAPP_ADD_NOPERM_EN = "First tap: grant Usage Access permission (needed to tell which app is on screen)";
    public static final String PERAPP_ADD_OK = "जिस ऐप के लिए अलग आवाज़ चाहिए, उसे जोड़िए। जोड़ी हुई ऐप को हटाने के लिए उसके नाम को देर तक दबाइए (long press)।";
    public static final String PERAPP_PICK = "जिस ऐप के लिए अलग आवाज़ चाहिए, उसे चुनिए।";
    public static final String PER_APP = "अलग-अलग ऐप के लिए अलग आवाज़ चुनिए, जैसे WhatsApp की अलग और YouTube की अलग। इसके लिए Usage Access की अनुमति चाहिए।";
    public static final String PUNCTUATION = "@ # % और ब्रैकेट जैसे चिह्न कितने बोले जाएँ। Engine decides: कोई प्रोसेसिंग नहीं, आवाज़ खुद तय करती है क्या बोलना है। None: कोई चिह्न नहीं बोला जाएगा, सिर्फ % @ & + ° शब्दों में पढ़े जाएँगे और रुकावट बनी रहेगी। Some: थोड़े, Most: ज़्यादातर, All: सब।";
    public static final String QUICK_START = "लंबे संदेश का पहला वाक्य तुरंत बोलना शुरू करता है, बाकी हिस्से की भाषा पीछे से पहचानी जाती है।";
    public static final String QUICK_START_EN = "Starts speaking right away instead of waiting for the whole message";
    public static final String SETTINGS_EXPORT = "ऐप की सेटिंग फाइल में सेव करता है। इसमें डिक्शनरी और ऐप-वार आवाज़ें शामिल नहीं होतीं।";
    public static final String SETTINGS_IMPORT = "सेव की हुई सेटिंग वापस लाता है।";
    public static final String SLIDER_INTRO = "इस आवाज़ का वॉल्यूम, रफ़्तार और पिच। Play Sample से सुनकर जाँचिए। -1% और +1% बटन से बारीक बदलाव कीजिए।";
    public static final String VOICES = "हर भाषा के लिए अपनी पसंद की आवाज़ चुनिए।";
    public static final String VOLUME_RATE_PITCH = "आवाज़ की तेज़ी, रफ़्तार और पिच यहाँ बदली जा सकती है। इन्हें तभी बदलिए जब ज़रूरत हो। आम तौर पर वॉल्यूम फोन की सिस्टम वॉल्यूम से रखिए, और रफ़्तार व पिच TalkBack या Jieshuo की अपनी सेटिंग से। यहाँ की सेटिंग उनकी सेटिंग के साथ मिलकर असर करती है, इसलिए यहाँ बदलाव तभी करें जब दो भाषाओं की आवाज़ों में आपस में फर्क लगे।";
    public static final String WHATS_NEW_BTN = "2.0 में नया क्या है, यह दोबारा देखने के लिए, और विवरण की भाषा बदलने के लिए।";
    public static final String WHATS_NEW_BTN_EN = "Shows what is new in version 2.0 again, and lets you choose the language of the descriptions: Off, Hindi, Bengali, Urdu or Arabic.";
    public static final String WHOLE_MESSAGE = "पूरा संदेश एक ही आवाज़ में पढ़ेगा। जिस भाषा के सबसे ज़्यादा शब्द हों, उसी की आवाज़ लगेगी।";
    public static final Desc INSTANCE = new Desc();
    private static final List<String> LANGS = CollectionsKt.listOf((Object[]) new String[]{DebugKt.DEBUG_PROPERTY_VALUE_OFF, "hi", "bn", "ur", "ar"});

    private Desc() {
    }

    public final List<String> getLANGS() {
        return LANGS;
    }

    public final String lang() {
        return Prefs.INSTANCE.descLanguage();
    }

    public final boolean on() {
        return !Intrinsics.areEqual(lang(), DebugKt.DEBUG_PROPERTY_VALUE_OFF);
    }

    public static /* synthetic */ String pick$default(Desc desc, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return desc.pick(str, str2);
    }

    public final String pick(String hi, String en) {
        String strLang = lang();
        if (Intrinsics.areEqual(strLang, DebugKt.DEBUG_PROPERTY_VALUE_OFF) || (!Intrinsics.areEqual(strLang, "hi") && (hi == null || (hi = DescTr.INSTANCE.translate(hi, strLang)) == null))) {
            hi = en;
        }
        if (hi == null || StringsKt.isBlank(hi)) {
            return null;
        }
        return hi;
    }

    public static /* synthetic */ String withDesc$default(Desc desc, String str, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = null;
        }
        return desc.withDesc(str, str2, str3);
    }

    public final String withDesc(String title, String hi, String en) {
        Intrinsics.checkNotNullParameter(title, "title");
        String strPick = pick(hi, en);
        return strPick == null ? title : title + "\n" + strPick;
    }

    public final void describeButton(Button b, String hi) {
        Intrinsics.checkNotNullParameter(b, "b");
        String str = null;
        String strPick$default = pick$default(this, hi, null, 2, null);
        if (strPick$default != null) {
            str = ((Object) b.getText()) + ". " + strPick$default;
        }
        b.setContentDescription(str);
    }
}
