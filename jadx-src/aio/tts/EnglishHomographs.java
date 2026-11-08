package aio.tts;

import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: EnglishHomographs.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Laio/tts/EnglishHomographs;", "", "<init>", "()V", "I", "", "W", "B", "RULES", "", "Laio/tts/EnglishHomographs$Rule;", "QUICK", "Lkotlin/text/Regex;", "rewrite", "text", "sameCase", "original", "say", "Rule", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EnglishHomographs {
    private static final String B = "(?<![\\p{L}\\p{N}_])";
    private static final String I = "(?i)";
    private static final String W = "(?![\\p{L}\\p{N}_])";
    public static final EnglishHomographs INSTANCE = new EnglishHomographs();
    private static final List<Rule> RULES = CollectionsKt.listOf((Object[]) new Rule[]{new Rule("(?i)(?<![\\p{L}\\p{N}_])as\\s+(read)(?![\\p{L}\\p{N}_])", 1, "red"), new Rule("(?i)^\\s*(read)\\s+by(?=\\s*(?:$|[,:.\\d]))", 1, "red"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(read)\\s+by\\s+(?:\\d+|everyone|everybody|all)(?![\\p{L}\\p{N}_])", 1, "red"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(read)\\s*[/|]\\s*unread(?![\\p{L}\\p{N}_])", 1, "red"), new Rule("(?i)(?<![\\p{L}\\p{N}_])un(read)(?![\\p{L}\\p{N}_])", 1, "red"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(?:has|have|had|having|hasn't|haven't|hadn't)\\s+(?:(?:not|already|just|never|ever|recently|also|still)\\s+)?(read)(?![\\p{L}\\p{N}_])", 1, "red"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(?:have|has|had)\\s+(?:you|he|she|they|we|i|it|anyone|everyone|someone)\\s+(?:(?:not|already|just|never|ever)\\s+)?(read)(?![\\p{L}\\p{N}_])", 1, "red"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(?:is|are|was|were|be|been|being|isn't|aren't|wasn't|weren't)\\s+(?:(?:not|already|widely|rarely|often|never|also)\\s+)?(read)(?![\\p{L}\\p{N}_])", 1, "red"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(?:already|previously|recently|widely|last)\\s+(read)(?![\\p{L}\\p{N}_])", 1, "red"), new Rule("(?i)(?<![\\p{L}\\p{N}_])well[- ](read)(?![\\p{L}\\p{N}_])", 1, "red"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(?:i|he|she|we|they)\\s+(read)(?![\\p{L}\\p{N}_])(?=(?:\\s+\\S+){0,3}\\s+(?:yesterday|ago|earlier|last\\s+(?:night|week|month|year))(?![\\p{L}\\p{N}_]))", 1, "red"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(?:go|goes|going|went|gone)\\s+(live)(?![\\p{L}\\p{N}_])", 1, "lyve"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(?:is|are|was|were)\\s+(live)(?![\\p{L}\\p{N}_])", 1, "lyve"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(live)[ -](?:stream|streams|streaming|streamed|video|videos|broadcast|broadcasts|chat|show|shows|event|events|concert|concerts|match|matches|score|scores|coverage|feed|tv|radio|news|update|updates|location|action)(?![\\p{L}\\p{N}_])", 1, "lyve"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(?:streamed|streaming|broadcast|recorded|performed|played|shown|aired)\\s+(live)(?![\\p{L}\\p{N}_])", 1, "lyve"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(?:tap|click|press|swipe|button)\\s+to\\s+(close)(?![\\p{L}\\p{N}_])", 1, "cloze"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(?:to|will|please)\\s+(close)(?=\\s*(?:$|[.,!?;:])|\\s+(?:the|this|that|them|all|your|my|app|window|tab|menu|dialog|file|chat)(?![\\p{L}\\p{N}_]))", 1, "cloze"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(close)\\s+(?:button|window|windows|tab|tabs|app|apps|menu|dialog|popup|panel|screen|file|files|drawer|sheet|keyboard|chat|search|them|all|everything)(?![\\p{L}\\p{N}_])", 1, "cloze"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(lead)\\s+(?:pipe|pipes|pencil|pencils|poisoning|paint|bullet|bullets|acid|metal)(?![\\p{L}\\p{N}_])", 1, "led"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(unleaded)(?![\\p{L}\\p{N}_])", 1, "unledded"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(bass)\\s+(?:guitar|guitars|guitarist|boost|speaker|speakers|player|line|drum|drums|level|sound|note|notes|clef|voice)(?![\\p{L}\\p{N}_])", 1, "base"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(?:double|sub)\\s+(bass)(?![\\p{L}\\p{N}_])", 1, "base"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(minute)\\s+(?:details?|amounts?|differences?|particles?|traces?|quantity|quantities)(?![\\p{L}\\p{N}_])", 1, "my newt"), new Rule("(?i)(?<![\\p{L}\\p{N}_])wear\\s+and\\s+(tear)(?![\\p{L}\\p{N}_])", 1, "tare"), new Rule("(?i)(?<![\\p{L}\\p{N}_])(tear)\\s+(?:down|apart)(?![\\p{L}\\p{N}_])", 1, "tare")});
    private static final Regex QUICK = new Regex("(?i)read|live|close|lead|bass|minute|tear");

    private EnglishHomographs() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EnglishHomographs.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Laio/tts/EnglishHomographs$Rule;", "", "pattern", "", "group", "", "say", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getGroup", "()I", "getSay", "()Ljava/lang/String;", "re", "Lkotlin/text/Regex;", "getRe", "()Lkotlin/text/Regex;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    static final class Rule {
        private final int group;
        private final Regex re;
        private final String say;

        public Rule(String pattern, int i, String say) {
            Intrinsics.checkNotNullParameter(pattern, "pattern");
            Intrinsics.checkNotNullParameter(say, "say");
            this.group = i;
            this.say = say;
            this.re = new Regex(pattern);
        }

        public final int getGroup() {
            return this.group;
        }

        public final Regex getRe() {
            return this.re;
        }

        public final String getSay() {
            return this.say;
        }
    }

    public final String rewrite(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        if (text.length() >= 4 && QUICK.containsMatchIn(text)) {
            for (final Rule rule : RULES) {
                text = rule.getRe().replace(text, new Function1() { // from class: aio.tts.EnglishHomographs$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return EnglishHomographs.rewrite$lambda$0(rule, (MatchResult) obj);
                    }
                });
            }
        }
        return text;
    }

    static final CharSequence rewrite$lambda$0(Rule rule, MatchResult m) {
        Intrinsics.checkNotNullParameter(m, "m");
        MatchGroup matchGroup = m.getGroups().get(rule.getGroup());
        if (matchGroup == null) {
            return m.getValue();
        }
        int first = matchGroup.getRange().getFirst() - m.getRange().getFirst();
        int last = (matchGroup.getRange().getLast() + 1) - m.getRange().getFirst();
        String strSubstring = m.getValue().substring(0, first);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        String strSameCase = INSTANCE.sameCase(matchGroup.getValue(), rule.getSay());
        String strSubstring2 = m.getValue().substring(last);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        return strSubstring + strSameCase + strSubstring2;
    }

    private final String sameCase(String original, String say) {
        if (original.length() > 1) {
            String str = original;
            for (int i = 0; i < str.length(); i++) {
                char cCharAt = str.charAt(i);
                if (!Character.isLetter(cCharAt) || Character.isUpperCase(cCharAt)) {
                }
            }
            String upperCase = say.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            return upperCase;
        }
        if (!Character.isUpperCase(StringsKt.first(original)) || say.length() <= 0) {
            return say;
        }
        StringBuilder sb = new StringBuilder();
        String strValueOf = String.valueOf(say.charAt(0));
        Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase2 = strValueOf.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase2, "toUpperCase(...)");
        StringBuilder sbAppend = sb.append((Object) upperCase2);
        String strSubstring = say.substring(1);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return sbAppend.append(strSubstring).toString();
    }
}
