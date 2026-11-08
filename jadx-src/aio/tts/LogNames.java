package aio.tts;

import android.os.Build;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* compiled from: Logging.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Laio/tts/LogNames;", "", "<init>", "()V", "fileName", "", "full", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LogNames {
    public static final LogNames INSTANCE = new LogNames();

    private LogNames() {
    }

    public final String fileName(boolean full) {
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        if (MANUFACTURER.length() > 0) {
            char upperCase = Character.toUpperCase(MANUFACTURER.charAt(0));
            String strSubstring = MANUFACTURER.substring(1);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            MANUFACTURER = upperCase + strSubstring;
        }
        String strReplace = new Regex("[\\\\/:*?\"<>|]").replace(MANUFACTURER + " " + Build.MODEL, "-");
        Date date = new Date();
        return (full ? "Full Log" : "Log") + " " + strReplace + " " + new SimpleDateFormat("dd MMM yyyy", Locale.US).format(date) + " " + new SimpleDateFormat("hh, mm a", Locale.US).format(date) + ".txt";
    }
}
