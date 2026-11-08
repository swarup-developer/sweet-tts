package aio.tts;

import aio.tts.VolumeRatePitchActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;
import com.nuance.android.vocalizer.VocalizerVoice;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: VolumeRatePitchActivity.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \b2\u00020\u0001:\u0002\b\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014¨\u0006\n"}, d2 = {"Laio/tts/VolumeRatePitchActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "VoiceListFragment", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VolumeRatePitchActivity extends AppCompatActivity {
    private static final int CONTAINER_ID = View.generateViewId();

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("Volume, Rate and Pitch");
        VolumeRatePitchActivity volumeRatePitchActivity = this;
        LinearLayout linearLayout = new LinearLayout(volumeRatePitchActivity);
        linearLayout.setOrientation(1);
        linearLayout.addView(UiHelpersKt.centeredHeader(volumeRatePitchActivity, "Volume, Rate and Pitch"));
        FrameLayout frameLayout = new FrameLayout(volumeRatePitchActivity);
        int i = CONTAINER_ID;
        frameLayout.setId(i);
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
        setContentView(linearLayout);
        getSupportFragmentManager().beginTransaction().replace(i, new VoiceListFragment()).commit();
    }

    /* compiled from: VolumeRatePitchActivity.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\n\u001a\u00020\u0005H\u0016J\b\u0010\u000b\u001a\u00020\u0005H\u0002¨\u0006\f"}, d2 = {"Laio/tts/VolumeRatePitchActivity$VoiceListFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "<init>", "()V", "onCreatePreferences", "", "savedInstanceState", "Landroid/os/Bundle;", "rootKey", "", "onResume", "buildScreen", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class VoiceListFragment extends PreferenceFragmentCompat {
        @Override // androidx.preference.PreferenceFragmentCompat
        public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
            buildScreen();
        }

        @Override // androidx.fragment.app.Fragment
        public void onResume() {
            super.onResume();
            buildScreen();
        }

        private final void buildScreen() {
            String strResolveVoiceName;
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            PreferenceScreen preferenceScreenCreatePreferenceScreen = getPreferenceManager().createPreferenceScreen(contextRequireContext);
            Intrinsics.checkNotNullExpressionValue(preferenceScreenCreatePreferenceScreen, "createPreferenceScreen(...)");
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator<Pair<String, String>> it = VoiceCatalog.INSTANCE.getLANGUAGES().iterator();
            while (it.hasNext()) {
                String strComponent1 = it.next().component1();
                if (Prefs.INSTANCE.isLanguageEnabled(strComponent1) && (strResolveVoiceName = PlaySample.INSTANCE.resolveVoiceName(contextRequireContext, strComponent1)) != null) {
                    linkedHashSet.add(strResolveVoiceName);
                }
            }
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            String strNumberVoice = Prefs.INSTANCE.numberVoice();
            if (strNumberVoice != null && !Intrinsics.areEqual(strNumberVoice, Prefs.MATCH_LANGUAGE)) {
                linkedHashSet2.add(strNumberVoice);
            }
            String strEmojiVoice = Prefs.INSTANCE.emojiVoice();
            if (strEmojiVoice != null && !Intrinsics.areEqual(strEmojiVoice, Prefs.MATCH_LANGUAGE)) {
                linkedHashSet2.add(strEmojiVoice);
            }
            for (String str : Prefs.INSTANCE.addedApps()) {
                Iterator<Pair<String, String>> it2 = VoiceCatalog.INSTANCE.getLANGUAGES().iterator();
                while (it2.hasNext()) {
                    String strVoiceForApp = Prefs.INSTANCE.voiceForApp(str, it2.next().component1());
                    if (strVoiceForApp != null) {
                        linkedHashSet2.add(strVoiceForApp);
                    }
                }
            }
            linkedHashSet2.removeAll(linkedHashSet);
            linkedHashSet.addAll(linkedHashSet2);
            final HashMap map = new HashMap();
            int i = 0;
            for (Object obj : VoiceCatalog.INSTANCE.getLANGUAGES()) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Iterator<VocalizerVoice> it3 = VoiceCatalog.INSTANCE.voicesFor((String) ((Pair) obj).component1()).iterator();
                while (it3.hasNext()) {
                    map.putIfAbsent(it3.next().mVoiceName, Integer.valueOf(i));
                }
                i = i2;
            }
            List listSortedWith = CollectionsKt.sortedWith(linkedHashSet, new Comparator() { // from class: aio.tts.VolumeRatePitchActivity$VoiceListFragment$buildScreen$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    Integer num = (Integer) map.get((String) t);
                    Integer numValueOf = Integer.valueOf(num != null ? num.intValue() : Integer.MAX_VALUE);
                    Integer num2 = (Integer) map.get((String) t2);
                    return ComparisonsKt.compareValues(numValueOf, Integer.valueOf(num2 != null ? num2.intValue() : Integer.MAX_VALUE));
                }
            });
            List<VocalizerVoice> voices = VoiceCatalog.INSTANCE.getVoices();
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(voices, 10)), 16));
            for (Object obj2 : voices) {
                linkedHashMap.put(((VocalizerVoice) obj2).mVoiceName, obj2);
            }
            ArrayList arrayList = new ArrayList();
            Iterator it4 = listSortedWith.iterator();
            while (it4.hasNext()) {
                VocalizerVoice vocalizerVoice = (VocalizerVoice) linkedHashMap.get((String) it4.next());
                if (vocalizerVoice != null) {
                    arrayList.add(vocalizerVoice);
                }
            }
            ArrayList<VocalizerVoice> arrayList2 = arrayList;
            if (VoiceCatalog.INSTANCE.getVoices().isEmpty()) {
                Preference preference = new Preference(contextRequireContext);
                preference.setTitle("Voice list not loaded yet");
                preference.setSummary("Speak something through Sweet TTS once first, then come back here.");
                preference.setSelectable(false);
                preferenceScreenCreatePreferenceScreen.addPreference(preference);
            } else if (arrayList2.isEmpty()) {
                Preference preference2 = new Preference(contextRequireContext);
                preference2.setTitle("No voices chosen yet");
                preference2.setSummary("Open the Voices screen first to pick a voice for each language.");
                preference2.setSelectable(false);
                preferenceScreenCreatePreferenceScreen.addPreference(preference2);
            } else {
                for (final VocalizerVoice vocalizerVoice2 : arrayList2) {
                    Preference preference3 = new Preference(contextRequireContext);
                    preference3.setTitle(vocalizerVoice2.mVoiceName);
                    preference3.setSummary(vocalizerVoice2.mLanguage);
                    preference3.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: aio.tts.VolumeRatePitchActivity$VoiceListFragment$$ExternalSyntheticLambda0
                        @Override // androidx.preference.Preference.OnPreferenceClickListener
                        public final boolean onPreferenceClick(Preference preference4) {
                            return VolumeRatePitchActivity.VoiceListFragment.buildScreen$lambda$11$lambda$10(this.f$0, vocalizerVoice2, preference4);
                        }
                    });
                    preferenceScreenCreatePreferenceScreen.addPreference(preference3);
                }
            }
            setPreferenceScreen(preferenceScreenCreatePreferenceScreen);
        }

        static final boolean buildScreen$lambda$11$lambda$10(VoiceListFragment voiceListFragment, VocalizerVoice vocalizerVoice, Preference it) {
            Intrinsics.checkNotNullParameter(it, "it");
            voiceListFragment.startActivity(new Intent(voiceListFragment.requireContext(), (Class<?>) VoiceSlidersActivity.class).putExtra(VoiceSlidersActivity.EXTRA_VOICE_NAME, vocalizerVoice.mVoiceName));
            return true;
        }
    }
}
