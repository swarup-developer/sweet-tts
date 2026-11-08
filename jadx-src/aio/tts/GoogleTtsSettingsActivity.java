package aio.tts;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: GoogleTtsSettingsActivity.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J(\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u000eH\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\b\u0010\u0011\u001a\u00020\u0005H\u0002J\b\u0010\u0012\u001a\u00020\u0005H\u0002J\b\u0010\u0013\u001a\u00020\u0005H\u0002¨\u0006\u0014"}, d2 = {"Laio/tts/GoogleTtsSettingsActivity;", "Landroid/app/Activity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "actionButton", "Landroid/widget/Button;", "title", "", "description", "onClick", "Lkotlin/Function0;", "spacer", "Landroid/widget/TextView;", "openGoogleTtsAppInfo", "openGoogleTtsLanguageDetection", "openGoogleVoiceDownload", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GoogleTtsSettingsActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("Google TTS Settings");
        GoogleTtsSettingsActivity googleTtsSettingsActivity = this;
        LinearLayout linearLayout = new LinearLayout(googleTtsSettingsActivity);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(48, 24, 48, 48);
        linearLayout.addView(UiHelpersKt.centeredHeader(googleTtsSettingsActivity, "Google TTS Settings"));
        String strPick$default = Desc.pick$default(Desc.INSTANCE, Desc.GOOGLE_TTS_INTRO, null, 2, null);
        if (strPick$default != null) {
            TextView textView = new TextView(googleTtsSettingsActivity);
            textView.setText(strPick$default);
            textView.setTextSize(18.0f);
            textView.setPadding(0, 0, 0, 24);
            linearLayout.addView(textView);
        }
        linearLayout.addView(actionButton("Clear Google TTS Data", Desc.INSTANCE.pick(Desc.GOOGLE_CLEAR_DATA, Desc.GOOGLE_CLEAR_DATA_EN), new Function0() { // from class: aio.tts.GoogleTtsSettingsActivity$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GoogleTtsSettingsActivity.onCreate$lambda$2(this.f$0);
            }
        }));
        linearLayout.addView(spacer());
        linearLayout.addView(actionButton("Turn Off Language Detection in Google TTS", Desc.INSTANCE.pick(Desc.GOOGLE_LANG_DETECT, Desc.GOOGLE_LANG_DETECT_EN), new Function0() { // from class: aio.tts.GoogleTtsSettingsActivity$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GoogleTtsSettingsActivity.onCreate$lambda$3(this.f$0);
            }
        }));
        linearLayout.addView(spacer());
        linearLayout.addView(actionButton("Download Google TTS Voices for only the required languages", Desc.INSTANCE.pick(Desc.GOOGLE_DOWNLOAD, Desc.GOOGLE_DOWNLOAD_EN), new Function0() { // from class: aio.tts.GoogleTtsSettingsActivity$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GoogleTtsSettingsActivity.onCreate$lambda$4(this.f$0);
            }
        }));
        ScrollView scrollView = new ScrollView(googleTtsSettingsActivity);
        scrollView.addView(linearLayout);
        setContentView(scrollView);
    }

    static final Unit onCreate$lambda$2(GoogleTtsSettingsActivity googleTtsSettingsActivity) {
        googleTtsSettingsActivity.openGoogleTtsAppInfo();
        return Unit.INSTANCE;
    }

    static final Unit onCreate$lambda$3(GoogleTtsSettingsActivity googleTtsSettingsActivity) {
        googleTtsSettingsActivity.openGoogleTtsLanguageDetection();
        return Unit.INSTANCE;
    }

    static final Unit onCreate$lambda$4(GoogleTtsSettingsActivity googleTtsSettingsActivity) {
        googleTtsSettingsActivity.openGoogleVoiceDownload();
        return Unit.INSTANCE;
    }

    private final Button actionButton(String title, String description, final Function0<Unit> onClick) {
        Button button = new Button(this);
        button.setText(description == null ? title : title + "\n" + description);
        button.setTextSize(18.0f);
        button.setAllCaps(false);
        button.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.GoogleTtsSettingsActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                onClick.invoke();
            }
        });
        return button;
    }

    private final TextView spacer() {
        TextView textView = new TextView(this);
        textView.setPadding(0, 24, 0, 0);
        return textView;
    }

    private final void openGoogleTtsAppInfo() {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:com.google.android.tts"));
            startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(this, "Couldn't open App Info: " + e.getMessage(), 1).show();
        }
    }

    private final void openGoogleTtsLanguageDetection() {
        try {
            Intent intent = new Intent("android.speech.tts.engine.CONFIGURE_ENGINE");
            intent.setPackage(GoogleVoiceBackend.ENGINE_PACKAGE);
            startActivity(intent);
        } catch (Exception unused) {
            try {
                startActivity(new Intent("com.android.settings.TTS_SETTINGS"));
                Toast.makeText(this, "Tap the gear next to Speech Services by Google", 1).show();
            } catch (Exception e) {
                Toast.makeText(this, "Couldn't open Text-to-Speech settings: " + e.getMessage(), 1).show();
            }
        }
    }

    private final void openGoogleVoiceDownload() {
        try {
            Intent intent = new Intent("android.speech.tts.engine.INSTALL_TTS_DATA");
            intent.setPackage(GoogleVoiceBackend.ENGINE_PACKAGE);
            startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(this, "Couldn't open Google voice download: " + e.getMessage(), 1).show();
        }
    }
}
