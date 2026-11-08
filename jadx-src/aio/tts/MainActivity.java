package aio.tts;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: MainActivity.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\t\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000bH\u0014J\b\u0010\u000e\u001a\u00020\u0006H\u0014J\b\u0010\u000f\u001a\u00020\u0006H\u0014J\b\u0010\u0010\u001a\u00020\u0006H\u0002J\b\u0010\u0011\u001a\u00020\u0006H\u0002R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Laio/tts/MainActivity;", "Landroid/app/Activity;", "<init>", "()V", "refreshPunctuation", "Lkotlin/Function0;", "", "whatsNewDialog", "Landroid/app/AlertDialog;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onSaveInstanceState", "outState", "onDestroy", "onResume", "applyDescriptions", "updateLanguageButtonDescription", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MainActivity extends Activity {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final String STATE_WHATS_NEW_OPEN = "whats_new_open";
    private Function0<Unit> refreshPunctuation;
    private AlertDialog whatsNewDialog;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setTitle(Edition.INSTANCE.getPLUS() ? "All In One TTS Plus" : "All In One TTS");
        if (Edition.INSTANCE.getPLUS()) {
            ((TextView) findViewById(R.id.appTitle)).setText("All In One TTS Plus");
        }
        final Context applicationContext = getApplicationContext();
        new Thread(new Runnable() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.onCreate$lambda$0(applicationContext);
            }
        }).start();
        ((Button) findViewById(R.id.btnGoogleTts)).setOnClickListener(new View.OnClickListener() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity mainActivity = this.f$0;
                mainActivity.startActivity(new Intent(mainActivity, (Class<?>) GoogleTtsSettingsActivity.class));
            }
        });
        ((Button) findViewById(R.id.btnVoices)).setOnClickListener(new View.OnClickListener() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity mainActivity = this.f$0;
                mainActivity.startActivity(new Intent(mainActivity, (Class<?>) VoicesActivity.class));
            }
        });
        ((Button) findViewById(R.id.btnVolumeRatePitch)).setOnClickListener(new View.OnClickListener() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity mainActivity = this.f$0;
                mainActivity.startActivity(new Intent(mainActivity, (Class<?>) VolumeRatePitchActivity.class));
            }
        });
        ((Button) findViewById(R.id.btnLanguageSwitching)).setOnClickListener(new View.OnClickListener() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity mainActivity = this.f$0;
                mainActivity.startActivity(new Intent(mainActivity, (Class<?>) LanguageSwitchingActivity.class));
            }
        });
        ((Button) findViewById(R.id.btnNumbers)).setOnClickListener(new View.OnClickListener() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity mainActivity = this.f$0;
                mainActivity.startActivity(new Intent(mainActivity, (Class<?>) NumbersActivity.class));
            }
        });
        ((Button) findViewById(R.id.btnPerApplication)).setOnClickListener(new View.OnClickListener() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity mainActivity = this.f$0;
                mainActivity.startActivity(new Intent(mainActivity, (Class<?>) PerApplicationActivity.class));
            }
        });
        final Button button = (Button) findViewById(R.id.btnPunctuation);
        final String[] strArr = {PunctuationReader.RAW, PunctuationReader.NONE, PunctuationReader.SOME, PunctuationReader.MOST, PunctuationReader.ALL};
        final String[] strArr2 = {"Engine decides", "None", "Some", "Most", "All"};
        final String[] strArr3 = {"Engine decides (no processing)", "None (no symbol is read)", "Some", "Most", "All"};
        this.refreshPunctuation = new AnonymousClass8(strArr2, strArr, button);
        onCreate$refreshPunctuationButton(strArr2, strArr, button);
        button.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity mainActivity = this.f$0;
                String[] strArr4 = strArr3;
                String[] strArr5 = strArr;
                new AlertDialog.Builder(mainActivity).setTitle("Punctuation and Symbols").setSingleChoiceItems(strArr4, RangesKt.coerceAtLeast(ArraysKt.indexOf(strArr5, Prefs.INSTANCE.punctuationLevel()), 0), new DialogInterface.OnClickListener() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda7
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        MainActivity.onCreate$lambda$8$lambda$7(strArr5, strArr, button, dialogInterface, i);
                    }
                }).show();
            }
        });
        ((Button) findViewById(R.id.btnSettings)).setOnClickListener(new View.OnClickListener() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity mainActivity = this.f$0;
                mainActivity.startActivity(new Intent(mainActivity, (Class<?>) SettingsActivity.class));
            }
        });
        final Button button2 = (Button) findViewById(R.id.btnRefresh);
        button2.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.onCreate$lambda$13(button2, this, view);
            }
        });
        ((Button) findViewById(R.id.btnClearAppData)).setOnClickListener(new View.OnClickListener() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity mainActivity = this.f$0;
                new AlertDialog.Builder(mainActivity).setMessage("This will clear all of All In One TTS's own settings, dictionary entries, and logs, and restart the app fresh. This cannot be undone.").setPositiveButton("Clear", new DialogInterface.OnClickListener() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda8
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        MainActivity.onCreate$lambda$15$lambda$14(mainActivity, dialogInterface, i);
                    }
                }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
            }
        });
        if (Prefs.INSTANCE.whatsNewHidden()) {
            return;
        }
        if (savedInstanceState == null || savedInstanceState.getBoolean(STATE_WHATS_NEW_OPEN)) {
            this.whatsNewDialog = WhatsNew.INSTANCE.show(this, new Function1() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MainActivity.onCreate$lambda$16(this.f$0, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    static final void onCreate$lambda$0(Context context) {
        PreferenceSync preferenceSync = PreferenceSync.INSTANCE;
        Intrinsics.checkNotNull(context);
        preferenceSync.updateAll(context, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$refreshPunctuationButton(String[] strArr, String[] strArr2, Button button) {
        button.setText(Desc.withDesc$default(Desc.INSTANCE, "Punctuation and Symbols: " + strArr[RangesKt.coerceAtLeast(ArraysKt.indexOf(strArr2, Prefs.INSTANCE.punctuationLevel()), 0)], Desc.PUNCTUATION, null, 4, null));
    }

    /* compiled from: MainActivity.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    /* renamed from: aio.tts.MainActivity$onCreate$8, reason: invalid class name */
    static final /* synthetic */ class AnonymousClass8 extends FunctionReferenceImpl implements Function0<Unit> {
        final /* synthetic */ String[] $levelLabels;
        final /* synthetic */ String[] $levelValues;
        final /* synthetic */ Button $punctuationButton;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass8(String[] strArr, String[] strArr2, Button button) {
            super(0, Intrinsics.Kotlin.class, "refreshPunctuationButton", "onCreate$refreshPunctuationButton([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;)V", 0);
            this.$levelLabels = strArr;
            this.$levelValues = strArr2;
            this.$punctuationButton = button;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            MainActivity.onCreate$refreshPunctuationButton(this.$levelLabels, this.$levelValues, this.$punctuationButton);
        }
    }

    static final void onCreate$lambda$8$lambda$7(String[] strArr, String[] strArr2, Button button, DialogInterface dialogInterface, int i) {
        Prefs.INSTANCE.setPunctuationLevel(strArr[i]);
        onCreate$refreshPunctuationButton(strArr2, strArr, button);
        dialogInterface.dismiss();
    }

    static final void onCreate$lambda$13(final Button button, final MainActivity mainActivity, View view) {
        button.setEnabled(false);
        final Context applicationContext = mainActivity.getApplicationContext();
        Toast.makeText(mainActivity, "Updating…", 0).show();
        new Thread(new Runnable() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.onCreate$lambda$13$lambda$12(applicationContext, mainActivity, button);
            }
        }).start();
    }

    static final void onCreate$lambda$13$lambda$12(Context context, final MainActivity mainActivity, final Button button) {
        File[] fileArrListFiles;
        try {
            File cacheDir = context.getCacheDir();
            if (cacheDir != null && (fileArrListFiles = cacheDir.listFiles()) != null) {
                for (File file : fileArrListFiles) {
                    Intrinsics.checkNotNull(file);
                    FilesKt.deleteRecursively(file);
                }
            }
            PreferenceSync preferenceSync = PreferenceSync.INSTANCE;
            Intrinsics.checkNotNull(context);
            preferenceSync.updateAll(context, true);
        } finally {
            mainActivity.runOnUiThread(new Runnable() { // from class: aio.tts.MainActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.onCreate$lambda$13$lambda$12$lambda$11(button, mainActivity);
                }
            });
        }
    }

    static final void onCreate$lambda$13$lambda$12$lambda$11(Button button, MainActivity mainActivity) {
        button.setEnabled(true);
        mainActivity.updateLanguageButtonDescription();
        Toast.makeText(mainActivity, "Cache cleared and all voices updated", 1).show();
    }

    static final void onCreate$lambda$15$lambda$14(MainActivity mainActivity, DialogInterface dialogInterface, int i) {
        ActivityManager activityManager = (ActivityManager) mainActivity.getSystemService(ActivityManager.class);
        if (activityManager != null) {
            activityManager.clearApplicationUserData();
        }
    }

    static final Unit onCreate$lambda$16(MainActivity mainActivity, boolean z) {
        mainActivity.whatsNewDialog = null;
        if (z && !mainActivity.isFinishing()) {
            mainActivity.applyDescriptions();
        }
        return Unit.INSTANCE;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        AlertDialog alertDialog = this.whatsNewDialog;
        boolean z = false;
        if (alertDialog != null && alertDialog.isShowing()) {
            z = true;
        }
        outState.putBoolean(STATE_WHATS_NEW_OPEN, z);
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

    /* compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Laio/tts/MainActivity$Companion;", "", "<init>", "()V", "STATE_WHATS_NEW_OPEN", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        updateLanguageButtonDescription();
        applyDescriptions();
    }

    private final void applyDescriptions() {
        ((Button) findViewById(R.id.btnGoogleTts)).setText(Desc.withDesc$default(Desc.INSTANCE, "Google TTS Settings", Desc.GOOGLE_TTS_INTRO, null, 4, null));
        ((Button) findViewById(R.id.btnVoices)).setText(Desc.withDesc$default(Desc.INSTANCE, "Voices", Desc.VOICES, null, 4, null));
        ((Button) findViewById(R.id.btnVolumeRatePitch)).setText(Desc.withDesc$default(Desc.INSTANCE, "Volume, Rate and Pitch", Desc.VOLUME_RATE_PITCH, null, 4, null));
        ((Button) findViewById(R.id.btnNumbers)).setText(Desc.withDesc$default(Desc.INSTANCE, "Numbers, Mobile & OTP", Desc.NUMBERS_BTN, null, 4, null));
        ((Button) findViewById(R.id.btnSettings)).setText(Desc.withDesc$default(Desc.INSTANCE, "Other Settings", Desc.OTHER_BTN, null, 4, null));
        ((Button) findViewById(R.id.btnPerApplication)).setText(Desc.withDesc$default(Desc.INSTANCE, "Per Application Voices", Desc.PER_APP, null, 4, null));
        Button button = (Button) findViewById(R.id.btnRefresh);
        button.setText(Desc.withDesc$default(Desc.INSTANCE, "Clear App Cache & Update", Desc.CLEAR_CACHE, null, 4, null));
        button.setContentDescription(Desc.INSTANCE.on() ? null : "Clear App Cache and Update. Clears this app's cache and refreshes all voices and preferences.");
        ((Button) findViewById(R.id.btnClearAppData)).setText(Desc.withDesc$default(Desc.INSTANCE, "Clear App Data & Reset All Settings", Desc.CLEAR_DATA, null, 4, null));
        Function0<Unit> function0 = this.refreshPunctuation;
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final void updateLanguageButtonDescription() {
        ((Button) findViewById(R.id.btnLanguageSwitching)).setContentDescription("Languages. " + VoiceCatalog.INSTANCE.languagesSummaryForAnnouncement());
    }
}
