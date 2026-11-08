package aio.tts;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* compiled from: SettingsActivity.kt */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\b\u0010\u0010\u001a\u00020\rH\u0014J\b\u0010\u0011\u001a\u00020\rH\u0014J\b\u0010\u0012\u001a\u00020\u0013H\u0002J\b\u0010\u0014\u001a\u00020\rH\u0002J\b\u0010\u0015\u001a\u00020\rH\u0002J-\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\u000e\u0010\u0019\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00130\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016¢\u0006\u0002\u0010\u001dJ\u001e\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00130\"H\u0002J\b\u0010#\u001a\u00020$H\u0002JE\u0010%\u001a\u00020 26\u0010&\u001a\u001c\u0012\u0018\b\u0001\u0012\u0014\u0012\u0004\u0012\u00020\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0(0'0\u001a\"\u0014\u0012\u0004\u0012\u00020\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0(0'H\u0002¢\u0006\u0002\u0010)J\b\u0010*\u001a\u00020\rH\u0002J \u0010+\u001a\u00020\r2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020-H\u0002J \u00101\u001a\u00020\r2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020-H\u0002J\u0018\u00102\u001a\u00020\r2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Laio/tts/SettingsActivity;", "Landroid/app/Activity;", "<init>", "()V", "quickStartCheckBox", "Landroid/widget/CheckBox;", "diagnosticCheckBox", "detailedToggle", "Landroid/widget/Button;", "moreVoicesButton", "whatsNewDialog", "Landroid/app/AlertDialog;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "onDestroy", "moreVoicesText", "", "refreshMoreVoices", "onMoreVoices", "onRequestPermissionsResult", "requestCode", "", "permissions", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "describeRow", "row", "Landroid/widget/LinearLayout;", "descriptions", "", "spacer", "Landroid/widget/TextView;", "smallButtonRow", "actions", "Lkotlin/Pair;", "Lkotlin/Function0;", "([Lkotlin/Pair;)Landroid/widget/LinearLayout;", "refreshStatus", "shareLog", "hasContent", "", "file", "Ljava/io/File;", "full", "saveLogToDocuments", "openLog", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SettingsActivity extends Activity {
    private Button detailedToggle;
    private CheckBox diagnosticCheckBox;
    private Button moreVoicesButton;
    private CheckBox quickStartCheckBox;
    private AlertDialog whatsNewDialog;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("Other Settings");
        SettingsActivity settingsActivity = this;
        LinearLayout linearLayout = new LinearLayout(settingsActivity);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(48, 24, 48, 48);
        linearLayout.addView(UiHelpersKt.centeredHeader(settingsActivity, "Other Settings"));
        Button button = new Button(settingsActivity);
        button.setTextSize(20.0f);
        button.setAllCaps(false);
        button.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onMoreVoices();
            }
        });
        this.moreVoicesButton = button;
        linearLayout.addView(button);
        linearLayout.addView(spacer());
        Button button2 = new Button(settingsActivity);
        button2.setText(Desc.withDesc$default(Desc.INSTANCE, "Dictionary", Desc.DICTIONARY, null, 4, null));
        button2.setTextSize(20.0f);
        button2.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsActivity settingsActivity2 = this.f$0;
                settingsActivity2.startActivity(new Intent(settingsActivity2, (Class<?>) DictionaryActivity.class));
            }
        });
        linearLayout.addView(button2);
        linearLayout.addView(spacer());
        CheckBox checkBox = new CheckBox(settingsActivity);
        checkBox.setTextSize(18.0f);
        checkBox.setText(Desc.withDesc$default(Desc.INSTANCE, "Read whole message in one language", Desc.WHOLE_MESSAGE, null, 4, null));
        checkBox.setChecked(Prefs.INSTANCE.seamlessReadingModeEnabled());
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsActivity.onCreate$lambda$5$lambda$4(compoundButton, z);
            }
        });
        linearLayout.addView(checkBox);
        linearLayout.addView(spacer());
        CheckBox checkBox2 = new CheckBox(settingsActivity);
        checkBox2.setTextSize(18.0f);
        checkBox2.setChecked(Prefs.INSTANCE.quickStartReadingEnabled());
        checkBox2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsActivity.onCreate$lambda$7$lambda$6(compoundButton, z);
            }
        });
        this.quickStartCheckBox = checkBox2;
        linearLayout.addView(checkBox2);
        linearLayout.addView(spacer());
        CheckBox checkBox3 = new CheckBox(settingsActivity);
        checkBox3.setTextSize(18.0f);
        checkBox3.setText(Desc.INSTANCE.withDesc("Keep running in background", Desc.KEEP_RUNNING, Desc.KEEP_RUNNING_EN));
        checkBox3.setChecked(Prefs.INSTANCE.keepRunningEnabled());
        checkBox3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda7
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsActivity.onCreate$lambda$9$lambda$8(compoundButton, z);
            }
        });
        linearLayout.addView(checkBox3);
        linearLayout.addView(spacer());
        LinearLayout linearLayoutSmallButtonRow = smallButtonRow(TuplesKt.to("Backup Settings", new Function0() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SettingsActivity.onCreate$lambda$10(this.f$0);
            }
        }), TuplesKt.to("Restore Settings", new Function0() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SettingsActivity.onCreate$lambda$11(this.f$0);
            }
        }));
        describeRow(linearLayoutSmallButtonRow, CollectionsKt.listOf((Object[]) new String[]{Desc.SETTINGS_EXPORT, Desc.SETTINGS_IMPORT}));
        linearLayout.addView(linearLayoutSmallButtonRow);
        linearLayout.addView(spacer());
        Button button3 = new Button(settingsActivity);
        button3.setTextSize(20.0f);
        button3.setAllCaps(false);
        button3.setText(Desc.INSTANCE.withDesc("What's new and help language: " + WhatsNew.INSTANCE.nameOf(Desc.INSTANCE.lang()), Desc.WHATS_NEW_BTN, Desc.WHATS_NEW_BTN_EN));
        button3.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsActivity.onCreate$lambda$15$lambda$14(this.f$0, view);
            }
        });
        linearLayout.addView(button3);
        linearLayout.addView(spacer());
        CheckBox checkBox4 = new CheckBox(settingsActivity);
        checkBox4.setTextSize(18.0f);
        checkBox4.setChecked(DiagnosticLog.INSTANCE.getActive());
        checkBox4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda12
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsActivity.onCreate$lambda$17$lambda$16(this.f$0, compoundButton, z);
            }
        });
        this.diagnosticCheckBox = checkBox4;
        linearLayout.addView(checkBox4);
        LinearLayout linearLayoutSmallButtonRow2 = smallButtonRow(TuplesKt.to("Clear", new Function0() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SettingsActivity.onCreate$lambda$18(this.f$0);
            }
        }), TuplesKt.to("Share", new Function0() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SettingsActivity.onCreate$lambda$19(this.f$0);
            }
        }), TuplesKt.to("Open", new Function0() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SettingsActivity.onCreate$lambda$20(this.f$0);
            }
        }));
        describeRow(linearLayoutSmallButtonRow2, CollectionsKt.listOf((Object[]) new String[]{Desc.LOG_CLEAR, Desc.LOG_SHARE, Desc.LOG_OPEN}));
        linearLayout.addView(linearLayoutSmallButtonRow2);
        LinearLayout linearLayoutSmallButtonRow3 = smallButtonRow(TuplesKt.to("Save copy to Documents", new Function0() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SettingsActivity.onCreate$lambda$22(this.f$0);
            }
        }));
        describeRow(linearLayoutSmallButtonRow3, CollectionsKt.listOf(Desc.LOG_SAVE));
        linearLayout.addView(linearLayoutSmallButtonRow3);
        linearLayout.addView(spacer());
        Button button4 = new Button(settingsActivity);
        button4.setTextSize(18.0f);
        button4.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsActivity.onCreate$lambda$25$lambda$24(this.f$0, view);
            }
        });
        this.detailedToggle = button4;
        linearLayout.addView(button4);
        LinearLayout linearLayoutSmallButtonRow4 = smallButtonRow(TuplesKt.to("Clear", new Function0() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SettingsActivity.onCreate$lambda$26(this.f$0);
            }
        }), TuplesKt.to("Share", new Function0() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SettingsActivity.onCreate$lambda$27(this.f$0);
            }
        }), TuplesKt.to("Open", new Function0() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SettingsActivity.onCreate$lambda$28(this.f$0);
            }
        }));
        describeRow(linearLayoutSmallButtonRow4, CollectionsKt.listOf((Object[]) new String[]{Desc.LOG_CLEAR, Desc.LOG_SHARE, Desc.LOG_OPEN}));
        linearLayout.addView(linearLayoutSmallButtonRow4);
        LinearLayout linearLayoutSmallButtonRow5 = smallButtonRow(TuplesKt.to("Save copy to Documents", new Function0() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SettingsActivity.onCreate$lambda$30(this.f$0);
            }
        }));
        describeRow(linearLayoutSmallButtonRow5, CollectionsKt.listOf(Desc.LOG_SAVE));
        linearLayout.addView(linearLayoutSmallButtonRow5);
        ScrollView scrollView = new ScrollView(settingsActivity);
        scrollView.addView(linearLayout);
        setContentView(scrollView);
        refreshStatus();
    }

    static final void onCreate$lambda$5$lambda$4(CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        Prefs.INSTANCE.setSeamlessReadingModeEnabled(z);
    }

    static final void onCreate$lambda$7$lambda$6(CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        Prefs.INSTANCE.setQuickStartReadingEnabled(z);
    }

    static final void onCreate$lambda$9$lambda$8(CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        Prefs.INSTANCE.setKeepRunningEnabled(z);
        KeepRunning.INSTANCE.apply();
    }

    static final Unit onCreate$lambda$10(SettingsActivity settingsActivity) throws JSONException {
        ImportExport.INSTANCE.exportSettings(settingsActivity);
        return Unit.INSTANCE;
    }

    static final Unit onCreate$lambda$11(SettingsActivity settingsActivity) {
        ImportExport.INSTANCE.importSettings(settingsActivity);
        return Unit.INSTANCE;
    }

    static final void onCreate$lambda$15$lambda$14(final SettingsActivity settingsActivity, View view) {
        AlertDialog alertDialog = settingsActivity.whatsNewDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        settingsActivity.whatsNewDialog = WhatsNew.INSTANCE.show(settingsActivity, new Function1() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SettingsActivity.onCreate$lambda$15$lambda$14$lambda$13(this.f$0, ((Boolean) obj).booleanValue());
            }
        });
    }

    static final Unit onCreate$lambda$15$lambda$14$lambda$13(SettingsActivity settingsActivity, boolean z) {
        settingsActivity.whatsNewDialog = null;
        if (z && !settingsActivity.isFinishing()) {
            settingsActivity.recreate();
        }
        return Unit.INSTANCE;
    }

    static final void onCreate$lambda$17$lambda$16(SettingsActivity settingsActivity, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        DiagnosticLog.INSTANCE.setActive(z);
        settingsActivity.refreshStatus();
    }

    static final Unit onCreate$lambda$18(SettingsActivity settingsActivity) {
        DiagnosticLog.INSTANCE.clear();
        settingsActivity.refreshStatus();
        return Unit.INSTANCE;
    }

    static final Unit onCreate$lambda$19(SettingsActivity settingsActivity) {
        settingsActivity.shareLog(DiagnosticLog.INSTANCE.hasContent(), DiagnosticLog.INSTANCE.fileForSharing(), false);
        return Unit.INSTANCE;
    }

    static final Unit onCreate$lambda$20(SettingsActivity settingsActivity) {
        settingsActivity.openLog(DiagnosticLog.INSTANCE.hasContent(), DiagnosticLog.INSTANCE.fileForSharing());
        return Unit.INSTANCE;
    }

    static final Unit onCreate$lambda$22(SettingsActivity settingsActivity) {
        settingsActivity.saveLogToDocuments(DiagnosticLog.INSTANCE.hasContent(), DiagnosticLog.INSTANCE.fileForSharing(), false);
        return Unit.INSTANCE;
    }

    static final void onCreate$lambda$25$lambda$24(SettingsActivity settingsActivity, View view) {
        if (DetailedLog.INSTANCE.getActive()) {
            DetailedLog.INSTANCE.stop();
        } else {
            DetailedLog.INSTANCE.start();
        }
        settingsActivity.refreshStatus();
    }

    static final Unit onCreate$lambda$26(SettingsActivity settingsActivity) {
        DetailedLog.INSTANCE.clear();
        settingsActivity.refreshStatus();
        return Unit.INSTANCE;
    }

    static final Unit onCreate$lambda$27(SettingsActivity settingsActivity) {
        settingsActivity.shareLog(DetailedLog.INSTANCE.hasContent(), DetailedLog.INSTANCE.fileForSharing(), true);
        return Unit.INSTANCE;
    }

    static final Unit onCreate$lambda$28(SettingsActivity settingsActivity) {
        settingsActivity.openLog(DetailedLog.INSTANCE.hasContent(), DetailedLog.INSTANCE.fileForSharing());
        return Unit.INSTANCE;
    }

    static final Unit onCreate$lambda$30(SettingsActivity settingsActivity) {
        settingsActivity.saveLogToDocuments(DetailedLog.INSTANCE.hasContent(), DetailedLog.INSTANCE.fileForSharing(), true);
        return Unit.INSTANCE;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        refreshStatus();
        refreshMoreVoices();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        AlertDialog alertDialog = this.whatsNewDialog;
        if (alertDialog != null) {
            alertDialog.setOnDismissListener(null);
        }
        AlertDialog alertDialog2 = this.whatsNewDialog;
        if (alertDialog2 != null) {
            alertDialog2.dismiss();
        }
        this.whatsNewDialog = null;
        super.onDestroy();
    }

    private final String moreVoicesText() {
        String str;
        if (!VoiceFolder.INSTANCE.hasAccess()) {
            return "More voices, step 1 of 3. Allow access to files. Opens an Android page: turn on All files access for this app, then come back.";
        }
        if (!VoiceFolder.INSTANCE.exists()) {
            return "More voices, step 2 of 3. Create the folder All In One TTS Voices in internal storage.";
        }
        int size = ExternalVoices.INSTANCE.getExtraNames().size();
        if (size > 0) {
            str = ": " + size + " extra voice" + (size == 1 ? "" : "s") + " found (" + CollectionsKt.joinToString$default(ExternalVoices.INSTANCE.getExtraNames(), ", ", null, null, 0, null, null, 62, null) + ").";
        } else {
            str = ".";
        }
        return "More voices, step 3 of 3. The folder All In One TTS Voices is ready" + str + " Copy voice files (a .dat and a .hdr for each voice) into it, then press here to check the folder.";
    }

    private final void refreshMoreVoices() {
        Button button = this.moreVoicesButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("moreVoicesButton");
            button = null;
        }
        button.setText(Desc.withDesc$default(Desc.INSTANCE, moreVoicesText(), Desc.MORE_VOICES, null, 4, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onMoreVoices() {
        if (!VoiceFolder.INSTANCE.hasAccess()) {
            VoiceFolder.INSTANCE.askAccess(this);
        } else if (!VoiceFolder.INSTANCE.exists()) {
            Toast.makeText(this, VoiceFolder.INSTANCE.create() ? "Folder All In One TTS Voices created in internal storage. Copy the voice files into it." : "The folder could not be created.", 1).show();
            refreshMoreVoices();
        } else {
            Toast.makeText(this, "Checking the folder...", 0).show();
            new Thread(new Runnable() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SettingsActivity.onMoreVoices$lambda$33(this.f$0);
                }
            }, "voice-folder-check").start();
        }
    }

    static final void onMoreVoices$lambda$33(final SettingsActivity settingsActivity) {
        final String str;
        VocalizerVoiceBackend companion = VocalizerVoiceBackend.INSTANCE.getInstance();
        if (companion != null) {
            companion.rescanVoices();
            str = null;
        } else {
            ExternalVoices.INSTANCE.scan(SetsKt.emptySet());
            str = "The voices are loaded when the speech service starts.";
        }
        settingsActivity.runOnUiThread(new Runnable() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                SettingsActivity.onMoreVoices$lambda$33$lambda$32(this.f$0, str);
            }
        });
    }

    static final void onMoreVoices$lambda$33$lambda$32(SettingsActivity settingsActivity, String str) {
        int size = ExternalVoices.INSTANCE.getExtraNames().size();
        Toast.makeText(settingsActivity, (size > 0 ? size + " extra voice(s) found: " + CollectionsKt.joinToString$default(ExternalVoices.INSTANCE.getExtraNames(), ", ", null, null, 0, null, null, 62, null) + "." : "No extra voices found in All In One TTS Voices.") + (str != null ? " " + str : ""), 1).show();
        settingsActivity.refreshMoreVoices();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        ImportExport.INSTANCE.onRequestPermissionsResult(this, requestCode, grantResults);
        if (requestCode == 4401) {
            refreshMoreVoices();
        }
    }

    private final void describeRow(LinearLayout row, List<String> descriptions) {
        int childCount = row.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = row.getChildAt(i);
            Button button = childAt instanceof Button ? (Button) childAt : null;
            if (button != null) {
                Desc.INSTANCE.describeButton(button, (String) CollectionsKt.getOrNull(descriptions, i));
            }
        }
    }

    private final TextView spacer() {
        TextView textView = new TextView(this);
        textView.setPadding(0, 24, 0, 0);
        return textView;
    }

    private final LinearLayout smallButtonRow(Pair<String, ? extends Function0<Unit>>... actions) {
        SettingsActivity settingsActivity = this;
        LinearLayout linearLayout = new LinearLayout(settingsActivity);
        linearLayout.setOrientation(0);
        linearLayout.setPadding(0, 16, 0, 0);
        for (Pair<String, ? extends Function0<Unit>> pair : actions) {
            String strComponent1 = pair.component1();
            final Function0<Unit> function0Component2 = pair.component2();
            Button button = new Button(settingsActivity);
            button.setText(strComponent1);
            button.setTextSize(16.0f);
            button.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda17
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    function0Component2.invoke();
                }
            });
            linearLayout.addView(button, new LinearLayout.LayoutParams(0, -2, 1.0f));
        }
        return linearLayout;
    }

    private final void refreshStatus() {
        CheckBox checkBox = this.quickStartCheckBox;
        Button button = null;
        if (checkBox == null) {
            Intrinsics.throwUninitializedPropertyAccessException("quickStartCheckBox");
            checkBox = null;
        }
        checkBox.setText(Desc.INSTANCE.withDesc("Quick Start Reading", Desc.QUICK_START, Desc.QUICK_START_EN));
        CheckBox checkBox2 = this.diagnosticCheckBox;
        if (checkBox2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("diagnosticCheckBox");
            checkBox2 = null;
        }
        checkBox2.setText(Desc.withDesc$default(Desc.INSTANCE, "Enable Logging", Desc.LOGGING, null, 4, null) + "\n" + DiagnosticLog.INSTANCE.sizeBytes() + " bytes");
        Button button2 = this.detailedToggle;
        if (button2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("detailedToggle");
        } else {
            button = button2;
        }
        button.setText(Desc.withDesc$default(Desc.INSTANCE, DetailedLog.INSTANCE.getActive() ? "Short Detailed Logging. Tap to Stop Recording" : "Short Detailed Logging. Tap to Start Recording", Desc.DETAILED_LOG, null, 4, null) + "\n" + DetailedLog.INSTANCE.sizeBytes() + " bytes");
    }

    private final void shareLog(boolean hasContent, File file, boolean full) {
        if (hasContent) {
            File file2 = new File(getCacheDir(), "shared_logs");
            file2.mkdirs();
            File[] fileArrListFiles = file2.listFiles();
            if (fileArrListFiles != null) {
                for (File file3 : fileArrListFiles) {
                    file3.delete();
                }
            }
            File file4 = new File(file2, LogNames.INSTANCE.fileName(full));
            FilesKt.copyTo$default(file, file4, true, 0, 4, null);
            Uri uriForFile = FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", file4);
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.STREAM", uriForFile);
            intent.addFlags(1);
            startActivity(Intent.createChooser(intent, "Share log"));
        }
    }

    private final void saveLogToDocuments(boolean hasContent, final File file, boolean full) {
        if (!hasContent) {
            Toast.makeText(this, "Nothing to save yet", 0).show();
            return;
        }
        final String strFileName = LogNames.INSTANCE.fileName(full);
        Toast.makeText(this, "Saving...", 0).show();
        new Thread(new Runnable() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                SettingsActivity.saveLogToDocuments$lambda$40(this.f$0, file, strFileName);
            }
        }).start();
    }

    static final void saveLogToDocuments$lambda$40(final SettingsActivity settingsActivity, File file, String str) {
        DocumentsSaver documentsSaver = DocumentsSaver.INSTANCE;
        Context applicationContext = settingsActivity.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        final String strSaveCopy = documentsSaver.saveCopy(applicationContext, file, str);
        settingsActivity.runOnUiThread(new Runnable() { // from class: aio.tts.SettingsActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                SettingsActivity settingsActivity2 = this.f$0;
                String str2 = strSaveCopy;
                Toast.makeText(settingsActivity2, str2 != null ? "Saved to " + str2 : "Couldn't save to Documents", 1).show();
            }
        });
    }

    private final void openLog(boolean hasContent, File file) {
        if (hasContent) {
            Uri uriForFile = FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", file);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(uriForFile, "text/plain");
            intent.addFlags(1);
            startActivity(Intent.createChooser(intent, "Open log"));
        }
    }
}
