package aio.tts;

import androidx.core.text.util.LocalePreferences;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;

/* compiled from: TextFixes.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Laio/tts/TextFixes;", "", "<init>", "()V", "MONTHS_TITLE", "", "DAYS", "MONTHS_CAPS", "AMBIGUOUS", "Lkotlin/text/Regex;", "AMBIGUOUS_AFTER_DATE", "FULL", "", "rewrite", "text", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextFixes {
    private static final String DAYS = "Mon|Wed|Fri|Sat|Sun|MON|WED|FRI|SAT|SUN";
    private static final String MONTHS_CAPS = "JAN|FEB|MAR|APR|JUN|JUL|AUG|SEP|OCT|NOV|DEC";
    private static final String MONTHS_TITLE = "Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec";
    public static final TextFixes INSTANCE = new TextFixes();
    private static final Regex AMBIGUOUS = new Regex("(?<![\\p{L}])(Mon|Wed|Fri|Sat|Sun|MON|WED|FRI|SAT|SUN|JAN|FEB|MAR|APR|JUN|JUL|AUG|SEP|OCT|NOV|DEC)(?![\\p{L}])(?=\\.?,?\\s{0,2}(?:\\d|(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)(?![\\p{L}])))");
    private static final Regex AMBIGUOUS_AFTER_DATE = new Regex("(?<=\\d[ ,]{1,2})(Mon|Wed|Fri|Sat|Sun|MON|WED|FRI|SAT|SUN|JAN|FEB|MAR|APR|JUN|JUL|AUG|SEP|OCT|NOV|DEC)(?![\\p{L}])");
    private static final Map<String, String> FULL = MapsKt.mapOf(TuplesKt.to(LocalePreferences.FirstDayOfWeek.MONDAY, "Monday"), TuplesKt.to(LocalePreferences.FirstDayOfWeek.WEDNESDAY, "Wednesday"), TuplesKt.to(LocalePreferences.FirstDayOfWeek.FRIDAY, "Friday"), TuplesKt.to(LocalePreferences.FirstDayOfWeek.SATURDAY, "Saturday"), TuplesKt.to(LocalePreferences.FirstDayOfWeek.SUNDAY, "Sunday"), TuplesKt.to("jan", "January"), TuplesKt.to("feb", "February"), TuplesKt.to("mar", "March"), TuplesKt.to("apr", "April"), TuplesKt.to("jun", "June"), TuplesKt.to("jul", "July"), TuplesKt.to("aug", "August"), TuplesKt.to("sep", "September"), TuplesKt.to("oct", "October"), TuplesKt.to("nov", "November"), TuplesKt.to("dec", "December"));

    private TextFixes() {
    }

    public final String rewrite(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        if (text.length() < 3) {
            return text;
        }
        return AMBIGUOUS_AFTER_DATE.replace(AMBIGUOUS.replace(text, new Function1() { // from class: aio.tts.TextFixes$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TextFixes.rewrite$lambda$0((MatchResult) obj);
            }
        }), new Function1() { // from class: aio.tts.TextFixes$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TextFixes.rewrite$lambda$1((MatchResult) obj);
            }
        });
    }

    static final CharSequence rewrite$lambda$0(MatchResult it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Map<String, String> map = FULL;
        String lowerCase = it.getValue().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String str = map.get(lowerCase);
        return str != null ? str : it.getValue();
    }

    static final CharSequence rewrite$lambda$1(MatchResult it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Map<String, String> map = FULL;
        String lowerCase = it.getValue().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String str = map.get(lowerCase);
        return str != null ? str : it.getValue();
    }
}
