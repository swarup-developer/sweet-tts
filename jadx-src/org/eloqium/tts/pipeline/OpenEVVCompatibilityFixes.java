package org.eloqium.tts.pipeline;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: OpenEVVCompatibilityFixes.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u0018\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\b\b\u0002\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;", "", "<init>", "()V", "PROTECTED_SYSTEM_TAG_REGEX", "Lkotlin/text/Regex;", "SUPPORTED_ECI_TAG_REGEX", "BEFORE_A_DIGIT", "OPENERS", "", "BEFORE_AN_OPENER", "LOOSE_S_SUFFIX", "GROUPED_THOUSANDS", "apply", "text", "eciVoiceTagsEnabled", "", "applyFixes", "applyNonBacktickFixes", "sanitizeBackticks", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OpenEVVCompatibilityFixes {
    public static final OpenEVVCompatibilityFixes INSTANCE = new OpenEVVCompatibilityFixes();
    private static final Regex PROTECTED_SYSTEM_TAG_REGEX = new Regex("`(\\[[^\\]\\r\\n\\t]+\\]|vb\\d+)");
    private static final Regex SUPPORTED_ECI_TAG_REGEX = new Regex("`([a-z]{1,2}\\d{0,4}|[0-4])(?=[^A-Za-z0-9]|$)");
    private static final Regex BEFORE_A_DIGIT = new Regex("([A-Za-z])(\\d)");
    private static final String OPENERS = "~#$%^*({|\\[<•";
    private static final Regex BEFORE_AN_OPENER = new Regex("([A-Za-z]+)([" + Regex.INSTANCE.escape(OPENERS) + "])");
    private static final Regex LOOSE_S_SUFFIX = new Regex("([A-Za-z]+)\\s+(\\(s\\))");
    private static final Regex GROUPED_THOUSANDS = new Regex("\\b\\d{1,3},000(?:,\\d{3})+\\b");

    private OpenEVVCompatibilityFixes() {
    }

    public static /* synthetic */ String apply$default(OpenEVVCompatibilityFixes openEVVCompatibilityFixes, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return openEVVCompatibilityFixes.apply(str, z);
    }

    public final String apply(String text, boolean eciVoiceTagsEnabled) {
        Intrinsics.checkNotNullParameter(text, "text");
        String str = text;
        if (str.length() == 0) {
            return text;
        }
        int i = 0;
        if (!StringsKt.contains$default((CharSequence) str, (CharSequence) "`[", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str, (CharSequence) "`vb", false, 2, (Object) null)) {
            return applyFixes(text, eciVoiceTagsEnabled);
        }
        StringBuilder sb = new StringBuilder(text.length() + 16);
        for (MatchResult matchResult : Regex.findAll$default(PROTECTED_SYSTEM_TAG_REGEX, str, 0, 2, null)) {
            int first = matchResult.getRange().getFirst();
            int last = matchResult.getRange().getLast() + 1;
            if (first > i) {
                String strSubstring = text.substring(i, first);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                sb.append(applyFixes(strSubstring, eciVoiceTagsEnabled));
            }
            sb.append(matchResult.getValue());
            i = last;
        }
        if (i < text.length()) {
            String strSubstring2 = text.substring(i);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
            sb.append(applyFixes(strSubstring2, eciVoiceTagsEnabled));
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    private final String applyFixes(String text, boolean eciVoiceTagsEnabled) {
        String str = text;
        if (str.length() == 0) {
            return text;
        }
        int i = 0;
        if (!StringsKt.contains$default((CharSequence) str, '`', false, 2, (Object) null)) {
            return applyNonBacktickFixes(text);
        }
        if (!eciVoiceTagsEnabled) {
            return applyNonBacktickFixes(StringsKt.replace$default(text, '`', '\'', false, 4, (Object) null));
        }
        StringBuilder sb = new StringBuilder(text.length() + 8);
        for (MatchResult matchResult : Regex.findAll$default(SUPPORTED_ECI_TAG_REGEX, str, 0, 2, null)) {
            int first = matchResult.getRange().getFirst();
            int last = matchResult.getRange().getLast() + 1;
            if (first > i) {
                String strSubstring = text.substring(i, first);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                sb.append(applyNonBacktickFixes(StringsKt.replace$default(strSubstring, '`', '\'', false, 4, (Object) null)));
            }
            sb.append(matchResult.getValue());
            i = last;
        }
        if (i < text.length()) {
            String strSubstring2 = text.substring(i);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
            sb.append(applyNonBacktickFixes(StringsKt.replace$default(strSubstring2, '`', '\'', false, 4, (Object) null)));
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    private final String applyNonBacktickFixes(String text) {
        String str = text;
        if (str.length() == 0) {
            return text;
        }
        return GROUPED_THOUSANDS.replace(LOOSE_S_SUFFIX.replace(BEFORE_AN_OPENER.replace(BEFORE_A_DIGIT.replace(str, "$1 $2"), "$1 $2"), "$1$2"), new Function1() { // from class: org.eloqium.tts.pipeline.OpenEVVCompatibilityFixes$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return OpenEVVCompatibilityFixes.applyNonBacktickFixes$lambda$0((MatchResult) obj);
            }
        });
    }

    static final CharSequence applyNonBacktickFixes$lambda$0(MatchResult it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return StringsKt.replace$default(it.getValue(), ",", "", false, 4, (Object) null);
    }

    public static /* synthetic */ String sanitizeBackticks$default(OpenEVVCompatibilityFixes openEVVCompatibilityFixes, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return openEVVCompatibilityFixes.sanitizeBackticks(str, z);
    }

    public final String sanitizeBackticks(String text, boolean eciVoiceTagsEnabled) {
        Intrinsics.checkNotNullParameter(text, "text");
        return !StringsKt.contains$default((CharSequence) text, '`', false, 2, (Object) null) ? text : apply(text, eciVoiceTagsEnabled);
    }
}
