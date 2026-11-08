package aio.tts;

import android.app.Activity;
import android.os.Bundle;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LanguageSwitchingActivity.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014¨\u0006\b"}, d2 = {"Laio/tts/LanguageSwitchingActivity;", "Landroid/app/Activity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LanguageSwitchingActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("Languages");
        LanguageSwitchingActivity languageSwitchingActivity = this;
        LinearLayout linearLayout = new LinearLayout(languageSwitchingActivity);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(48, 24, 48, 48);
        linearLayout.addView(UiHelpersKt.centeredHeader(languageSwitchingActivity, "Languages"));
        String strPick$default = Desc.pick$default(Desc.INSTANCE, Desc.LANGUAGES_INTRO, null, 2, null);
        if (strPick$default != null) {
            TextView textView = new TextView(languageSwitchingActivity);
            textView.setText(strPick$default);
            textView.setTextSize(18.0f);
            textView.setPadding(0, 0, 0, 24);
            linearLayout.addView(textView);
        }
        for (Pair<String, String> pair : VoiceCatalog.INSTANCE.getLANGUAGES()) {
            final String strComponent1 = pair.component1();
            String strComponent2 = pair.component2();
            CheckBox checkBox = new CheckBox(languageSwitchingActivity);
            checkBox.setText(strComponent2);
            checkBox.setTextSize(20.0f);
            checkBox.setChecked(Prefs.INSTANCE.isLanguageEnabled(strComponent1));
            checkBox.setPadding(checkBox.getPaddingLeft(), 32, checkBox.getPaddingRight(), 32);
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: aio.tts.LanguageSwitchingActivity$$ExternalSyntheticLambda0
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    LanguageSwitchingActivity.onCreate$lambda$2(strComponent1, this, compoundButton, z);
                }
            });
            linearLayout.addView(checkBox);
        }
        ScrollView scrollView = new ScrollView(languageSwitchingActivity);
        scrollView.addView(linearLayout);
        setContentView(scrollView);
    }

    static final void onCreate$lambda$2(String str, LanguageSwitchingActivity languageSwitchingActivity, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        Prefs.INSTANCE.setLanguageEnabled(str, z);
        if (z) {
            PlaySample.INSTANCE.resolveVoiceName(languageSwitchingActivity, str);
        }
    }
}
