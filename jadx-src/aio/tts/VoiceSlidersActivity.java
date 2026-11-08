package aio.tts;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: VoiceSlidersActivity.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014JD\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u0013H\u0002J4\u0010\u0014\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u000f2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u0013H\u0002¨\u0006\u0017"}, d2 = {"Laio/tts/VoiceSlidersActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "buildScaledSlider", "Landroid/widget/LinearLayout;", "context", "Landroid/content/Context;", "label", "", "rawValue", "", "rawMin", "rawMax", "onChanged", "Lkotlin/Function1;", "buildSlider", "initialValue", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VoiceSlidersActivity extends AppCompatActivity {
    public static final String EXTRA_VOICE_NAME = "voice_name";
    private static final int GOOGLE_PITCH_MAX = 420;
    private static final int GOOGLE_PITCH_MIN = 20;
    private static final int GOOGLE_RATE_MAX = 560;
    private static final int GOOGLE_RATE_MIN = 20;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        final VoiceSlidersActivity voiceSlidersActivity;
        Object next;
        super.onCreate(savedInstanceState);
        final String stringExtra = getIntent().getStringExtra(EXTRA_VOICE_NAME);
        if (stringExtra == null) {
            stringExtra = "default";
        }
        String str = stringExtra + " Voice Preferences";
        setTitle(str);
        VoiceSlidersActivity voiceSlidersActivity2 = this;
        LinearLayout linearLayout = new LinearLayout(voiceSlidersActivity2);
        linearLayout.setOrientation(1);
        linearLayout.addView(UiHelpersKt.centeredHeader(voiceSlidersActivity2, str));
        String strPick$default = Desc.pick$default(Desc.INSTANCE, Desc.SLIDER_INTRO, null, 2, null);
        if (strPick$default != null) {
            TextView textView = new TextView(voiceSlidersActivity2);
            textView.setText(strPick$default);
            textView.setTextSize(18.0f);
            textView.setPadding(32, 0, 32, 16);
            linearLayout.addView(textView);
        }
        LinearLayout linearLayout2 = new LinearLayout(voiceSlidersActivity2);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(32, 16, 32, 32);
        if (!StringsKt.startsWith$default(stringExtra, VoiceCatalog.GOOGLE_VOICE_PREFIX, false, 2, (Object) null) && !ExternalEngines.INSTANCE.isExternalVoice(stringExtra)) {
            linearLayout2.addView(buildSlider(voiceSlidersActivity2, "Volume", Prefs.INSTANCE.volumeFor(stringExtra), new Function1() { // from class: aio.tts.VoiceSlidersActivity$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return VoiceSlidersActivity.onCreate$lambda$4(stringExtra, ((Integer) obj).intValue());
                }
            }));
        }
        if (StringsKt.startsWith$default(stringExtra, VoiceCatalog.GOOGLE_VOICE_PREFIX, false, 2, (Object) null) || ExternalEngines.INSTANCE.isExternalVoice(stringExtra)) {
            voiceSlidersActivity = this;
            linearLayout2.addView(voiceSlidersActivity.buildScaledSlider(voiceSlidersActivity2, "Speech rate", Prefs.INSTANCE.rateFor(stringExtra), 20, GOOGLE_RATE_MAX, new Function1() { // from class: aio.tts.VoiceSlidersActivity$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return VoiceSlidersActivity.onCreate$lambda$5(stringExtra, ((Integer) obj).intValue());
                }
            }));
            linearLayout2.addView(voiceSlidersActivity.buildScaledSlider(voiceSlidersActivity2, "Voice pitch", Prefs.INSTANCE.pitchFor(stringExtra), 20, GOOGLE_PITCH_MAX, new Function1() { // from class: aio.tts.VoiceSlidersActivity$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return VoiceSlidersActivity.onCreate$lambda$6(stringExtra, ((Integer) obj).intValue());
                }
            }));
        } else {
            linearLayout2.addView(buildSlider(voiceSlidersActivity2, "Speech rate", Prefs.INSTANCE.rateFor(stringExtra) / 2, new Function1() { // from class: aio.tts.VoiceSlidersActivity$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return VoiceSlidersActivity.onCreate$lambda$7(stringExtra, ((Integer) obj).intValue());
                }
            }));
            linearLayout2.addView(buildSlider(voiceSlidersActivity2, "Voice pitch", Prefs.INSTANCE.pitchFor(stringExtra) / 2, new Function1() { // from class: aio.tts.VoiceSlidersActivity$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return VoiceSlidersActivity.onCreate$lambda$8(stringExtra, ((Integer) obj).intValue());
                }
            }));
            voiceSlidersActivity = this;
        }
        Iterator<T> it = VoiceCatalog.INSTANCE.getLANGUAGES().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (Intrinsics.areEqual(PlaySample.INSTANCE.resolveVoiceName(voiceSlidersActivity2, (String) ((Pair) next).component1()), stringExtra)) {
                    break;
                }
            }
        }
        Pair pair = (Pair) next;
        final String str2 = pair != null ? (String) pair.getFirst() : null;
        Button button = new Button(voiceSlidersActivity2);
        button.setText("Play Sample");
        button.setPadding(0, 24, 0, 0);
        button.setEnabled(str2 != null);
        if (str2 == null) {
            button.setContentDescription("Play Sample, unavailable: this voice isn't currently assigned to a language");
        }
        button.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.VoiceSlidersActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceSlidersActivity.onCreate$lambda$12$lambda$11(str2, voiceSlidersActivity, view);
            }
        });
        linearLayout2.addView(button);
        ScrollView scrollView = new ScrollView(voiceSlidersActivity2);
        scrollView.addView(linearLayout2);
        linearLayout.addView(scrollView, new LinearLayout.LayoutParams(-1, -1));
        voiceSlidersActivity.setContentView(linearLayout);
    }

    static final Unit onCreate$lambda$4(String str, int i) {
        Prefs.INSTANCE.setVolumeFor(str, i);
        return Unit.INSTANCE;
    }

    static final Unit onCreate$lambda$5(String str, int i) {
        Prefs.INSTANCE.setRateFor(str, i);
        return Unit.INSTANCE;
    }

    static final Unit onCreate$lambda$6(String str, int i) {
        Prefs.INSTANCE.setPitchFor(str, i);
        return Unit.INSTANCE;
    }

    static final Unit onCreate$lambda$7(String str, int i) {
        Prefs.INSTANCE.setRateFor(str, i * 2);
        return Unit.INSTANCE;
    }

    static final Unit onCreate$lambda$8(String str, int i) {
        Prefs.INSTANCE.setPitchFor(str, i * 2);
        return Unit.INSTANCE;
    }

    static final void onCreate$lambda$12$lambda$11(String str, VoiceSlidersActivity voiceSlidersActivity, View view) {
        if (str != null) {
            PlaySample.INSTANCE.play(voiceSlidersActivity, str);
        }
    }

    private final LinearLayout buildScaledSlider(Context context, String label, int rawValue, final int rawMin, final int rawMax, final Function1<? super Integer, Unit> onChanged) {
        return buildSlider(context, label, RangesKt.coerceIn(Math.round(((rawValue - rawMin) / (rawMax - rawMin)) * 100.0f), 0, 100), new Function1() { // from class: aio.tts.VoiceSlidersActivity$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VoiceSlidersActivity.buildScaledSlider$lambda$13(rawMin, rawMax, onChanged, ((Integer) obj).intValue());
            }
        });
    }

    static final Unit buildScaledSlider$lambda$13(int i, int i2, Function1 function1, int i3) {
        function1.invoke(Integer.valueOf(i + ((int) ((i3 / 100.0f) * (i2 - i)))));
        return Unit.INSTANCE;
    }

    private final LinearLayout buildSlider(Context context, final String label, int initialValue, final Function1<? super Integer, Unit> onChanged) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, 24, 0, 24);
        final TextView textView = new TextView(context);
        textView.setText(label + ": " + initialValue + "%");
        textView.setTextSize(18.0f);
        textView.setPadding(0, 0, 0, 8);
        linearLayout.addView(textView);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        final Button button = new Button(context);
        button.setText("-1%");
        button.setContentDescription("Decrease " + label + " by 1 percent");
        final SeekBar seekBar = new SeekBar(context);
        seekBar.setMax(100);
        seekBar.setProgress(initialValue);
        seekBar.setContentDescription(label + " slider");
        seekBar.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        final Button button2 = new Button(context);
        button2.setText("+1%");
        button2.setContentDescription("Increase " + label + " by 1 percent");
        button.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.VoiceSlidersActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceSlidersActivity.buildSlider$applyValue(seekBar, textView, label, button, button2, onChanged, r0.getProgress() - 1);
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.VoiceSlidersActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SeekBar seekBar2 = seekBar;
                VoiceSlidersActivity.buildSlider$applyValue(seekBar2, textView, label, button, button2, onChanged, seekBar2.getProgress() + 1);
            }
        });
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: aio.tts.VoiceSlidersActivity.buildSlider.3
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar bar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar bar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar bar, int value, boolean fromUser) {
                if (fromUser) {
                    textView.setText(label + ": " + value + "%");
                    button.setEnabled(value > 0);
                    button2.setEnabled(value < 100);
                    onChanged.invoke(Integer.valueOf(value));
                }
            }
        });
        button.setEnabled(initialValue > 0);
        button2.setEnabled(initialValue < 100);
        linearLayout2.addView(button);
        linearLayout2.addView(seekBar);
        linearLayout2.addView(button2);
        linearLayout.addView(linearLayout2);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void buildSlider$applyValue(SeekBar seekBar, TextView textView, String str, Button button, Button button2, Function1<? super Integer, Unit> function1, int i) {
        int iCoerceIn = RangesKt.coerceIn(i, 0, 100);
        seekBar.setProgress(iCoerceIn);
        textView.setText(str + ": " + iCoerceIn + "%");
        button.setEnabled(iCoerceIn > 0);
        button2.setEnabled(iCoerceIn < 100);
        function1.invoke(Integer.valueOf(iCoerceIn));
    }
}
