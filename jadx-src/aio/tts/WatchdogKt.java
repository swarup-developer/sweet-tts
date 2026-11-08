package aio.tts;

import java.lang.Character;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Watchdog.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"FILE_CALLBACK", "", "hasSpeakableChars", "", "s", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WatchdogKt {
    private static final String FILE_CALLBACK = "android.speech.tts.FileSynthesisCallback";

    public static final boolean hasSpeakableChars(String s) {
        Character.UnicodeScript unicodeScriptOf;
        Intrinsics.checkNotNullParameter(s, "s");
        int iCharCount = 0;
        while (iCharCount < s.length()) {
            int iCodePointAt = s.codePointAt(iCharCount);
            if (Character.isLetterOrDigit(iCodePointAt) && (unicodeScriptOf = Character.UnicodeScript.of(iCodePointAt)) != Character.UnicodeScript.HAN && unicodeScriptOf != Character.UnicodeScript.HIRAGANA && unicodeScriptOf != Character.UnicodeScript.KATAKANA && unicodeScriptOf != Character.UnicodeScript.HANGUL && unicodeScriptOf != Character.UnicodeScript.THAI) {
                return true;
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return false;
    }
}
