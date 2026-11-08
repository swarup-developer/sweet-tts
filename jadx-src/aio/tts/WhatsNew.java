package aio.tts;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: WhatsNew.kt */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001%B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00060\u00182\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0010\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0006H\u0002J1\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u00110 ¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(#\u0012\u0004\u0012\u00020$0\u001fR\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Laio/tts/WhatsNew;", "", "<init>", "()V", "NAMES", "", "", "[Ljava/lang/String;", "nameOf", "lang", "EN", "Laio/tts/WhatsNew$Text;", "HI", "BN", "UR", "AR", "EN2", "HI2", "BN2", "UR2", "AR2", "plusPoint", "titleOf", "pointsFor", "", "textFor", "show", "Landroid/app/AlertDialog;", "activity", "Landroid/app/Activity;", "onDismiss", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "languageChanged", "", "Text", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WhatsNew {
    public static final WhatsNew INSTANCE = new WhatsNew();
    private static final String[] NAMES = {"English", "Hindi - हिन्दी", "Bengali - বাংলা", "Urdu - اردو", "Arabic - العربية"};
    private static final Text EN = new Text("What's new in All In One TTS 3.0", "Help language", CollectionsKt.listOf((Object[]) new String[]{"New Eloquence settings: 6 voices and Natural voice.", "Fixed: speech suddenly going silent.", "Fixed: frequent app crashes.", "Fixed: repeated \"comma\" being read out.", "Runs reliably in the background.", "Clearer symbols and English words (1.5× is read as 1.5 times).", "Lower battery consumption.", "Choice of punctuation level, and help in 4 languages."}), "Don't show this again", "OK");
    private static final Text HI = new Text("ऑल इन वन TTS 3.0 में नया क्या है", "मदद की भाषा (Help language)", CollectionsKt.listOf((Object[]) new String[]{"Eloquence की नई सेटिंग: 6 आवाज़ें और Natural voice।", "ठीक हुआ: आवाज़ का अचानक बंद हो जाना।", "ठीक हुआ: बार-बार ऐप का crash होना।", "ठीक हुआ: बार-बार \"comma\" बोलना।", "बैकग्राउंड में भरोसे से चलता रहता है।", "चिह्न और अंग्रेज़ी शब्द साफ़ पढ़े जाते हैं (1.5× को 1.5 times पढ़ा जाता है)।", "बैटरी की खपत कम।", "पंक्चुएशन लेवल का चुनाव, और 4 भाषाओं में मदद।"}), "यह दोबारा न दिखाएँ", "ठीक है");
    private static final Text BN = new Text("অল ইন ওয়ান TTS 3.0-তে নতুন কী", "সহায়তার ভাষা (Help language)", CollectionsKt.listOf((Object[]) new String[]{"Eloquence-এর নতুন সেটিং: 6টি ভয়েস ও Natural voice।", "ঠিক হয়েছে: হঠাৎ কথা বন্ধ হয়ে যাওয়া।", "ঠিক হয়েছে: বারবার অ্যাপ crash হওয়া।", "ঠিক হয়েছে: বারবার \"comma\" বলা।", "ব্যাকগ্রাউন্ডে নির্ভরযোগ্যভাবে চালু থাকে।", "চিহ্ন ও ইংরেজি শব্দ পরিষ্কার পড়া হয় (1.5× পড়া হয় 1.5 times)।", "ব্যাটারির খরচ কম।", "পাংচুয়েশন লেভেল বেছে নেওয়া যায়, আর 4টি ভাষায় সহায়তা।"}), "এটি আর দেখাবেন না", "ঠিক আছে");
    private static final Text UR = new Text("آل اِن ون TTS 3.0 میں نیا کیا ہے", "مدد کی زبان (Help language)", CollectionsKt.listOf((Object[]) new String[]{"Eloquence کی نئی سیٹنگ: 6 آوازیں اور Natural voice۔", "ٹھیک ہوا: آواز کا اچانک بند ہو جانا۔", "ٹھیک ہوا: بار بار ایپ کا crash ہونا۔", "ٹھیک ہوا: بار بار \"comma\" بولنا۔", "بیک گراؤنڈ میں قابلِ اعتماد طریقے سے چلتی رہتی ہے۔", "علامات اور انگریزی الفاظ صاف پڑھے جاتے ہیں (1.5× کو 1.5 times پڑھا جاتا ہے)۔", "بیٹری کا کم خرچ۔", "پنکچوایشن لیول کا انتخاب، اور 4 زبانوں میں مدد۔"}), "یہ دوبارہ نہ دکھائیں", "ٹھیک ہے");
    private static final Text AR = new Text("الجديد في All In One TTS 3.0", "لغة المساعدة (Help language)", CollectionsKt.listOf((Object[]) new String[]{"إعدادات جديدة لـ Eloquence: 6 أصوات و Natural voice.", "تم الإصلاح: توقف الصوت المفاجئ.", "تم الإصلاح: الأعطال المتكررة للتطبيق.", "تم الإصلاح: تكرار نطق \"comma\".", "يعمل بثبات في الخلفية.", "قراءة أوضح للرموز والكلمات الإنجليزية (يُقرأ 1.5× على أنه 1.5 times).", "استهلاك أقل للبطارية.", "اختيار مستوى علامات الترقيم، ومساعدة بأربع لغات."}), "لا تعرض هذا مرة أخرى", "حسناً");
    private static final Text EN2 = new Text("What's new in All In One TTS 2.0", "Help language", CollectionsKt.listOf((Object[]) new String[]{"Much lighter on the battery. The app now uses far less power while it reads.", "More reliable: fewer errors.", "Smaller app: about 77 MB instead of about 135 MB.", "More voices can be added: to keep the app small, Nathan, Daniel, Karen, Maged and Tarik are no longer built in. You can add them, or any other Vocalizer voice, from a folder. In Other Settings, the first button is More voices, with three steps.", "Backup and Restore: Import and Export are now called Backup Settings and Restore Settings, also in Dictionary.", "Help in more languages: the short descriptions under the buttons can be shown in Hindi, Bengali, Urdu or Arabic. Choose the language above, or later with the button What's new and help language in Other Settings.", "If a voice or Google TTS is missing or switched off, reading no longer gets stuck."}), "Don't show this again", "OK");
    private static final Text HI2 = new Text("ऑल इन वन TTS 2.0 में नया क्या है", "मदद की भाषा (Help language)", CollectionsKt.listOf((Object[]) new String[]{"बैटरी की खपत बहुत कम हुई है। पढ़ते समय ऐप अब बहुत कम बैटरी लेता है।", "ज़्यादा भरोसेमंद: गड़बड़ियाँ (errors) कम हुई हैं।", "ऐप छोटा हो गया है: लगभग 135 MB की जगह अब लगभग 77 MB।", "और आवाज़ें जोड़ने का विकल्प: ऐप छोटा रखने के लिए Nathan, Daniel, Karen, Maged और Tarik अब ऐप के अंदर नहीं हैं। इन्हें, या कोई भी और Vocalizer आवाज़, आप एक फोल्डर से जोड़ सकते हैं। Other Settings में सबसे ऊपर More voices बटन है, उसके तीन चरण हैं।", "Backup और Restore: Import और Export का नाम बदलकर Backup Settings और Restore Settings कर दिया है, डिक्शनरी में भी।", "मदद की ज़्यादा भाषाएँ: बटनों के नीचे के छोटे विवरण अब हिंदी, बंगला, उर्दू या अरबी में देखे जा सकते हैं। ऊपर से भाषा चुनिए, या बाद में Other Settings में What's new and help language बटन से।", "अगर कोई आवाज़ या Google TTS मौजूद न हो या बंद हो, तो पढ़ना अब अटकता नहीं।"}), "यह दोबारा न दिखाएँ", "ठीक है");
    private static final Text BN2 = new Text("অল ইন ওয়ান TTS 2.0-তে নতুন কী", "সহায়তার ভাষা (Help language)", CollectionsKt.listOf((Object[]) new String[]{"ব্যাটারির খরচ অনেক কমেছে। পড়ার সময় অ্যাপ এখন অনেক কম ব্যাটারি নেয়।", "আরও নির্ভরযোগ্য: ত্রুটি (errors) কমেছে।", "অ্যাপ ছোট হয়েছে: প্রায় 135 MB-এর জায়গায় এখন প্রায় 77 MB।", "আরও ভয়েস যোগ করার সুবিধা: অ্যাপ ছোট রাখতে Nathan, Daniel, Karen, Maged ও Tarik এখন অ্যাপের ভেতরে নেই। এগুলো, বা অন্য যেকোনো Vocalizer ভয়েস, আপনি একটি ফোল্ডার থেকে যোগ করতে পারেন। Other Settings-এর সবচেয়ে ওপরে More voices বোতাম আছে, তাতে তিনটি ধাপ।", "Backup ও Restore: Import ও Export-এর নাম বদলে Backup Settings ও Restore Settings করা হয়েছে, ডিকশনারিতেও।", "আরও ভাষায় সহায়তা: বোতামগুলোর নিচের ছোট বিবরণ এখন হিন্দি, বাংলা, উর্দু বা আরবিতে দেখা যায়। ওপর থেকে ভাষা বেছে নিন, অথবা পরে Other Settings-এর What's new and help language বোতাম থেকে।", "কোনো ভয়েস বা Google TTS না থাকলে বা বন্ধ থাকলে পড়া এখন আর আটকে যায় না।"}), "এটি আর দেখাবেন না", "ঠিক আছে");
    private static final Text UR2 = new Text("آل اِن ون TTS 2.0 میں نیا کیا ہے", "مدد کی زبان (Help language)", CollectionsKt.listOf((Object[]) new String[]{"بیٹری کا خرچ بہت کم ہو گیا ہے۔ پڑھتے وقت ایپ اب بہت کم بیٹری لیتی ہے۔", "زیادہ قابلِ اعتماد: غلطیاں (errors) کم ہو گئی ہیں۔", "ایپ چھوٹی ہو گئی ہے: تقریباً 135 MB کی جگہ اب تقریباً 77 MB۔", "مزید آوازیں شامل کرنے کی سہولت: ایپ کو چھوٹا رکھنے کے لیے Nathan، Daniel، Karen، Maged اور Tarik اب ایپ کے اندر نہیں ہیں۔ انہیں، یا کوئی بھی اور Vocalizer آواز، آپ ایک فولڈر سے شامل کر سکتے ہیں۔ Other Settings میں سب سے اوپر More voices بٹن ہے، اس کے تین مرحلے ہیں۔", "Backup اور Restore: Import اور Export کا نام بدل کر Backup Settings اور Restore Settings کر دیا گیا ہے، ڈکشنری میں بھی۔", "مدد کی مزید زبانیں: بٹنوں کے نیچے کی چھوٹی وضاحتیں اب ہندی، بنگلہ، اردو یا عربی میں دیکھی جا سکتی ہیں۔ اوپر سے زبان چنیں، یا بعد میں Other Settings میں What's new and help language بٹن سے۔", "اگر کوئی آواز یا Google TTS موجود نہ ہو یا بند ہو تو پڑھنا اب اٹکتا نہیں۔"}), "یہ دوبارہ نہ دکھائیں", "ٹھیک ہے");
    private static final Text AR2 = new Text("الجديد في All In One TTS 2.0", "لغة المساعدة (Help language)", CollectionsKt.listOf((Object[]) new String[]{"استهلاك البطارية أقل بكثير. يستهلك التطبيق الآن طاقة أقل بكثير أثناء القراءة.", "أكثر موثوقية: الأخطاء (errors) أقل.", "حجم التطبيق أصغر: حوالي 77 MB بدلاً من حوالي 135 MB.", "إمكانية إضافة أصوات أخرى: للحفاظ على صغر حجم التطبيق، لم تعد الأصوات Nathan وDaniel وKaren وMaged وTarik داخل التطبيق. يمكنك إضافتها، أو أي صوت Vocalizer آخر، من مجلد. في Other Settings يوجد في الأعلى زر More voices وله ثلاث خطوات.", "النسخ الاحتياطي والاستعادة: تغيّر اسما Import وExport إلى Backup Settings وRestore Settings، وكذلك في القاموس.", "لغات مساعدة أكثر: يمكن عرض الشروحات القصيرة تحت الأزرار بالهندية أو البنغالية أو الأردية أو العربية. اختر اللغة من الأعلى، أو لاحقاً من زر What's new and help language في Other Settings.", "إذا كان الصوت أو Google TTS غير موجود أو معطّلاً، فلم تعد القراءة تتجمد."}), "لا تعرض هذا مرة أخرى", "حسناً");

    private WhatsNew() {
    }

    public final String nameOf(String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        int iHashCode = lang.hashCode();
        return iHashCode != 3121 ? iHashCode != 3148 ? iHashCode != 3329 ? (iHashCode == 3741 && lang.equals("ur")) ? "Urdu" : "English" : !lang.equals("hi") ? "English" : "Hindi" : !lang.equals("bn") ? "English" : "Bengali" : !lang.equals("ar") ? "English" : "Arabic";
    }

    /* compiled from: WhatsNew.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\f\b\u0002\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\f¨\u0006\u0012"}, d2 = {"Laio/tts/WhatsNew$Text;", "", "title", "", "label", "points", "", "hide", "ok", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "getLabel", "getPoints", "()Ljava/util/List;", "getHide", "getOk", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    private static final class Text {
        private final String hide;
        private final String label;
        private final String ok;
        private final List<String> points;
        private final String title;

        public Text(String title, String label, List<String> points, String hide, String ok) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(label, "label");
            Intrinsics.checkNotNullParameter(points, "points");
            Intrinsics.checkNotNullParameter(hide, "hide");
            Intrinsics.checkNotNullParameter(ok, "ok");
            this.title = title;
            this.label = label;
            this.points = points;
            this.hide = hide;
            this.ok = ok;
        }

        public final String getHide() {
            return this.hide;
        }

        public final String getLabel() {
            return this.label;
        }

        public final String getOk() {
            return this.ok;
        }

        public final List<String> getPoints() {
            return this.points;
        }

        public final String getTitle() {
            return this.title;
        }
    }

    private final String plusPoint(String lang) {
        int iHashCode = lang.hashCode();
        return iHashCode != 3121 ? iHashCode != 3148 ? iHashCode != 3329 ? (iHashCode == 3741 && lang.equals("ur")) ? "Plus میں نیا: IBM Eloquence اور SpeechFlow کو آواز کے طور پر چنا جا سکتا ہے (English میں دونوں، Hindi اور Urdu میں SpeechFlow)۔ یہ ہر زبان کی فہرست میں سب سے آخر میں نظر آتے ہیں۔ ان کے لیے ان کی اپنی ایپس فون میں لگی ہونی چاہییں، نہ ہوں تو زبان کی عام آواز بولے گی۔ ان کے لیے آل اِن ون کی Dictionary اور Punctuation سیٹنگ نہیں لگتی، ان کی اپنی سیٹنگ کام کرتی ہے۔" : "New in Plus: IBM Eloquence and SpeechFlow can be chosen as voices (both for English, SpeechFlow for Hindi and Urdu). They are listed last in each language. Their own apps must be installed on the phone; if one is missing, the language's normal voice speaks. All In One's Dictionary and Punctuation settings are not used for them; their own settings apply." : !lang.equals("hi") ? "New in Plus: IBM Eloquence and SpeechFlow can be chosen as voices (both for English, SpeechFlow for Hindi and Urdu). They are listed last in each language. Their own apps must be installed on the phone; if one is missing, the language's normal voice speaks. All In One's Dictionary and Punctuation settings are not used for them; their own settings apply." : "Plus में नया: IBM Eloquence और SpeechFlow को आवाज़ की तरह चुना जा सकता है (English में दोनों, Hindi और Urdu में SpeechFlow)। ये हर भाषा की सूची में सबसे आख़िर में दिखते हैं। इनके लिए इनके अपने ऐप फोन में लगे होने चाहिए, न हों तो भाषा की सामान्य आवाज़ बोलेगी। इनके लिए ऑल इन वन की Dictionary और Punctuation सेटिंग नहीं लगती, इनकी अपनी सेटिंग काम करती है।" : !lang.equals("bn") ? "New in Plus: IBM Eloquence and SpeechFlow can be chosen as voices (both for English, SpeechFlow for Hindi and Urdu). They are listed last in each language. Their own apps must be installed on the phone; if one is missing, the language's normal voice speaks. All In One's Dictionary and Punctuation settings are not used for them; their own settings apply." : "Plus-এ নতুন: IBM Eloquence ও SpeechFlow ভয়েস হিসেবে বেছে নেওয়া যায় (English-এ দুটোই, Hindi ও Urdu-তে SpeechFlow)। প্রতিটি ভাষার তালিকায় এগুলো একদম শেষে থাকে। এগুলোর জন্য এদের নিজস্ব অ্যাপ ফোনে লাগানো থাকতে হবে, না থাকলে ভাষার সাধারণ ভয়েস পড়বে। এগুলোর জন্য অল ইন ওয়ানের Dictionary ও Punctuation সেটিং কাজ করে না, এদের নিজের সেটিং কাজ করে।" : !lang.equals("ar") ? "New in Plus: IBM Eloquence and SpeechFlow can be chosen as voices (both for English, SpeechFlow for Hindi and Urdu). They are listed last in each language. Their own apps must be installed on the phone; if one is missing, the language's normal voice speaks. All In One's Dictionary and Punctuation settings are not used for them; their own settings apply." : "الجديد في Plus: يمكن اختيار IBM Eloquence وSpeechFlow كأصوات (الاثنان للإنجليزية، وSpeechFlow للهندية والأردية). تظهر في آخر قائمة كل لغة. تحتاج إلى تثبيت تطبيقاتها الخاصة على الهاتف، وإن لم تكن موجودة يتحدث الصوت العادي للغة. لا تُطبَّق عليها إعدادات Dictionary وPunctuation الخاصة بـ All In One، بل إعداداتها هي.";
    }

    private final String titleOf(String lang) {
        String title = textFor(lang).getTitle();
        return Edition.INSTANCE.getPLUS() ? StringsKt.replace$default(title, "2.0", "2.0 Plus", false, 4, (Object) null) : title;
    }

    private final List<String> pointsFor(String lang) {
        return CollectionsKt.plus((Collection) (Edition.INSTANCE.getPLUS() ? CollectionsKt.listOf(plusPoint(lang)) : CollectionsKt.emptyList()), (Iterable) textFor(lang).getPoints());
    }

    private final Text textFor(String lang) {
        if (Edition.INSTANCE.getPLUS()) {
            int iHashCode = lang.hashCode();
            if (iHashCode != 3121) {
                if (iHashCode != 3148) {
                    if (iHashCode != 3329) {
                        if (iHashCode == 3741 && lang.equals("ur")) {
                            return UR2;
                        }
                    } else if (lang.equals("hi")) {
                        return HI2;
                    }
                } else if (lang.equals("bn")) {
                    return BN2;
                }
            } else if (lang.equals("ar")) {
                return AR2;
            }
            return EN2;
        }
        int iHashCode2 = lang.hashCode();
        if (iHashCode2 != 3121) {
            if (iHashCode2 != 3148) {
                if (iHashCode2 != 3329) {
                    if (iHashCode2 == 3741 && lang.equals("ur")) {
                        return UR;
                    }
                } else if (lang.equals("hi")) {
                    return HI;
                }
            } else if (lang.equals("bn")) {
                return BN;
            }
        } else if (lang.equals("ar")) {
            return AR;
        }
        return EN;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.String] */
    public final AlertDialog show(Activity activity, final Function1<? super Boolean, Unit> onDismiss) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = Prefs.INSTANCE.descLanguage();
        Activity activity2 = activity;
        LinearLayout linearLayout = new LinearLayout(activity2);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(48, 16, 48, 16);
        final TextView textView = new TextView(activity2);
        textView.setTextSize(18.0f);
        Spinner spinner = new Spinner(activity2);
        spinner.setAdapter((SpinnerAdapter) new ArrayAdapter(activity2, android.R.layout.simple_spinner_dropdown_item, NAMES));
        spinner.setSelection(RangesKt.coerceAtLeast(Desc.INSTANCE.getLANGS().indexOf(objectRef.element), 0), false);
        List<String> listPointsFor = pointsFor("en");
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listPointsFor, 10));
        for (String str : listPointsFor) {
            TextView textView2 = new TextView(activity2);
            textView2.setTextSize(18.0f);
            textView2.setPadding(0, 16, 0, 0);
            arrayList.add(textView2);
        }
        final ArrayList arrayList2 = arrayList;
        final CheckBox checkBox = new CheckBox(activity2);
        checkBox.setTextSize(18.0f);
        checkBox.setChecked(Prefs.INSTANCE.whatsNewHidden());
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: aio.tts.WhatsNew$$ExternalSyntheticLambda0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                WhatsNew.show$lambda$7$lambda$6(compoundButton, z);
            }
        });
        linearLayout.addView(textView);
        linearLayout.addView(spinner);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            linearLayout.addView((TextView) it.next());
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = 24;
        Unit unit = Unit.INSTANCE;
        linearLayout.addView(checkBox, layoutParams);
        ScrollView scrollView = new ScrollView(activity2);
        scrollView.addView(linearLayout);
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(activity2).setTitle(titleOf((String) objectRef.element)).setView(scrollView).setPositiveButton(textFor((String) objectRef.element).getOk(), (DialogInterface.OnClickListener) null).create();
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: aio.tts.WhatsNew.show.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v4, types: [T, java.lang.Object, java.lang.String] */
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                ?? r1 = (String) CollectionsKt.getOrNull(Desc.INSTANCE.getLANGS(), position);
                if (r1 == 0 || Intrinsics.areEqual((Object) r1, objectRef.element)) {
                    return;
                }
                objectRef.element = r1;
                booleanRef.element = true;
                Prefs.INSTANCE.setDescLanguage(r1);
                WhatsNew.show$render(alertDialogCreate, textView, checkBox, arrayList2, r1);
            }
        });
        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: aio.tts.WhatsNew$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                onDismiss.invoke(Boolean.valueOf(booleanRef.element));
            }
        });
        alertDialogCreate.show();
        show$render(alertDialogCreate, textView, checkBox, arrayList2, (String) objectRef.element);
        Intrinsics.checkNotNull(alertDialogCreate);
        return alertDialogCreate;
    }

    static final void show$lambda$7$lambda$6(CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        Prefs.INSTANCE.setWhatsNewHidden(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$render(AlertDialog alertDialog, TextView textView, CheckBox checkBox, List<? extends TextView> list, String str) {
        WhatsNew whatsNew = INSTANCE;
        Text textTextFor = whatsNew.textFor(str);
        boolean z = Intrinsics.areEqual(str, "ur") || Intrinsics.areEqual(str, "ar");
        int i = z ? 5 : 3;
        alertDialog.setTitle(whatsNew.titleOf(str));
        textView.setText(textTextFor.getLabel());
        textView.setGravity(i);
        int i2 = 0;
        for (Object obj : whatsNew.pointsFor(str)) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            list.get(i2).setText((String) obj);
            list.get(i2).setGravity(i);
            list.get(i2).setTextDirection(z ? 4 : 3);
            i2 = i3;
        }
        checkBox.setText(textTextFor.getHide());
        Button button = alertDialog.getButton(-1);
        if (button != null) {
            button.setText(textTextFor.getOk());
            button.setAllCaps(false);
        }
    }
}
