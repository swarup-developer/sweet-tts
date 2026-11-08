package aio.tts;

import aio.tts.EloquenceVoice;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: EloquenceSettingsActivity.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\n\u001a\u00020\u0007H\u0002J\u0018\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Laio/tts/EloquenceSettingsActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "content", "Landroid/widget/LinearLayout;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "build", "sliderRow", "preset", "", "s", "Laio/tts/EloquenceVoice$Slider;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EloquenceSettingsActivity extends AppCompatActivity {
    private LinearLayout content;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("Eloquence voice settings");
        EloquenceSettingsActivity eloquenceSettingsActivity = this;
        LinearLayout linearLayout = new LinearLayout(eloquenceSettingsActivity);
        linearLayout.setOrientation(1);
        linearLayout.addView(UiHelpersKt.centeredHeader(eloquenceSettingsActivity, "Eloquence voice settings"));
        LinearLayout linearLayout2 = new LinearLayout(eloquenceSettingsActivity);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(32, 16, 32, 32);
        this.content = linearLayout2;
        ScrollView scrollView = new ScrollView(eloquenceSettingsActivity);
        LinearLayout linearLayout3 = this.content;
        if (linearLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("content");
            linearLayout3 = null;
        }
        scrollView.addView(linearLayout3);
        linearLayout.addView(scrollView, new LinearLayout.LayoutParams(-1, -1));
        setContentView(linearLayout);
        build();
        if (EloquenceVoice.INSTANCE.hasBuiltIn()) {
            return;
        }
        Thread thread = new Thread(new Runnable() { // from class: aio.tts.EloquenceSettingsActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                EloquenceSettingsActivity.onCreate$lambda$3(this.f$0);
            }
        });
        thread.setDaemon(true);
        thread.start();
    }

    static final void onCreate$lambda$3(final EloquenceSettingsActivity eloquenceSettingsActivity) {
        EloquenceHub.INSTANCE.engine();
        eloquenceSettingsActivity.runOnUiThread(new Runnable() { // from class: aio.tts.EloquenceSettingsActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                EloquenceSettingsActivity.onCreate$lambda$3$lambda$2(this.f$0);
            }
        });
    }

    static final void onCreate$lambda$3$lambda$2(EloquenceSettingsActivity eloquenceSettingsActivity) {
        if (eloquenceSettingsActivity.isFinishing()) {
            return;
        }
        eloquenceSettingsActivity.build();
    }

    private final void build() {
        Object next;
        LinearLayout linearLayout = this.content;
        LinearLayout linearLayout2 = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("content");
            linearLayout = null;
        }
        linearLayout.removeAllViews();
        final int iPreset = EloquenceVoice.INSTANCE.preset();
        final List<Pair<Integer, String>> voices = EloquenceVoice.INSTANCE.getVOICES();
        Iterator<Pair<Integer, String>> it = voices.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (it.next().getFirst().intValue() == iPreset) {
                break;
            } else {
                i++;
            }
        }
        final int iCoerceAtLeast = RangesKt.coerceAtLeast(i, 0);
        LinearLayout linearLayout3 = this.content;
        if (linearLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("content");
            linearLayout3 = null;
        }
        EloquenceSettingsActivity eloquenceSettingsActivity = this;
        Button button = new Button(eloquenceSettingsActivity);
        button.setAllCaps(false);
        button.setTextSize(20.0f);
        button.setText("Voice: " + ((Object) voices.get(iCoerceAtLeast).getSecond()) + ", " + (iCoerceAtLeast + 1) + " of " + voices.size());
        button.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.EloquenceSettingsActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EloquenceSettingsActivity.build$lambda$9$lambda$8(this.f$0, voices, iCoerceAtLeast, view);
            }
        });
        linearLayout3.addView(button);
        for (EloquenceVoice.Slider slider : EloquenceVoice.INSTANCE.getSLIDERS()) {
            LinearLayout linearLayout4 = this.content;
            if (linearLayout4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("content");
                linearLayout4 = null;
            }
            linearLayout4.addView(sliderRow(iPreset, slider));
        }
        LinearLayout linearLayout5 = this.content;
        if (linearLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("content");
            linearLayout5 = null;
        }
        Button button2 = new Button(eloquenceSettingsActivity);
        button2.setAllCaps(false);
        button2.setText("Play Sample");
        Iterator it2 = CollectionsKt.listOf((Object[]) new String[]{"en", "number", "emoji"}).iterator();
        while (true) {
            if (it2.hasNext()) {
                next = it2.next();
                if (Intrinsics.areEqual(PlaySample.INSTANCE.resolveVoiceName(eloquenceSettingsActivity, (String) next), VoiceCatalog.ELOQUENCE_VOICE_NAME)) {
                    break;
                }
            } else {
                next = null;
                break;
            }
        }
        final String str = (String) next;
        button2.setEnabled(str != null);
        button2.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.EloquenceSettingsActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EloquenceSettingsActivity.build$lambda$13$lambda$12(str, this, view);
            }
        });
        linearLayout5.addView(button2);
        LinearLayout linearLayout6 = this.content;
        if (linearLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("content");
        } else {
            linearLayout2 = linearLayout6;
        }
        Button button3 = new Button(eloquenceSettingsActivity);
        button3.setAllCaps(false);
        button3.setText("Reset to default");
        button3.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.EloquenceSettingsActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EloquenceSettingsActivity.build$lambda$15$lambda$14(iPreset, this, view);
            }
        });
        linearLayout2.addView(button3);
    }

    static final void build$lambda$9$lambda$8(final EloquenceSettingsActivity eloquenceSettingsActivity, final List list, int i, View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(eloquenceSettingsActivity);
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add((String) ((Pair) it.next()).getSecond());
        }
        builder.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i, new DialogInterface.OnClickListener() { // from class: aio.tts.EloquenceSettingsActivity$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                EloquenceSettingsActivity.build$lambda$9$lambda$8$lambda$7(list, eloquenceSettingsActivity, dialogInterface, i2);
            }
        }).show();
    }

    static final void build$lambda$9$lambda$8$lambda$7(List list, EloquenceSettingsActivity eloquenceSettingsActivity, DialogInterface dialogInterface, int i) {
        Prefs.INSTANCE.setEloquencePreset(((Number) ((Pair) list.get(i)).getFirst()).intValue());
        dialogInterface.dismiss();
        eloquenceSettingsActivity.build();
    }

    static final void build$lambda$13$lambda$12(String str, EloquenceSettingsActivity eloquenceSettingsActivity, View view) {
        if (str != null) {
            PlaySample.INSTANCE.play(eloquenceSettingsActivity, str);
        }
    }

    static final void build$lambda$15$lambda$14(int i, EloquenceSettingsActivity eloquenceSettingsActivity, View view) {
        EloquenceVoice.INSTANCE.reset(i);
        eloquenceSettingsActivity.build();
    }

    private final LinearLayout sliderRow(final int preset, final EloquenceVoice.Slider s) {
        int iStep = EloquenceVoice.INSTANCE.step(preset, s.getParam());
        EloquenceSettingsActivity eloquenceSettingsActivity = this;
        LinearLayout linearLayout = new LinearLayout(eloquenceSettingsActivity);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, 24, 0, 24);
        final TextView textView = new TextView(eloquenceSettingsActivity);
        textView.setText(s.getTitle() + ": " + iStep);
        textView.setTextSize(18.0f);
        textView.setPadding(0, 0, 0, 8);
        linearLayout.addView(textView);
        LinearLayout linearLayout2 = new LinearLayout(eloquenceSettingsActivity);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        final Button button = new Button(eloquenceSettingsActivity);
        button.setText("-1");
        button.setContentDescription("Decrease " + s.getTitle() + " by 1");
        final SeekBar seekBar = new SeekBar(eloquenceSettingsActivity);
        final int i = 20;
        seekBar.setMax(20);
        seekBar.setProgress(iStep);
        seekBar.setContentDescription(s.getTitle() + " slider");
        seekBar.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        final Button button2 = new Button(eloquenceSettingsActivity);
        button2.setText("+1");
        button2.setContentDescription("Increase " + s.getTitle() + " by 1");
        button.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.EloquenceSettingsActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EloquenceSettingsActivity.sliderRow$set(i, seekBar, preset, s, textView, button, button2, r0.getProgress() - 1);
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: aio.tts.EloquenceSettingsActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SeekBar seekBar2 = seekBar;
                EloquenceSettingsActivity.sliderRow$set(i, seekBar2, preset, s, textView, button, button2, seekBar2.getProgress() + 1);
            }
        });
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: aio.tts.EloquenceSettingsActivity.sliderRow.3
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar b) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar b) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar b, int value, boolean fromUser) {
                if (fromUser) {
                    EloquenceVoice.INSTANCE.setStep(preset, s.getParam(), value);
                    EloquenceSettingsActivity.sliderRow$show(textView, s, button, button2, i, value);
                }
            }
        });
        sliderRow$show(textView, s, button, button2, 20, iStep);
        linearLayout2.addView(button);
        linearLayout2.addView(seekBar);
        linearLayout2.addView(button2);
        linearLayout.addView(linearLayout2);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sliderRow$show(TextView textView, EloquenceVoice.Slider slider, Button button, Button button2, int i, int i2) {
        textView.setText(slider.getTitle() + ": " + i2);
        button.setEnabled(i2 > 0);
        button2.setEnabled(i2 < i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sliderRow$set(int i, SeekBar seekBar, int i2, EloquenceVoice.Slider slider, TextView textView, Button button, Button button2, int i3) {
        int iCoerceIn = RangesKt.coerceIn(i3, 0, i);
        seekBar.setProgress(iCoerceIn);
        EloquenceVoice.INSTANCE.setStep(i2, slider.getParam(), iCoerceIn);
        sliderRow$show(textView, slider, button, button2, i, iCoerceIn);
    }
}
