package org.eloqium.tts.pipeline;

import java.io.IOException;
import java.text.Normalizer;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;

/* compiled from: UnicodeNormalizer.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0010\f\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u0018\u0010\f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0005H\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lorg/eloqium/tts/pipeline/UnicodeNormalizer;", "", "<init>", "()V", "HIGHEST_BYTE", "", "REPLACEMENTS", "", "", "", "normalize", "text", "fallback", "at", "isCombining", "", "c", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class UnicodeNormalizer {
    private static final int HIGHEST_BYTE = 255;
    public static final UnicodeNormalizer INSTANCE = new UnicodeNormalizer();
    private static final Map<Character, String> REPLACEMENTS = MapsKt.mapOf(TuplesKt.to(Character.valueOf(Typography.leftSingleQuote), "'"), TuplesKt.to(Character.valueOf(Typography.rightSingleQuote), "'"), TuplesKt.to(Character.valueOf(Typography.lowSingleQuote), "'"), TuplesKt.to((char) 8219, "'"), TuplesKt.to(Character.valueOf(Typography.prime), "'"), TuplesKt.to(Character.valueOf(Typography.leftDoubleQuote), "\""), TuplesKt.to(Character.valueOf(Typography.rightDoubleQuote), "\""), TuplesKt.to(Character.valueOf(Typography.lowDoubleQuote), "\""), TuplesKt.to((char) 8223, "\""), TuplesKt.to((char) 171, "\""), TuplesKt.to((char) 187, "\""), TuplesKt.to(Character.valueOf(Typography.doublePrime), "\""), TuplesKt.to((char) 8208, "-"), TuplesKt.to((char) 8209, "-"), TuplesKt.to((char) 8210, "-"), TuplesKt.to(Character.valueOf(Typography.ndash), "-"), TuplesKt.to(Character.valueOf(Typography.mdash), "-"), TuplesKt.to((char) 8213, "-"), TuplesKt.to((char) 8722, "-"), TuplesKt.to(Character.valueOf(Typography.ellipsis), "..."), TuplesKt.to(Character.valueOf(Typography.bullet), "."), TuplesKt.to(Character.valueOf(Typography.middleDot), "."), TuplesKt.to(Character.valueOf(Typography.nbsp), " "), TuplesKt.to((char) 8199, " "), TuplesKt.to((char) 8239, " "), TuplesKt.to((char) 8203, ""), TuplesKt.to((char) 8204, ""), TuplesKt.to((char) 8205, ""), TuplesKt.to((char) 65279, ""), TuplesKt.to((char) 8249, "<"), TuplesKt.to((char) 8250, ">"), TuplesKt.to((char) 8260, "/"), TuplesKt.to((char) 8725, "/"), TuplesKt.to(Character.valueOf(Typography.times), "x"), TuplesKt.to(Character.valueOf(Typography.tm), " trademark "), TuplesKt.to((char) 8470, " number "), TuplesKt.to(Character.valueOf(Typography.euro), " euro "), TuplesKt.to(Character.valueOf(Typography.pound), " pounds "), TuplesKt.to((char) 165, " yen "), TuplesKt.to(Character.valueOf(Typography.lessOrEqual), " less than or equal to "), TuplesKt.to(Character.valueOf(Typography.greaterOrEqual), " greater than or equal to "), TuplesKt.to(Character.valueOf(Typography.notEqual), " not equal to "), TuplesKt.to(Character.valueOf(Typography.almostEqual), " about "), TuplesKt.to((char) 8734, " infinity "), TuplesKt.to((char) 8594, " to "), TuplesKt.to((char) 8592, " from "), TuplesKt.to(Character.valueOf(Typography.degree), " degrees "));

    private UnicodeNormalizer() {
    }

    public final String normalize(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        if (text.length() == 0) {
            return text;
        }
        StringBuilder sb = new StringBuilder(text.length());
        int i = 0;
        while (i < text.length()) {
            char cCharAt = text.charAt(i);
            String str = REPLACEMENTS.get(Character.valueOf(cCharAt));
            if (str != null) {
                sb.append(str);
            } else if (cCharAt == 0) {
                sb.append(' ');
            } else if (cCharAt <= 255) {
                sb.append(cCharAt);
            } else {
                sb.append(fallback(text, i));
            }
            i += (!Character.isHighSurrogate(cCharAt) || i + 1 >= text.length()) ? 1 : 2;
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    private final String fallback(String text, int at) throws IOException {
        String strValueOf;
        char cCharAt = text.charAt(at);
        if (Character.isHighSurrogate(cCharAt) && at + 1 < text.length()) {
            strValueOf = text.substring(at, at + 2);
            Intrinsics.checkNotNullExpressionValue(strValueOf, "substring(...)");
        } else {
            strValueOf = String.valueOf(cCharAt);
        }
        String strNormalize = Normalizer.normalize(strValueOf, Normalizer.Form.NFD);
        Intrinsics.checkNotNullExpressionValue(strNormalize, "normalize(...)");
        String str = strNormalize;
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt2 = str.charAt(i);
            if (cCharAt2 <= 255 && !INSTANCE.isCombining(cCharAt2)) {
                sb.append(cCharAt2);
            }
        }
        String string = sb.toString();
        return string.length() == 0 ? " " : string;
    }

    private final boolean isCombining(char c) {
        byte type = (byte) Character.getType(c);
        return type == 6 || type == 8 || type == 7;
    }
}
