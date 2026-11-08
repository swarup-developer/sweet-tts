package aio.tts;

import java.lang.Character;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import kotlin.text.Typography;

/* compiled from: PunctuationReader.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0017\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002-.B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\fH\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0002J\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001b\u001a\u00020\u00052\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u0002J*\u0010\u001d\u001a\u00020\u00052\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00162\u0006\u0010\u001f\u001a\u00020\u0005H\u0002J\u0018\u0010\u001d\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u0005H\u0002J \u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00052\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005J\u001a\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u0002J/\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00052\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u0000¢\u0006\u0002\b&J\u0010\u0010'\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\fH\u0002J\u0010\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u0018H\u0002J\u0015\u0010*\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0005H\u0000¢\u0006\u0002\b+J*\u0010,\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00052\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u000f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R \u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0016X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Laio/tts/PunctuationReader;", "", "<init>", "()V", "RAW", "", "NONE", "SOME", "MOST", "ALL", "table", "", "", "Laio/tts/PunctuationReader$Sym;", "keepAtNone", "Laio/tts/PunctuationReader$Keep;", "NONE_DROP", "isWordChar", "", "c", "PAUSE_MARKS", "DOT_NAME", "Lkotlin/Triple;", "rank", "", "level", "nameLanguage", "lang", "resolvedVoice", "pick", "names", "nl", "s", "rewrite", "text", "stripForNone", "rewriteAt", "levelName", "rewriteAt$app", "isComma", "isCjk", "cp", "tidyCommas", "tidyCommas$app", "rewriteNamed", "Sym", "Keep", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PunctuationReader {
    public static final String ALL = "all";
    private static final Triple<String, String, String> DOT_NAME;
    public static final PunctuationReader INSTANCE = new PunctuationReader();
    public static final String MOST = "most";
    public static final String NONE = "none";
    private static final String NONE_DROP = "()[]{}\"“”`*#_^~|\\/<>=©®™§¶•";
    private static final String PAUSE_MARKS = "()[]{}\"“”;:";
    public static final String RAW = "raw";
    public static final String SOME = "some";
    private static final Map<Character, Keep> keepAtNone;
    private static final Map<Character, Sym> table;

    /* compiled from: PunctuationReader.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Character.UnicodeScript.values().length];
            try {
                iArr[Character.UnicodeScript.HAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Character.UnicodeScript.HIRAGANA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Character.UnicodeScript.KATAKANA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Character.UnicodeScript.HANGUL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Character.UnicodeScript.BOPOMOFO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final boolean isComma(char c) {
        return c == ',' || c == 1548;
    }

    private PunctuationReader() {
    }

    /* compiled from: PunctuationReader.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\r¨\u0006\u0010"}, d2 = {"Laio/tts/PunctuationReader$Sym;", "", "level", "", "en", "", "hi", "ur", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getLevel", "()I", "getEn", "()Ljava/lang/String;", "getHi", "getUr", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    private static final class Sym {
        private final String en;
        private final String hi;
        private final int level;
        private final String ur;

        public Sym(int i, String en, String hi, String ur) {
            Intrinsics.checkNotNullParameter(en, "en");
            Intrinsics.checkNotNullParameter(hi, "hi");
            Intrinsics.checkNotNullParameter(ur, "ur");
            this.level = i;
            this.en = en;
            this.hi = hi;
            this.ur = ur;
        }

        public final String getEn() {
            return this.en;
        }

        public final String getHi() {
            return this.hi;
        }

        public final int getLevel() {
            return this.level;
        }

        public final String getUr() {
            return this.ur;
        }
    }

    static {
        Character chValueOf = Character.valueOf(Typography.amp);
        table = MapsKt.mapOf(TuplesKt.to('@', new Sym(1, "at", "एट द रेट", "ایٹ")), TuplesKt.to('#', new Sym(1, "hash", "हैश", "ہیش")), TuplesKt.to('%', new Sym(1, "percent", "प्रतिशत", "فیصد")), TuplesKt.to(chValueOf, new Sym(1, "and", "एंड", "اینڈ")), TuplesKt.to('*', new Sym(1, "star", "स्टार", "اسٹار")), TuplesKt.to('+', new Sym(1, "plus", "प्लस", "پلس")), TuplesKt.to('=', new Sym(1, "equals", "बराबर", "برابر")), TuplesKt.to('/', new Sym(1, "slash", "स्लैश", "سلیش")), TuplesKt.to('\\', new Sym(1, "backslash", "बैकस्लैश", "بیک سلیش")), TuplesKt.to(Character.valueOf(Typography.less), new Sym(1, "less than", "छोटा चिह्न", "چھوٹا نشان")), TuplesKt.to(Character.valueOf(Typography.greater), new Sym(1, "greater than", "बड़ा चिह्न", "بڑا نشان")), TuplesKt.to('_', new Sym(1, "underscore", "अंडरस्कोर", "انڈر اسکور")), TuplesKt.to('^', new Sym(1, "caret", "कैरेट", "کیرٹ")), TuplesKt.to('~', new Sym(1, "tilde", "टिल्डे", "ٹِلڈے")), TuplesKt.to('|', new Sym(1, "bar", "पाइप", "پائپ")), TuplesKt.to('(', new Sym(2, "open bracket", "ब्रैकेट खुला", "بریکٹ کھلا")), TuplesKt.to(')', new Sym(2, "close bracket", "ब्रैकेट बंद", "بریکٹ بند")), TuplesKt.to('[', new Sym(2, "open square bracket", "स्क्वायर ब्रैकेट खुला", "بریکٹ کھلا")), TuplesKt.to(']', new Sym(2, "close square bracket", "स्क्वायर ब्रैकेट बंद", "بریکٹ بند")), TuplesKt.to('{', new Sym(2, "open brace", "कर्ली ब्रैकेट खुला", "بریکٹ کھلا")), TuplesKt.to('}', new Sym(2, "close brace", "कर्ली ब्रैकेट बंद", "بریکٹ بند")), TuplesKt.to(Character.valueOf(Typography.quote), new Sym(2, "quote", "कोट", "اقتباس")), TuplesKt.to(Character.valueOf(Typography.leftDoubleQuote), new Sym(2, "open quote", "कोट खुला", "اقتباس")), TuplesKt.to(Character.valueOf(Typography.rightDoubleQuote), new Sym(2, "close quote", "कोट बंद", "اقتباس")), TuplesKt.to('`', new Sym(2, "backtick", "बैकटिक", "بیک ٹک")), TuplesKt.to(';', new Sym(2, "semicolon", "सेमीकोलन", "سیمی کولن")), TuplesKt.to(':', new Sym(2, "colon", "कोलन", "کولن")), TuplesKt.to(Character.valueOf(Typography.copyright), new Sym(2, "copyright", "कॉपीराइट", "کاپی رائٹ")), TuplesKt.to(Character.valueOf(Typography.registered), new Sym(2, "registered", "रजिस्टर्ड", "رجسٹرڈ")), TuplesKt.to(Character.valueOf(Typography.tm), new Sym(2, "trademark", "ट्रेडमार्क", "ٹریڈ مارک")), TuplesKt.to(Character.valueOf(Typography.degree), new Sym(2, "degrees", "डिग्री", "ڈگری")), TuplesKt.to(Character.valueOf(Typography.section), new Sym(2, "section", "सेक्शन", "سیکشن")), TuplesKt.to(Character.valueOf(Typography.paragraph), new Sym(2, "paragraph", "पैराग्राफ", "پیراگراف")), TuplesKt.to(Character.valueOf(Typography.bullet), new Sym(2, "bullet", "बुलेट", "بلٹ")), TuplesKt.to('.', new Sym(3, "period", "पूर्ण विराम", "ختم")), TuplesKt.to(',', new Sym(3, "comma", "कॉमा", "کاما")), TuplesKt.to((char) 1548, new Sym(3, "comma", "कॉमा", "کاما")), TuplesKt.to('!', new Sym(3, "exclamation mark", "विस्मयादिबोधक चिह्न", "فجائیہ نشان")), TuplesKt.to('?', new Sym(3, "question mark", "प्रश्न चिह्न", "سوالیہ نشان")), TuplesKt.to((char) 1567, new Sym(3, "question mark", "प्रश्न चिह्न", "سوالیہ نشان")), TuplesKt.to('-', new Sym(3, "dash", "डैश", "ڈیش")), TuplesKt.to(Character.valueOf(Typography.ndash), new Sym(3, "dash", "डैश", "ڈیش")), TuplesKt.to(Character.valueOf(Typography.mdash), new Sym(3, "dash", "डैश", "ڈیش")), TuplesKt.to(Character.valueOf(Typography.ellipsis), new Sym(3, "ellipsis", "तीन बिंदु", "تین نقطے")), TuplesKt.to((char) 2404, new Sym(3, "full stop", "पूर्ण विराम", "ختم")), TuplesKt.to((char) 2405, new Sym(3, "double full stop", "दोहरा पूर्ण विराम", "ختم")), TuplesKt.to((char) 1748, new Sym(3, "full stop", "पूर्ण विराम", "ختم")));
        keepAtNone = MapsKt.mapOf(TuplesKt.to('%', new Keep("percent", "प्रतिशत", "فیصد")), TuplesKt.to('@', new Keep("at", "एट", "ایٹ")), TuplesKt.to(chValueOf, new Keep("and", "एंड", "اینڈ")), TuplesKt.to('+', new Keep("plus", "प्लस", "پلس")), TuplesKt.to(Character.valueOf(Typography.degree), new Keep("degrees", "डिग्री", "ڈگری")));
        DOT_NAME = new Triple<>("dot", "डॉट", "ڈاٹ");
    }

    /* compiled from: PunctuationReader.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\f"}, d2 = {"Laio/tts/PunctuationReader$Keep;", "", "en", "", "hi", "ur", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getEn", "()Ljava/lang/String;", "getHi", "getUr", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    private static final class Keep {
        private final String en;
        private final String hi;
        private final String ur;

        public Keep(String en, String hi, String ur) {
            Intrinsics.checkNotNullParameter(en, "en");
            Intrinsics.checkNotNullParameter(hi, "hi");
            Intrinsics.checkNotNullParameter(ur, "ur");
            this.en = en;
            this.hi = hi;
            this.ur = ur;
        }

        public final String getEn() {
            return this.en;
        }

        public final String getHi() {
            return this.hi;
        }

        public final String getUr() {
            return this.ur;
        }
    }

    private final boolean isWordChar(char c) {
        int type;
        return Character.isLetter(c) || (type = Character.getType(c)) == 6 || type == 8;
    }

    private final int rank(String level) {
        int iHashCode = level.hashCode();
        return iHashCode != 96673 ? iHashCode != 3357571 ? (iHashCode == 3536116 && level.equals(SOME)) ? 1 : 0 : !level.equals(MOST) ? 0 : 2 : !level.equals(ALL) ? 0 : 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0084 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String nameLanguage(java.lang.String r1, java.lang.String r2) {
        /*
            r0 = this;
            java.lang.String r0 = "emoji"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r0)
            if (r0 != 0) goto L10
            java.lang.String r0 = "number"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r0)
            if (r0 == 0) goto L16
        L10:
            aio.tts.EmojiDictionary r0 = aio.tts.EmojiDictionary.INSTANCE
            java.lang.String r1 = r0.dictionaryLanguageFor$app(r1, r2)
        L16:
            int r0 = r1.hashCode()
            java.lang.String r2 = "hi"
            switch(r0) {
                case 3241: goto L85;
                case 3329: goto L7d;
                case 3432: goto L74;
                case 3493: goto L6b;
                case 3511: goto L62;
                case 3662: goto L59;
                case 3741: goto L4f;
                case 97513: goto L46;
                case 97832: goto L3d;
                case 99646: goto L34;
                case 106375: goto L2b;
                case 107861: goto L21;
                default: goto L1f;
            }
        L1f:
            goto L8f
        L21:
            java.lang.String r0 = "mai"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L84
            goto L8f
        L2b:
            java.lang.String r0 = "kok"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L84
            goto L8f
        L34:
            java.lang.String r0 = "doi"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L84
            goto L8f
        L3d:
            java.lang.String r0 = "brx"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L84
            goto L8f
        L46:
            java.lang.String r0 = "bho"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L84
            goto L8f
        L4f:
            java.lang.String r0 = "ur"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            goto L8f
        L58:
            return r0
        L59:
            java.lang.String r0 = "sa"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L84
            goto L8f
        L62:
            java.lang.String r0 = "ne"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L84
            goto L8f
        L6b:
            java.lang.String r0 = "mr"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L84
            goto L8f
        L74:
            java.lang.String r0 = "ks"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L84
            goto L8f
        L7d:
            boolean r0 = r1.equals(r2)
            if (r0 != 0) goto L84
            goto L8f
        L84:
            return r2
        L85:
            java.lang.String r0 = "en"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L8e
            goto L8f
        L8e:
            return r0
        L8f:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.PunctuationReader.nameLanguage(java.lang.String, java.lang.String):java.lang.String");
    }

    private final String pick(Triple<String, String, String> names, String nl) {
        return Intrinsics.areEqual(nl, "hi") ? names.getSecond() : Intrinsics.areEqual(nl, "ur") ? names.getThird() : names.getFirst();
    }

    private final String pick(Sym s, String nl) {
        return Intrinsics.areEqual(nl, "hi") ? s.getHi() : Intrinsics.areEqual(nl, "ur") ? s.getUr() : s.getEn();
    }

    public final String rewrite(String text, String lang, String resolvedVoice) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(lang, "lang");
        return rewriteAt$app(Prefs.INSTANCE.punctuationLevel(), text, lang, resolvedVoice);
    }

    private final String stripForNone(String text, String nl) {
        int i;
        StringBuilder sb = new StringBuilder(text.length() + 16);
        int length = text.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = text.charAt(i2);
            Keep keep = keepAtNone.get(Character.valueOf(cCharAt));
            if (keep != null) {
                if (nl != null) {
                    sb.append(' ').append(Intrinsics.areEqual(nl, "hi") ? keep.getHi() : Intrinsics.areEqual(nl, "ur") ? keep.getUr() : keep.getEn()).append(' ');
                } else {
                    sb.append(cCharAt);
                }
            } else if (StringsKt.contains$default((CharSequence) NONE_DROP, cCharAt, false, 2, (Object) null)) {
                sb.append(' ');
            } else if (cCharAt == '-' && i2 > 0 && (i = i2 + 1) < text.length() && isWordChar(text.charAt(i2 - 1)) && isWordChar(text.charAt(i))) {
                sb.append(' ');
            } else if (cCharAt == 2404 || cCharAt == 2405 || cCharAt == 1748) {
                sb.append('.');
            } else if (cCharAt == 1567) {
                sb.append('?');
            } else if (cCharAt == 1548) {
                sb.append(',');
            } else if (cCharAt == 8230) {
                sb.append(',');
            } else {
                sb.append(cCharAt);
            }
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public final String rewriteAt$app(String levelName, String text, String lang, String resolvedVoice) {
        Intrinsics.checkNotNullParameter(levelName, "levelName");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(lang, "lang");
        if (Intrinsics.areEqual(levelName, RAW) || text.length() == 0) {
            return text;
        }
        if (Intrinsics.areEqual(levelName, NONE)) {
            return tidyCommas$app(stripForNone(text, nameLanguage(lang, resolvedVoice)));
        }
        int iRank = rank(levelName);
        if (iRank != 0) {
            if (iRank < 3) {
                return tidyCommas$app(rewriteNamed(iRank, text, lang, resolvedVoice));
            }
            return rewriteNamed(iRank, text, lang, resolvedVoice);
        }
        return text;
    }

    private final boolean isCjk(int cp) {
        Character.UnicodeScript unicodeScriptOf = Character.UnicodeScript.of(cp);
        int i = unicodeScriptOf == null ? -1 : WhenMappings.$EnumSwitchMapping$0[unicodeScriptOf.ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4 || i == 5;
    }

    public final String tidyCommas$app(String text) {
        StringBuilder sb;
        Intrinsics.checkNotNullParameter(text, "text");
        String str = text;
        for (int i = 0; i < str.length(); i++) {
            if (INSTANCE.isComma(str.charAt(i))) {
                for (int i2 = 0; i2 < str.length(); i2++) {
                    if (Character.isLetterOrDigit(str.charAt(i2))) {
                        StringBuilder sb2 = new StringBuilder(text.length() + 4);
                        int length = str.length();
                        for (int i3 = 0; i3 < length; i3++) {
                            char cCharAt = text.charAt(i3);
                            if (isComma(cCharAt)) {
                                int i4 = i3 + 1;
                                char cCharAt2 = i4 < text.length() ? text.charAt(i4) : ' ';
                                if (i3 > 0 && Character.isDigit(text.charAt(i3 - 1)) && Character.isDigit(cCharAt2)) {
                                    sb2.append(cCharAt);
                                } else {
                                    while (true) {
                                        sb = sb2;
                                        if (sb.length() <= 0 || !CharsKt.isWhitespace(StringsKt.last(sb))) {
                                            break;
                                        }
                                        sb2.setLength(sb2.length() - 1);
                                    }
                                    if (sb.length() > 0 && !isComma(StringsKt.last(sb)) && !isCjk(Character.codePointBefore(sb, sb2.length()))) {
                                        sb2.append(cCharAt);
                                        if (Character.isLetterOrDigit(cCharAt2)) {
                                            sb2.append(' ');
                                        }
                                    } else if (sb.length() > 0 && !CharsKt.isWhitespace(cCharAt2)) {
                                        sb2.append(' ');
                                    }
                                }
                            } else {
                                sb2.append(cCharAt);
                            }
                        }
                        String string = sb2.toString();
                        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                        return string;
                    }
                }
                return text;
            }
        }
        return text;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String rewriteNamed(int r17, java.lang.String r18, java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.PunctuationReader.rewriteNamed(int, java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }
}
