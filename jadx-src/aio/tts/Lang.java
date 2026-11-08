package aio.tts;

import aio.tts.SharedScriptLid;
import androidx.core.text.util.LocalePreferences;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Lang.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0014\u0015B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0013\u001a\u00020\f¨\u0006\u0016"}, d2 = {"Laio/tts/Lang;", "", "<init>", "()V", "isEmoji", "", "cp", "", "scriptOf", "Laio/tts/Lang$Script;", "languageOn", "lang", "", "enabledOrEnglish", "mergeAdjacent", "", "Laio/tts/Lang$TextRun;", "runs", "segmentRuns", "text", "TextRun", "Script", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Lang {
    public static final Lang INSTANCE = new Lang();

    /* compiled from: Lang.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Script.values().length];
            try {
                iArr[Script.DEVANAGARI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Script.ARABIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Script.BENGALI.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Script.TAMIL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Script.TELUGU.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Script.GUJARATI.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Script.MALAYALAM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Script.KANNADA.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[Script.PUNJABI.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[Script.ODIA.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[Script.MEETEI.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[Script.OLCHIKI.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[Script.LATIN.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[Script.OTHER.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[Script.NUMBER.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[Script.EMOJI.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final boolean isEmoji(int cp) {
        if (127744 <= cp && cp < 128512) {
            return true;
        }
        if (128512 <= cp && cp < 128592) {
            return true;
        }
        if (128640 <= cp && cp < 128768) {
            return true;
        }
        if (129280 <= cp && cp < 129536) {
            return true;
        }
        if (129648 <= cp && cp < 129792) {
            return true;
        }
        if (9728 <= cp && cp < 9984) {
            return true;
        }
        if (9984 > cp || cp >= 10176) {
            return (127462 <= cp && cp < 127488) || cp == 65039 || cp == 8205;
        }
        return true;
    }

    private Lang() {
    }

    /* compiled from: Lang.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Laio/tts/Lang$TextRun;", "", "text", "", "lang", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getText", "()Ljava/lang/String;", "getLang", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class TextRun {
        private final String lang;
        private final String text;

        public static /* synthetic */ TextRun copy$default(TextRun textRun, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = textRun.text;
            }
            if ((i & 2) != 0) {
                str2 = textRun.lang;
            }
            return textRun.copy(str, str2);
        }

        /* renamed from: component1, reason: from getter */
        public final String getText() {
            return this.text;
        }

        /* renamed from: component2, reason: from getter */
        public final String getLang() {
            return this.lang;
        }

        public final TextRun copy(String text, String lang) {
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(lang, "lang");
            return new TextRun(text, lang);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TextRun)) {
                return false;
            }
            TextRun textRun = (TextRun) other;
            return Intrinsics.areEqual(this.text, textRun.text) && Intrinsics.areEqual(this.lang, textRun.lang);
        }

        public int hashCode() {
            return (this.text.hashCode() * 31) + this.lang.hashCode();
        }

        public String toString() {
            return "TextRun(text=" + this.text + ", lang=" + this.lang + ")";
        }

        public TextRun(String text, String lang) {
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(lang, "lang");
            this.text = text;
            this.lang = lang;
        }

        public final String getLang() {
            return this.lang;
        }

        public final String getText() {
            return this.text;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Lang.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0013\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Laio/tts/Lang$Script;", "", "<init>", "(Ljava/lang/String;I)V", "LATIN", "DEVANAGARI", "BENGALI", "TAMIL", "TELUGU", "GUJARATI", "MALAYALAM", "KANNADA", "PUNJABI", "ODIA", "MEETEI", "OLCHIKI", "ARABIC", "NUMBER", "EMOJI", "OTHER", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    private static final class Script {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Script[] $VALUES;
        public static final Script LATIN = new Script("LATIN", 0);
        public static final Script DEVANAGARI = new Script("DEVANAGARI", 1);
        public static final Script BENGALI = new Script("BENGALI", 2);
        public static final Script TAMIL = new Script("TAMIL", 3);
        public static final Script TELUGU = new Script("TELUGU", 4);
        public static final Script GUJARATI = new Script("GUJARATI", 5);
        public static final Script MALAYALAM = new Script("MALAYALAM", 6);
        public static final Script KANNADA = new Script("KANNADA", 7);
        public static final Script PUNJABI = new Script("PUNJABI", 8);
        public static final Script ODIA = new Script("ODIA", 9);
        public static final Script MEETEI = new Script("MEETEI", 10);
        public static final Script OLCHIKI = new Script("OLCHIKI", 11);
        public static final Script ARABIC = new Script("ARABIC", 12);
        public static final Script NUMBER = new Script("NUMBER", 13);
        public static final Script EMOJI = new Script("EMOJI", 14);
        public static final Script OTHER = new Script("OTHER", 15);

        private static final /* synthetic */ Script[] $values() {
            return new Script[]{LATIN, DEVANAGARI, BENGALI, TAMIL, TELUGU, GUJARATI, MALAYALAM, KANNADA, PUNJABI, ODIA, MEETEI, OLCHIKI, ARABIC, NUMBER, EMOJI, OTHER};
        }

        public static EnumEntries<Script> getEntries() {
            return $ENTRIES;
        }

        public static Script valueOf(String str) {
            return (Script) Enum.valueOf(Script.class, str);
        }

        public static Script[] values() {
            return (Script[]) $VALUES.clone();
        }

        private Script(String str, int i) {
        }

        static {
            Script[] scriptArr$values = $values();
            $VALUES = scriptArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(scriptArr$values);
        }
    }

    private final Script scriptOf(int cp) {
        if (cp == 2404 || cp == 2405) {
            return Script.OTHER;
        }
        if (isEmoji(cp)) {
            return Script.EMOJI;
        }
        if (cp == 57344) {
            return Script.NUMBER;
        }
        if (48 <= cp && cp < 58) {
            return Script.NUMBER;
        }
        if (2304 <= cp && cp < 2432) {
            return Script.DEVANAGARI;
        }
        if (2432 <= cp && cp < 2560) {
            return Script.BENGALI;
        }
        if (2944 <= cp && cp < 3072) {
            return Script.TAMIL;
        }
        if (3072 <= cp && cp < 3200) {
            return Script.TELUGU;
        }
        if (2688 <= cp && cp < 2816) {
            return Script.GUJARATI;
        }
        if (3328 <= cp && cp < 3456) {
            return Script.MALAYALAM;
        }
        if (3200 <= cp && cp < 3328) {
            return Script.KANNADA;
        }
        if (2560 <= cp && cp < 2688) {
            return Script.PUNJABI;
        }
        if (2816 <= cp && cp < 2944) {
            return Script.ODIA;
        }
        if (43968 <= cp && cp < 44032) {
            return Script.MEETEI;
        }
        if (7248 <= cp && cp < 7296) {
            return Script.OLCHIKI;
        }
        if ((1536 <= cp && cp < 1792) || ((1872 <= cp && cp < 1920) || ((64336 <= cp && cp < 65024) || (65136 <= cp && cp < 65280)))) {
            return Script.ARABIC;
        }
        if ((65 <= cp && cp < 91) || (97 <= cp && cp < 123)) {
            return Script.LATIN;
        }
        return Script.OTHER;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean languageOn(String lang) {
        List<Pair<String, String>> languages = VoiceCatalog.INSTANCE.getLANGUAGES();
        if ((languages instanceof Collection) && languages.isEmpty()) {
            return false;
        }
        Iterator<T> it = languages.iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(((Pair) it.next()).getFirst(), lang)) {
                return Prefs.INSTANCE.isLanguageEnabled(lang);
            }
        }
        return false;
    }

    private final String enabledOrEnglish(String lang) {
        List<Pair<String, String>> languages = VoiceCatalog.INSTANCE.getLANGUAGES();
        if ((languages instanceof Collection) && languages.isEmpty()) {
            return "en";
        }
        Iterator<T> it = languages.iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(((Pair) it.next()).getFirst(), lang)) {
                return Prefs.INSTANCE.isLanguageEnabled(lang) ? lang : "en";
            }
        }
        return "en";
    }

    private final List<TextRun> mergeAdjacent(List<TextRun> runs) {
        ArrayList arrayList = new ArrayList();
        for (TextRun textRun : runs) {
            TextRun textRun2 = (TextRun) CollectionsKt.lastOrNull((List) arrayList);
            if (textRun2 != null && Intrinsics.areEqual(textRun2.getLang(), textRun.getLang())) {
                arrayList.set(arrayList.size() - 1, new TextRun(textRun2.getText() + textRun.getText(), textRun2.getLang()));
            } else {
                arrayList.add(textRun);
            }
        }
        return arrayList;
    }

    public final List<TextRun> segmentRuns(String text) {
        boolean z;
        Map<Integer, List<SharedScriptLid.Piece>> mapEmptyMap;
        boolean z2;
        String lang;
        String lang2;
        Intrinsics.checkNotNullParameter(text, "text");
        if (text.length() == 0) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 : text.codePoints().toArray()) {
            Script scriptScriptOf = scriptOf(i2);
            RawRun rawRun = (RawRun) CollectionsKt.lastOrNull((List) arrayList);
            if (rawRun == null) {
                StringBuilder sbAppendCodePoint = new StringBuilder().appendCodePoint(i2);
                Intrinsics.checkNotNullExpressionValue(sbAppendCodePoint, "appendCodePoint(...)");
                Boolean.valueOf(arrayList.add(new RawRun(sbAppendCodePoint, scriptScriptOf)));
            } else if (scriptScriptOf == Script.OTHER || scriptScriptOf == rawRun.getScript()) {
                rawRun.getSb().appendCodePoint(i2);
            } else if (rawRun.getScript() != Script.OTHER) {
                StringBuilder sbAppendCodePoint2 = new StringBuilder().appendCodePoint(i2);
                Intrinsics.checkNotNullExpressionValue(sbAppendCodePoint2, "appendCodePoint(...)");
                Boolean.valueOf(arrayList.add(new RawRun(sbAppendCodePoint2, scriptScriptOf)));
            } else {
                rawRun.setScript(scriptScriptOf);
                rawRun.getSb().appendCodePoint(i2);
            }
        }
        ArrayList<RawRun> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((RawRun) it.next()).getSb().toString());
        }
        ArrayList arrayList4 = arrayList3;
        int size = arrayList.size();
        int[] iArr = new int[size];
        int i3 = 0;
        while (true) {
            int i4 = 3;
            z = true;
            if (i3 >= size) {
                break;
            }
            int i5 = WhenMappings.$EnumSwitchMapping$0[((RawRun) arrayList.get(i3)).getScript().ordinal()];
            if (i5 == 1) {
                i4 = 1;
            } else if (i5 == 2) {
                i4 = 2;
            } else if (i5 != 3) {
                i4 = 0;
            }
            iArr[i3] = i4;
            i3++;
        }
        long jNanoTime = System.nanoTime();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                mapEmptyMap = MapsKt.emptyMap();
                break;
            }
            if (iArr[i6] != 0) {
                mapEmptyMap = SharedScriptLid.INSTANCE.resolve(arrayList4, iArr, new Lang$segmentRuns$shared$2(this));
                break;
            }
            i6++;
        }
        if (!mapEmptyMap.isEmpty()) {
            LangPerf.INSTANCE.getLidCalls().incrementAndGet();
            LangPerf.INSTANCE.getLidNs().addAndGet(System.nanoTime() - jNanoTime);
        }
        ArrayList arrayList5 = new ArrayList();
        for (RawRun rawRun2 : arrayList2) {
            int i7 = i + 1;
            String str = (String) arrayList4.get(i);
            if (str.length() != 0) {
                List<SharedScriptLid.Piece> list = mapEmptyMap.get(Integer.valueOf(i));
                if (list != null) {
                    for (SharedScriptLid.Piece piece : list) {
                        if (DetailedLog.INSTANCE.getActive()) {
                            DetailedLog detailedLog = DetailedLog.INSTANCE;
                            String lowerCase = rawRun2.getScript().name().toLowerCase(Locale.ROOT);
                            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                            detailedLog.log("Lang", lowerCase + " " + piece.getNote() + " text=" + LogText.INSTANCE.of(piece.getText()));
                        }
                        arrayList5.add(new TextRun(piece.getText(), enabledOrEnglish(piece.getLang())));
                        z = true;
                    }
                    z2 = z;
                } else {
                    String str2 = "en";
                    switch (WhenMappings.$EnumSwitchMapping$0[rawRun2.getScript().ordinal()]) {
                        case 1:
                            z2 = true;
                            String strGroupDefault = SharedScriptLid.INSTANCE.groupDefault(1, new AnonymousClass3(this));
                            if (strGroupDefault == null) {
                                strGroupDefault = "hi";
                            }
                            arrayList5.add(new TextRun(str, enabledOrEnglish(strGroupDefault)));
                            continue;
                        case 2:
                            String strGroupDefault2 = SharedScriptLid.INSTANCE.groupDefault(2, new AnonymousClass2(this));
                            if (strGroupDefault2 == null) {
                                strGroupDefault2 = "ur";
                            }
                            arrayList5.add(new TextRun(str, enabledOrEnglish(strGroupDefault2)));
                            break;
                        case 3:
                            String strGroupDefault3 = SharedScriptLid.INSTANCE.groupDefault(3, new AnonymousClass1(this));
                            if (strGroupDefault3 == null) {
                                strGroupDefault3 = "bn";
                            }
                            arrayList5.add(new TextRun(str, enabledOrEnglish(strGroupDefault3)));
                            break;
                        case 4:
                            arrayList5.add(new TextRun(str, enabledOrEnglish("ta")));
                            break;
                        case 5:
                            arrayList5.add(new TextRun(str, enabledOrEnglish("te")));
                            break;
                        case 6:
                            arrayList5.add(new TextRun(str, enabledOrEnglish("gu")));
                            break;
                        case 7:
                            arrayList5.add(new TextRun(str, enabledOrEnglish("ml")));
                            break;
                        case 8:
                            arrayList5.add(new TextRun(str, enabledOrEnglish("kn")));
                            break;
                        case 9:
                            arrayList5.add(new TextRun(str, enabledOrEnglish("pa")));
                            break;
                        case 10:
                            arrayList5.add(new TextRun(str, enabledOrEnglish("or")));
                            break;
                        case 11:
                            arrayList5.add(new TextRun(str, enabledOrEnglish("mni")));
                            break;
                        case 12:
                            arrayList5.add(new TextRun(str, enabledOrEnglish(LocalePreferences.FirstDayOfWeek.SATURDAY)));
                            break;
                        case 13:
                        case 14:
                            arrayList5.add(new TextRun(str, enabledOrEnglish("en")));
                            break;
                        case 15:
                            if (Intrinsics.areEqual(Prefs.INSTANCE.numberVoice(), Prefs.MATCH_LANGUAGE)) {
                                TextRun textRun = (TextRun) CollectionsKt.lastOrNull((List) arrayList5);
                                if (textRun != null && (lang = textRun.getLang()) != null) {
                                    str2 = lang;
                                }
                            } else {
                                str2 = "number";
                            }
                            arrayList5.add(new TextRun(str, str2));
                            break;
                        case 16:
                            if (Intrinsics.areEqual(Prefs.INSTANCE.emojiVoice(), Prefs.MATCH_LANGUAGE)) {
                                TextRun textRun2 = (TextRun) CollectionsKt.lastOrNull((List) arrayList5);
                                if (textRun2 != null && (lang2 = textRun2.getLang()) != null) {
                                    str2 = lang2;
                                }
                            } else {
                                str2 = "emoji";
                            }
                            arrayList5.add(new TextRun(str, str2));
                            break;
                        default:
                            throw new NoWhenBranchMatchedException();
                    }
                    z2 = true;
                }
            } else {
                z2 = z;
            }
            i = i7;
            z = z2;
        }
        return mergeAdjacent(arrayList5);
    }

    /* compiled from: Lang.kt */
    @Metadata(d1 = {"\u00001\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\u008a\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\u000f\u001a\u00060\u0003j\u0002`\u0004HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J&\u0010\u0011\u001a\u00020\u00002\f\b\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"aio/tts/Lang$segmentRuns$RawRun", "", "sb", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "script", "Laio/tts/Lang$Script;", "<init>", "(Ljava/lang/StringBuilder;Laio/tts/Lang$Script;)V", "getSb", "()Ljava/lang/StringBuilder;", "getScript", "()Laio/tts/Lang$Script;", "setScript", "(Laio/tts/Lang$Script;)V", "component1", "component2", "copy", "(Ljava/lang/StringBuilder;Laio/tts/Lang$Script;)Laio/tts/Lang$segmentRuns$RawRun;", "equals", "", "other", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class RawRun {
        private final StringBuilder sb;
        private Script script;

        public static /* synthetic */ RawRun copy$default(RawRun rawRun, StringBuilder sb, Script script, int i, Object obj) {
            if ((i & 1) != 0) {
                sb = rawRun.sb;
            }
            if ((i & 2) != 0) {
                script = rawRun.script;
            }
            return rawRun.copy(sb, script);
        }

        /* renamed from: component1, reason: from getter */
        public final StringBuilder getSb() {
            return this.sb;
        }

        /* renamed from: component2, reason: from getter */
        public final Script getScript() {
            return this.script;
        }

        public final RawRun copy(StringBuilder sb, Script script) {
            Intrinsics.checkNotNullParameter(sb, "sb");
            Intrinsics.checkNotNullParameter(script, "script");
            return new RawRun(sb, script);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RawRun)) {
                return false;
            }
            RawRun rawRun = (RawRun) other;
            return Intrinsics.areEqual(this.sb, rawRun.sb) && this.script == rawRun.script;
        }

        public int hashCode() {
            return (this.sb.hashCode() * 31) + this.script.hashCode();
        }

        public String toString() {
            return "RawRun(sb=" + ((Object) this.sb) + ", script=" + this.script + ")";
        }

        public RawRun(StringBuilder sb, Script script) {
            Intrinsics.checkNotNullParameter(sb, "sb");
            Intrinsics.checkNotNullParameter(script, "script");
            this.sb = sb;
            this.script = script;
        }

        public final StringBuilder getSb() {
            return this.sb;
        }

        public final Script getScript() {
            return this.script;
        }

        public final void setScript(Script script) {
            Intrinsics.checkNotNullParameter(script, "<set-?>");
            this.script = script;
        }
    }

    /* compiled from: Lang.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    /* renamed from: aio.tts.Lang$segmentRuns$1, reason: invalid class name */
    static final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<String, Boolean> {
        AnonymousClass1(Object obj) {
            super(1, obj, Lang.class, "languageOn", "languageOn(Ljava/lang/String;)Z", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Boolean invoke(String p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return Boolean.valueOf(((Lang) this.receiver).languageOn(p0));
        }
    }

    /* compiled from: Lang.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    /* renamed from: aio.tts.Lang$segmentRuns$2, reason: invalid class name */
    static final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<String, Boolean> {
        AnonymousClass2(Object obj) {
            super(1, obj, Lang.class, "languageOn", "languageOn(Ljava/lang/String;)Z", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Boolean invoke(String p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return Boolean.valueOf(((Lang) this.receiver).languageOn(p0));
        }
    }

    /* compiled from: Lang.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    /* renamed from: aio.tts.Lang$segmentRuns$3, reason: invalid class name */
    static final /* synthetic */ class AnonymousClass3 extends FunctionReferenceImpl implements Function1<String, Boolean> {
        AnonymousClass3(Object obj) {
            super(1, obj, Lang.class, "languageOn", "languageOn(Ljava/lang/String;)Z", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Boolean invoke(String p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return Boolean.valueOf(((Lang) this.receiver).languageOn(p0));
        }
    }
}
