package aio.tts;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UiHelpers.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"centeredHeader", "Landroid/widget/TextView;", "context", "Landroid/content/Context;", "text", "", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class UiHelpersKt {
    public static final TextView centeredHeader(Context context, String text) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(text, "text");
        TextView textView = new TextView(context);
        textView.setText(text);
        textView.setTextSize(26.0f);
        textView.setGravity(17);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setPadding(24, 56, 24, 56);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        return textView;
    }
}
