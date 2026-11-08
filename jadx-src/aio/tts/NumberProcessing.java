package aio.tts;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: NumberProcessing.kt */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\u0019\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u001e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0016\u0010\u0012\u001a\u00020\u000b2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000eH\u0002J\u000e\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bJ$\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002J\u000e\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bJ%\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0011H\u0000¢\u0006\u0002\b\"J%\u0010$\u001a\u00020\u001b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000bH\u0000¢\u0006\u0002\b%J%\u0010&\u001a\u00020\u001b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0011H\u0000¢\u0006\u0002\b'J\u0018\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\u000bH\u0002J\u0018\u00100\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u0011H\u0002J\u0018\u00101\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u0011H\u0002J\u001a\u00108\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010;\u001a\u00020\u000b2\u0006\u0010<\u001a\u00020\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010+\u001a\b\u0012\u0004\u0012\u00020\u000b0,X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u00102\u001a\b\u0012\u0004\u0012\u00020\u000b0,X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000204X\u0082T¢\u0006\u0002\n\u0000R*\u00105\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020406j\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u000204`7X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010:\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006="}, d2 = {"Laio/tts/NumberProcessing;", "", "<init>", "()V", "mobileRegex", "Lkotlin/text/Regex;", "numberRegex", "MOBILE_MARKER", "", "reservedMobileRegex", "onlyDigits", "", "text", "groupFromRight", "", "digits", "size", "", "digitByDigitGroups", "groups", "reserveMobile", "expandReservedMobile", "rewriteLongNumbers", "rewriteDeferredLongNumbers", "groupLongNumbers", "accept", "Lkotlin/Function1;", "", "rewriteCroreLakh", "otpKeywords", "otpKeywordsCapitals", "otpKeywordNear", "start", "endExclusive", "otpKeywordNear$app", "monthBefore", "isYearAfterMonth", "isYearAfterMonth$app", "isGlued", "isGlued$app", "containsWholeWord", "haystack", "needle", "otpDurationWords", "", "otpCandidateRegex", "otpBoundaryChars", "", "otpWindowBefore", "otpWindowAfter", "crossMessageApps", "CROSS_MESSAGE_WINDOW_MS", "", "pendingOtpContext", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "rewriteOtp", "appPackage", "indianLabels", "formatIndianInteger", "intPartRaw", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NumberProcessing {
    private static final long CROSS_MESSAGE_WINDOW_MS = 60000;
    public static final char MOBILE_MARKER = 57344;
    public static final NumberProcessing INSTANCE = new NumberProcessing();
    private static final Regex mobileRegex = new Regex("\\+(\\d{1,3}) ?(\\d(?: ?\\d){9})(?!\\d)");
    private static final Regex numberRegex = new Regex("(\\d+(?:,\\d+)*)(\\.\\d+)?");
    private static final Regex reservedMobileRegex = new Regex("\ue000(\\d(?: \\d){10,12})");
    private static final List<String> otpKeywords = CollectionsKt.listOf((Object[]) new String[]{"otp", "verification code", "verify code", "security code", "access code", "login code", "authentication code", "passcode", "one time password", "pin", "delivery authentication code", "ओटीपी", "सत्यापन कोड", "सुरक्षा कोड", "पिन"});
    private static final List<String> otpKeywordsCapitals = CollectionsKt.listOf("DAC");
    private static final Regex monthBefore = new Regex("(?i)(?:jan|feb|mar|apr|may|jun|jul|aug|sep|sept|oct|nov|dec)[a-z]*\\.?,?\\s*$|(?:जनवरी|फ़रवरी|फरवरी|मार्च|अप्रैल|मई|जून|जुलाई|अगस्त|सितंबर|सितम्बर|अक्टूबर|अक्तूबर|नवंबर|नवम्बर|दिसंबर|दिसम्बर),?\\s*$");
    private static final Set<String> otpDurationWords = SetsKt.setOf((Object[]) new String[]{"minute", "minutes", "min", "mins", "second", "seconds", "sec", "secs", "hour", "hours", "hr", "hrs"});
    private static final Regex otpCandidateRegex = new Regex("(?<!\\d)\\d{4,8}(?!\\d)");
    private static final char[] otpBoundaryChars = {'.', ':', '!', '?', '\n', ';'};
    private static final Set<String> crossMessageApps = SetsKt.setOf((Object[]) new String[]{"com.whatsapp", "com.whatsapp.w4b", "org.telegram.messenger"});
    private static final HashMap<String, Long> pendingOtpContext = new HashMap<>();
    private static final List<String> indianLabels = CollectionsKt.listOf((Object[]) new String[]{"thousand", "lakh", "crore", "arab", "kharab", "neel", "padma", "shankh"});

    private NumberProcessing() {
    }

    private final List<String> groupFromRight(String digits, int size) {
        int length = digits.length() % size;
        ArrayList arrayList = new ArrayList();
        if (length > 0) {
            arrayList.add(StringsKt.take(digits, length));
        }
        while (length < digits.length()) {
            int i = length + size;
            String strSubstring = digits.substring(length, i);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            arrayList.add(strSubstring);
            length = i;
        }
        return arrayList;
    }

    private final String digitByDigitGroups(List<String> groups) {
        return CollectionsKt.joinToString$default(groups, ", ", null, null, 0, null, new Function1() { // from class: aio.tts.NumberProcessing$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NumberProcessing.digitByDigitGroups$lambda$1((String) obj);
            }
        }, 30, null);
    }

    static final CharSequence digitByDigitGroups$lambda$1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        char[] charArray = it.toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "toCharArray(...)");
        return ArraysKt.joinToString$default(charArray, (CharSequence) " ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null);
    }

    public final String reserveMobile(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return Intrinsics.areEqual(Prefs.INSTANCE.mobile13DigitPattern(), PunctuationReader.NONE) ? text : mobileRegex.replace(text, new Function1() { // from class: aio.tts.NumberProcessing$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NumberProcessing.reserveMobile$lambda$2((MatchResult) obj);
            }
        });
    }

    static final CharSequence reserveMobile$lambda$2(MatchResult m) {
        Intrinsics.checkNotNullParameter(m, "m");
        char[] charArray = INSTANCE.onlyDigits(m.getValue()).toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "toCharArray(...)");
        return "\ue000" + ArraysKt.joinToString$default(charArray, (CharSequence) " ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null);
    }

    public final String expandReservedMobile(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        final String strMobile13DigitPattern = Prefs.INSTANCE.mobile13DigitPattern();
        return reservedMobileRegex.replace(text, new Function1() { // from class: aio.tts.NumberProcessing$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NumberProcessing.expandReservedMobile$lambda$5(strMobile13DigitPattern, (MatchResult) obj);
            }
        });
    }

    static final CharSequence expandReservedMobile$lambda$5(String str, MatchResult m) throws IOException {
        Intrinsics.checkNotNullParameter(m, "m");
        String str2 = m.getGroupValues().get(1);
        StringBuilder sb = new StringBuilder();
        int length = str2.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str2.charAt(i2);
            if ('0' <= cCharAt && cCharAt < ':') {
                sb.append(cCharAt);
            }
        }
        String string = sb.toString();
        int iCoerceIn = RangesKt.coerceIn(string.length() - 10, 1, 3);
        String strTake = StringsKt.take(string, iCoerceIn);
        String strDrop = StringsKt.drop(string, iCoerceIn);
        List listSplit$default = StringsKt.split$default((CharSequence) str, new String[]{"-"}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSplit$default, 10));
        Iterator it = listSplit$default.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(Integer.parseInt((String) it.next())));
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            int iCoerceAtMost = RangesKt.coerceAtMost(((Number) it2.next()).intValue() + i, strDrop.length());
            if (i < iCoerceAtMost) {
                String strSubstring = strDrop.substring(i, iCoerceAtMost);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                arrayList2.add(strSubstring);
                i = iCoerceAtMost;
            }
        }
        return "plus " + INSTANCE.digitByDigitGroups(CollectionsKt.plus((Collection) CollectionsKt.listOf(strTake), (Iterable) arrayList2));
    }

    public final String rewriteLongNumbers(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return groupLongNumbers(text, new Function1() { // from class: aio.tts.NumberProcessing$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(NumberProcessing.rewriteLongNumbers$lambda$6(((Integer) obj).intValue()));
            }
        });
    }

    static final boolean rewriteLongNumbers$lambda$6(int i) {
        if (i >= Prefs.INSTANCE.longNumberMinDigits()) {
            return !Prefs.INSTANCE.croreLakhEnabled() || 6 > i || i >= 10;
        }
        return false;
    }

    public final String rewriteDeferredLongNumbers(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return groupLongNumbers(text, new Function1() { // from class: aio.tts.NumberProcessing$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(NumberProcessing.rewriteDeferredLongNumbers$lambda$7(((Integer) obj).intValue()));
            }
        });
    }

    static final boolean rewriteDeferredLongNumbers$lambda$7(int i) {
        return 6 <= i && i < 10 && i >= Prefs.INSTANCE.longNumberMinDigits();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final String groupLongNumbers(String text, final Function1<? super Integer, Boolean> accept) {
        Pair pair;
        String strLongNumberReadingMode = Prefs.INSTANCE.longNumberReadingMode();
        switch (strLongNumberReadingMode.hashCode()) {
            case 3387192:
                strLongNumberReadingMode.equals(PunctuationReader.NONE);
                return text;
            case 3415757:
                if (strLongNumberReadingMode.equals("ones")) {
                    pair = TuplesKt.to(1, false);
                    final int iIntValue = ((Number) pair.component1()).intValue();
                    final boolean zBooleanValue = ((Boolean) pair.component2()).booleanValue();
                    return numberRegex.replace(text, new Function1() { // from class: aio.tts.NumberProcessing$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return NumberProcessing.groupLongNumbers$lambda$8(accept, iIntValue, zBooleanValue, (MatchResult) obj);
                        }
                    });
                }
                return text;
            case 3556342:
                if (strLongNumberReadingMode.equals("tens")) {
                    pair = TuplesKt.to(2, false);
                    final int iIntValue2 = ((Number) pair.component1()).intValue();
                    final boolean zBooleanValue2 = ((Boolean) pair.component2()).booleanValue();
                    return numberRegex.replace(text, new Function1() { // from class: aio.tts.NumberProcessing$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return NumberProcessing.groupLongNumbers$lambda$8(accept, iIntValue2, zBooleanValue2, (MatchResult) obj);
                        }
                    });
                }
                return text;
            case 293428850:
                if (strLongNumberReadingMode.equals("group_2")) {
                    pair = TuplesKt.to(2, true);
                    final int iIntValue22 = ((Number) pair.component1()).intValue();
                    final boolean zBooleanValue22 = ((Boolean) pair.component2()).booleanValue();
                    return numberRegex.replace(text, new Function1() { // from class: aio.tts.NumberProcessing$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return NumberProcessing.groupLongNumbers$lambda$8(accept, iIntValue22, zBooleanValue22, (MatchResult) obj);
                        }
                    });
                }
                return text;
            case 293428851:
                if (strLongNumberReadingMode.equals("group_3")) {
                    pair = TuplesKt.to(3, true);
                    final int iIntValue222 = ((Number) pair.component1()).intValue();
                    final boolean zBooleanValue222 = ((Boolean) pair.component2()).booleanValue();
                    return numberRegex.replace(text, new Function1() { // from class: aio.tts.NumberProcessing$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return NumberProcessing.groupLongNumbers$lambda$8(accept, iIntValue222, zBooleanValue222, (MatchResult) obj);
                        }
                    });
                }
                return text;
            case 293428852:
                if (strLongNumberReadingMode.equals("group_4")) {
                    pair = TuplesKt.to(4, true);
                    final int iIntValue2222 = ((Number) pair.component1()).intValue();
                    final boolean zBooleanValue2222 = ((Boolean) pair.component2()).booleanValue();
                    return numberRegex.replace(text, new Function1() { // from class: aio.tts.NumberProcessing$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return NumberProcessing.groupLongNumbers$lambda$8(accept, iIntValue2222, zBooleanValue2222, (MatchResult) obj);
                        }
                    });
                }
                return text;
            case 293428853:
                if (strLongNumberReadingMode.equals("group_5")) {
                    pair = TuplesKt.to(5, true);
                    final int iIntValue22222 = ((Number) pair.component1()).intValue();
                    final boolean zBooleanValue22222 = ((Boolean) pair.component2()).booleanValue();
                    return numberRegex.replace(text, new Function1() { // from class: aio.tts.NumberProcessing$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return NumberProcessing.groupLongNumbers$lambda$8(accept, iIntValue22222, zBooleanValue22222, (MatchResult) obj);
                        }
                    });
                }
                return text;
            case 572451845:
                if (strLongNumberReadingMode.equals("hundreds")) {
                    pair = TuplesKt.to(3, false);
                    final int iIntValue222222 = ((Number) pair.component1()).intValue();
                    final boolean zBooleanValue222222 = ((Boolean) pair.component2()).booleanValue();
                    return numberRegex.replace(text, new Function1() { // from class: aio.tts.NumberProcessing$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return NumberProcessing.groupLongNumbers$lambda$8(accept, iIntValue222222, zBooleanValue222222, (MatchResult) obj);
                        }
                    });
                }
                return text;
            default:
                return text;
        }
    }

    static final CharSequence groupLongNumbers$lambda$8(Function1 function1, int i, boolean z, MatchResult m) throws IOException {
        Intrinsics.checkNotNullParameter(m, "m");
        String str = m.getGroupValues().get(1);
        String str2 = m.getGroupValues().get(2);
        NumberProcessing numberProcessing = INSTANCE;
        String strOnlyDigits = numberProcessing.onlyDigits(str);
        if (!((Boolean) function1.invoke(Integer.valueOf(strOnlyDigits.length()))).booleanValue()) {
            return m.getValue();
        }
        List<String> listGroupFromRight = numberProcessing.groupFromRight(strOnlyDigits, i);
        return (z ? numberProcessing.digitByDigitGroups(listGroupFromRight) : CollectionsKt.joinToString$default(listGroupFromRight, " ", null, null, 0, null, null, 62, null)) + str2;
    }

    public final String rewriteCroreLakh(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return numberRegex.replace(text, new Function1() { // from class: aio.tts.NumberProcessing$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NumberProcessing.rewriteCroreLakh$lambda$9((MatchResult) obj);
            }
        });
    }

    static final CharSequence rewriteCroreLakh$lambda$9(MatchResult m) throws IOException {
        Intrinsics.checkNotNullParameter(m, "m");
        String str = m.getGroupValues().get(1);
        String str2 = m.getGroupValues().get(2);
        NumberProcessing numberProcessing = INSTANCE;
        String strOnlyDigits = numberProcessing.onlyDigits(str);
        int length = strOnlyDigits.length();
        if (6 > length || length >= 10) {
            return m.getValue();
        }
        return numberProcessing.formatIndianInteger(strOnlyDigits) + str2;
    }

    public final boolean otpKeywordNear$app(String text, int start, int endExclusive) {
        Intrinsics.checkNotNullParameter(text, "text");
        String strOtpWindowBefore = otpWindowBefore(text, start);
        String strOtpWindowAfter = otpWindowAfter(text, endExclusive);
        String lowerCase = strOtpWindowBefore.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String lowerCase2 = strOtpWindowAfter.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        List<String> list = otpKeywords;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (String str : list) {
                NumberProcessing numberProcessing = INSTANCE;
                if (numberProcessing.containsWholeWord(lowerCase, str) || numberProcessing.containsWholeWord(lowerCase2, str)) {
                    return true;
                }
            }
        }
        List<String> list2 = otpKeywordsCapitals;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        for (String str2 : list2) {
            NumberProcessing numberProcessing2 = INSTANCE;
            if (numberProcessing2.containsWholeWord(strOtpWindowBefore, str2) || numberProcessing2.containsWholeWord(strOtpWindowAfter, str2)) {
                return true;
            }
        }
        return false;
    }

    public final boolean isYearAfterMonth$app(String text, int start, String digits) {
        int i;
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(digits, "digits");
        if (digits.length() != 4 || (i = Integer.parseInt(digits)) < 1900 || i > 2099) {
            return false;
        }
        Regex regex = monthBefore;
        String strSubstring = text.substring(Math.max(0, start - 14), start);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return regex.containsMatchIn(strSubstring);
    }

    private static final boolean isGlued$glue(char c) {
        return Character.isLetter(c) || StringsKt.contains$default((CharSequence) "-_/.", c, false, 2, (Object) null);
    }

    public final boolean isGlued$app(String text, int start, int endExclusive) {
        Intrinsics.checkNotNullParameter(text, "text");
        return (start > 0 && isGlued$glue(text.charAt(start - 1))) || (endExclusive < text.length() && isGlued$glue(text.charAt(endExclusive)));
    }

    private final boolean containsWholeWord(String haystack, String needle) {
        if (needle.length() == 0) {
            return false;
        }
        String str = haystack;
        int iIndexOf$default = StringsKt.indexOf$default((CharSequence) str, needle, 0, false, 6, (Object) null);
        while (iIndexOf$default >= 0) {
            boolean z = iIndexOf$default == 0 || !Character.isLetterOrDigit(haystack.charAt(iIndexOf$default + (-1)));
            int length = needle.length() + iIndexOf$default;
            boolean z2 = length >= haystack.length() || !Character.isLetterOrDigit(haystack.charAt(length));
            if (z && z2) {
                return true;
            }
            iIndexOf$default = StringsKt.indexOf$default((CharSequence) str, needle, iIndexOf$default + 1, false, 4, (Object) null);
        }
        return false;
    }

    private final String otpWindowBefore(String text, int start) {
        String strSubstring;
        String strSubstring2 = text.substring(Math.max(0, start - 40), start);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        int length = strSubstring2.length();
        do {
            length = StringsKt.lastIndexOfAny$default((CharSequence) strSubstring2, otpBoundaryChars, length - 1, false, 4, (Object) null);
            if (length >= 0) {
                if (strSubstring2.charAt(length) != ':') {
                    break;
                }
                strSubstring = strSubstring2.substring(length + 1);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            } else {
                return strSubstring2;
            }
        } while (StringsKt.isBlank(strSubstring));
        String strSubstring3 = strSubstring2.substring(length + 1);
        Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
        return strSubstring3;
    }

    private final String otpWindowAfter(String text, int endExclusive) {
        int iIndexOfAny$default;
        String strSubstring = text.substring(endExclusive, Math.min(text.length(), endExclusive + 40));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        int i = 0;
        while (true) {
            iIndexOfAny$default = StringsKt.indexOfAny$default((CharSequence) strSubstring, otpBoundaryChars, i, false, 4, (Object) null);
            if (iIndexOfAny$default >= 0) {
                if (strSubstring.charAt(iIndexOfAny$default) != ':') {
                    break;
                }
                String strSubstring2 = strSubstring.substring(i, iIndexOfAny$default);
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                if (!StringsKt.isBlank(strSubstring2)) {
                    break;
                }
                i = iIndexOfAny$default + 1;
            } else {
                return strSubstring;
            }
        }
        String strSubstring3 = strSubstring.substring(0, iIndexOfAny$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
        return strSubstring3;
    }

    public static /* synthetic */ String rewriteOtp$default(NumberProcessing numberProcessing, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return numberProcessing.rewriteOtp(str, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String rewriteOtp(final java.lang.String r6, final java.lang.String r7) {
        /*
            r5 = this;
            java.lang.String r5 = "text"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r5)
            aio.tts.Prefs r5 = aio.tts.Prefs.INSTANCE
            boolean r5 = r5.otpReadingEnabled()
            if (r5 != 0) goto Le
            return r6
        Le:
            if (r7 == 0) goto L1a
            java.util.Set<java.lang.String> r5 = aio.tts.NumberProcessing.crossMessageApps
            boolean r5 = r5.contains(r7)
            if (r5 == 0) goto L1a
            r5 = 1
            goto L1b
        L1a:
            r5 = 0
        L1b:
            kotlin.jvm.internal.Ref$BooleanRef r0 = new kotlin.jvm.internal.Ref$BooleanRef
            r0.<init>()
            kotlin.text.Regex r1 = aio.tts.NumberProcessing.otpCandidateRegex
            r2 = r6
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2
            aio.tts.NumberProcessing$$ExternalSyntheticLambda7 r3 = new aio.tts.NumberProcessing$$ExternalSyntheticLambda7
            r3.<init>()
            java.lang.String r1 = r1.replace(r2, r3)
            if (r5 == 0) goto La6
            boolean r5 = r0.element
            if (r5 != 0) goto La6
            java.util.List<java.lang.String> r5 = aio.tts.NumberProcessing.otpKeywords
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            boolean r0 = r5 instanceof java.util.Collection
            if (r0 == 0) goto L46
            r0 = r5
            java.util.Collection r0 = (java.util.Collection) r0
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L46
            goto L6a
        L46:
            java.util.Iterator r5 = r5.iterator()
        L4a:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L6a
            java.lang.Object r0 = r5.next()
            java.lang.String r0 = (java.lang.String) r0
            aio.tts.NumberProcessing r2 = aio.tts.NumberProcessing.INSTANCE
            java.util.Locale r3 = java.util.Locale.ROOT
            java.lang.String r3 = r6.toLowerCase(r3)
            java.lang.String r4 = "toLowerCase(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            boolean r0 = r2.containsWholeWord(r3, r0)
            if (r0 == 0) goto L4a
            goto L94
        L6a:
            java.util.List<java.lang.String> r5 = aio.tts.NumberProcessing.otpKeywordsCapitals
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            boolean r0 = r5 instanceof java.util.Collection
            if (r0 == 0) goto L7c
            r0 = r5
            java.util.Collection r0 = (java.util.Collection) r0
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L7c
            return r1
        L7c:
            java.util.Iterator r5 = r5.iterator()
        L80:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto La6
            java.lang.Object r0 = r5.next()
            java.lang.String r0 = (java.lang.String) r0
            aio.tts.NumberProcessing r2 = aio.tts.NumberProcessing.INSTANCE
            boolean r0 = r2.containsWholeWord(r6, r0)
            if (r0 == 0) goto L80
        L94:
            java.util.HashMap<java.lang.String, java.lang.Long> r5 = aio.tts.NumberProcessing.pendingOtpContext
            java.util.Map r5 = (java.util.Map) r5
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)
            long r2 = java.lang.System.currentTimeMillis()
            java.lang.Long r6 = java.lang.Long.valueOf(r2)
            r5.put(r7, r6)
        La6:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.NumberProcessing.rewriteOtp(java.lang.String, java.lang.String):java.lang.String");
    }

    static final CharSequence rewriteOtp$lambda$15(String str, boolean z, String str2, Ref.BooleanRef booleanRef, MatchResult m) {
        HashMap<String, Long> map;
        Long l;
        Intrinsics.checkNotNullParameter(m, "m");
        int first = m.getRange().getFirst();
        int last = m.getRange().getLast();
        int i = last + 1;
        if (first > 0 && str.charAt(first - 1) == '+') {
            return m.getValue();
        }
        int i2 = 0;
        String strSubstring = str.substring(Math.max(0, first - 15), first);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        String lowerCase = StringsKt.trimEnd((CharSequence) strSubstring).toString().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (StringsKt.endsWith$default(lowerCase, "rs", false, 2, (Object) null) || StringsKt.endsWith$default(lowerCase, "rs.", false, 2, (Object) null) || StringsKt.endsWith$default(lowerCase, "rupees", false, 2, (Object) null) || (first > 0 && StringsKt.contains$default((CharSequence) "₹$€£", str.charAt(first - 1), false, 2, (Object) null))) {
            return m.getValue();
        }
        String strSubstring2 = str.substring(i, Math.min(str.length(), last + 16));
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        String lowerCase2 = StringsKt.trimStart((CharSequence) strSubstring2).toString().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        Set<String> set = otpDurationWords;
        if (!(set instanceof Collection) || !set.isEmpty()) {
            Iterator<T> it = set.iterator();
            while (it.hasNext()) {
                if (StringsKt.startsWith$default(lowerCase2, (String) it.next(), false, 2, (Object) null)) {
                    return m.getValue();
                }
            }
        }
        NumberProcessing numberProcessing = INSTANCE;
        if (numberProcessing.isYearAfterMonth$app(str, first, m.getValue())) {
            return m.getValue();
        }
        if (!numberProcessing.otpKeywordNear$app(str, first, i)) {
            if (z && !numberProcessing.isGlued$app(str, first, i) && (l = (map = pendingOtpContext).get(str2)) != null && System.currentTimeMillis() - l.longValue() <= 60000) {
                map.remove(str2);
                booleanRef.element = true;
                String value = m.getValue();
                ArrayList arrayList = new ArrayList(value.length());
                while (i2 < value.length()) {
                    arrayList.add(String.valueOf(value.charAt(i2)));
                    i2++;
                }
                String strDigitByDigitGroups = numberProcessing.digitByDigitGroups(arrayList);
                OtpRepeat.INSTANCE.record(strDigitByDigitGroups, m.getValue());
                return strDigitByDigitGroups;
            }
            return m.getValue();
        }
        booleanRef.element = true;
        String value2 = m.getValue();
        ArrayList arrayList2 = new ArrayList(value2.length());
        while (i2 < value2.length()) {
            arrayList2.add(String.valueOf(value2.charAt(i2)));
            i2++;
        }
        String strDigitByDigitGroups2 = numberProcessing.digitByDigitGroups(arrayList2);
        OtpRepeat.INSTANCE.record(strDigitByDigitGroups2, m.getValue());
        return strDigitByDigitGroups2;
    }

    private final String formatIndianInteger(String intPartRaw) {
        String strTrimStart = StringsKt.trimStart(intPartRaw, '0');
        if (strTrimStart.length() == 0) {
            strTrimStart = "0";
        }
        String str = strTrimStart;
        if (str.length() <= 3) {
            return str;
        }
        String strTakeLast = StringsKt.takeLast(str, 3);
        String strDropLast = StringsKt.dropLast(str, 3);
        ArrayList<String> arrayList = new ArrayList();
        while (strDropLast.length() > 0) {
            int i = 2;
            if (strDropLast.length() < 2) {
                i = 1;
            }
            arrayList.add(0, StringsKt.takeLast(strDropLast, i));
            strDropLast = StringsKt.dropLast(strDropLast, i);
        }
        ArrayList arrayList2 = new ArrayList();
        int i2 = 0;
        for (String str2 : arrayList) {
            int i3 = i2 + 1;
            String str3 = (String) CollectionsKt.getOrNull(indianLabels, (arrayList.size() - 1) - i2);
            if (str3 != null) {
                Integer intOrNull = StringsKt.toIntOrNull(str2);
                int iIntValue = intOrNull != null ? intOrNull.intValue() : 0;
                if (iIntValue != 0) {
                    arrayList2.add(iIntValue + " " + str3);
                }
            }
            i2 = i3;
        }
        Integer intOrNull2 = StringsKt.toIntOrNull(strTakeLast);
        int iIntValue2 = intOrNull2 != null ? intOrNull2.intValue() : 0;
        if (iIntValue2 != 0) {
            arrayList2.add(String.valueOf(iIntValue2));
        }
        return arrayList2.isEmpty() ? "0" : CollectionsKt.joinToString$default(arrayList2, " ", null, null, 0, null, null, 62, null);
    }

    private final String onlyDigits(String text) throws IOException {
        String str = text;
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if ('0' <= cCharAt && cCharAt < ':') {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }
}
