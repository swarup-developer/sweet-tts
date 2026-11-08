package aio.tts;

import aio.tts.VoicesActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;
import androidx.recyclerview.widget.RecyclerView;
import com.nuance.android.vocalizer.VocalizerVoice;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VoicesActivity.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \b2\u00020\u0001:\u0002\b\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014¨\u0006\n"}, d2 = {"Laio/tts/VoicesActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "VoicesFragment", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VoicesActivity extends AppCompatActivity {
    private static final int CONTAINER_ID = View.generateViewId();

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("Voices");
        VoicesActivity voicesActivity = this;
        LinearLayout linearLayout = new LinearLayout(voicesActivity);
        linearLayout.setOrientation(1);
        linearLayout.addView(UiHelpersKt.centeredHeader(voicesActivity, "Voices"));
        FrameLayout frameLayout = new FrameLayout(voicesActivity);
        int i = CONTAINER_ID;
        frameLayout.setId(i);
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
        setContentView(linearLayout);
        getSupportFragmentManager().beginTransaction().replace(i, new VoicesFragment()).commit();
    }

    /* compiled from: VoicesActivity.kt */
    @Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001c\u0010\f\u001a\u00020\r2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0012\u001a\u00020\rH\u0002J\b\u0010\u0013\u001a\u00020\rH\u0016JV\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000f2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\r0!H\u0002R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Laio/tts/VoicesActivity$VoicesFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "<init>", "()V", "onCreateRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "inflater", "Landroid/view/LayoutInflater;", "parent", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onCreatePreferences", "", "rootKey", "", "eloquenceRow", "Landroidx/preference/Preference;", "refreshEloquenceRow", "onResume", "addVoicePicker", "screen", "Landroidx/preference/PreferenceScreen;", "context", "Landroid/content/Context;", "label", "options", "", "Lcom/nuance/android/vocalizer/VocalizerVoice;", "chosen", "includeMatchLanguage", "", "onChosen", "Lkotlin/Function1;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class VoicesFragment extends PreferenceFragmentCompat {
        private Preference eloquenceRow;

        @Override // androidx.preference.PreferenceFragmentCompat
        public RecyclerView onCreateRecyclerView(LayoutInflater inflater, ViewGroup parent, Bundle savedInstanceState) {
            Intrinsics.checkNotNullParameter(inflater, "inflater");
            Intrinsics.checkNotNullParameter(parent, "parent");
            RecyclerView recyclerViewOnCreateRecyclerView = super.onCreateRecyclerView(inflater, parent, savedInstanceState);
            Intrinsics.checkNotNullExpressionValue(recyclerViewOnCreateRecyclerView, "onCreateRecyclerView(...)");
            recyclerViewOnCreateRecyclerView.setItemViewCacheSize(40);
            return recyclerViewOnCreateRecyclerView;
        }

        @Override // androidx.preference.PreferenceFragmentCompat
        public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
            String str;
            String str2;
            String str3;
            final Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            PreferenceScreen preferenceScreenCreatePreferenceScreen = getPreferenceManager().createPreferenceScreen(contextRequireContext);
            Intrinsics.checkNotNullExpressionValue(preferenceScreenCreatePreferenceScreen, "createPreferenceScreen(...)");
            if (VoiceCatalog.INSTANCE.getVoices().isEmpty()) {
                Preference preference = new Preference(contextRequireContext);
                preference.setTitle("Voice list not loaded yet");
                preference.setSummary("Speak something through Sweet TTS once first, then come back here.");
                preference.setSelectable(false);
                preferenceScreenCreatePreferenceScreen.addPreference(preference);
                setPreferenceScreen(preferenceScreenCreatePreferenceScreen);
                return;
            }
            List<VocalizerVoice> voices = VoiceCatalog.INSTANCE.getVoices();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(voices, 10));
            Iterator<T> it = voices.iterator();
            while (it.hasNext()) {
                arrayList.add(((VocalizerVoice) it.next()).mVoiceName);
            }
            Set set = CollectionsKt.toSet(arrayList);
            String strEmojiVoice = Prefs.INSTANCE.emojiVoice();
            if (Intrinsics.areEqual(strEmojiVoice, Prefs.MATCH_LANGUAGE) || (strEmojiVoice != null && set.contains(strEmojiVoice))) {
                str = strEmojiVoice;
            } else {
                VocalizerVoice vocalizerVoiceDefaultVoiceFor = VoiceCatalog.INSTANCE.defaultVoiceFor("emoji", VoiceCatalog.INSTANCE.getVoices());
                str = vocalizerVoiceDefaultVoiceFor != null ? vocalizerVoiceDefaultVoiceFor.mVoiceName : null;
            }
            if (str != null && !Intrinsics.areEqual(str, strEmojiVoice)) {
                Prefs.INSTANCE.setEmojiVoice(str);
            }
            addVoicePicker(preferenceScreenCreatePreferenceScreen, contextRequireContext, "Emojis", VoiceCatalog.INSTANCE.sortedForDisplay(VoiceCatalog.INSTANCE.getVoices()), str, true, new Function1() { // from class: aio.tts.VoicesActivity$VoicesFragment$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return VoicesActivity.VoicesFragment.onCreatePreferences$lambda$3$lambda$2(this.f$0, (String) obj);
                }
            });
            String strNumberVoice = Prefs.INSTANCE.numberVoice();
            if (Intrinsics.areEqual(strNumberVoice, Prefs.MATCH_LANGUAGE) || (strNumberVoice != null && set.contains(strNumberVoice))) {
                str2 = strNumberVoice;
            } else {
                VocalizerVoice vocalizerVoiceDefaultVoiceFor2 = VoiceCatalog.INSTANCE.defaultVoiceFor("number", VoiceCatalog.INSTANCE.getVoices());
                str2 = vocalizerVoiceDefaultVoiceFor2 != null ? vocalizerVoiceDefaultVoiceFor2.mVoiceName : null;
            }
            if (str2 != null && !Intrinsics.areEqual(str2, strNumberVoice)) {
                Prefs.INSTANCE.setNumberVoice(str2);
            }
            addVoicePicker(preferenceScreenCreatePreferenceScreen, contextRequireContext, "Numbers", VoiceCatalog.INSTANCE.sortedForDisplay(VoiceCatalog.INSTANCE.getVoices()), str2, true, new Function1() { // from class: aio.tts.VoicesActivity$VoicesFragment$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return VoicesActivity.VoicesFragment.onCreatePreferences$lambda$5$lambda$4(this.f$0, (String) obj);
                }
            });
            for (Pair<String, String> pair : VoiceCatalog.INSTANCE.getLANGUAGES()) {
                final String strComponent1 = pair.component1();
                String strComponent2 = pair.component2();
                if (Prefs.INSTANCE.isLanguageEnabled(strComponent1)) {
                    List<VocalizerVoice> listSortedForDisplay = VoiceCatalog.INSTANCE.sortedForDisplay(VoiceCatalog.INSTANCE.voicesFor(strComponent1));
                    List<VocalizerVoice> list = listSortedForDisplay;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator<T> it2 = list.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(((VocalizerVoice) it2.next()).mVoiceName);
                    }
                    Set set2 = CollectionsKt.toSet(arrayList2);
                    String strVoiceFor = Prefs.INSTANCE.voiceFor(strComponent1);
                    if (strVoiceFor == null || !set2.contains(strVoiceFor)) {
                        VocalizerVoice vocalizerVoiceDefaultVoiceFor3 = VoiceCatalog.INSTANCE.defaultVoiceFor(strComponent1, listSortedForDisplay);
                        str3 = vocalizerVoiceDefaultVoiceFor3 != null ? vocalizerVoiceDefaultVoiceFor3.mVoiceName : null;
                    } else {
                        str3 = strVoiceFor;
                    }
                    if (str3 != null && !Intrinsics.areEqual(str3, strVoiceFor)) {
                        Prefs.INSTANCE.setVoiceFor(strComponent1, str3);
                    }
                    addVoicePicker$default(this, preferenceScreenCreatePreferenceScreen, contextRequireContext, strComponent2, listSortedForDisplay, str3, false, new Function1() { // from class: aio.tts.VoicesActivity$VoicesFragment$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return VoicesActivity.VoicesFragment.onCreatePreferences$lambda$7(strComponent1, this, (String) obj);
                        }
                    }, 32, null);
                    if (!listSortedForDisplay.isEmpty()) {
                        Preference preference2 = new Preference(contextRequireContext);
                        preference2.setTitle("Play Sample: " + strComponent2);
                        preference2.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: aio.tts.VoicesActivity$VoicesFragment$$ExternalSyntheticLambda5
                            @Override // androidx.preference.Preference.OnPreferenceClickListener
                            public final boolean onPreferenceClick(Preference preference3) {
                                return VoicesActivity.VoicesFragment.onCreatePreferences$lambda$9$lambda$8(contextRequireContext, strComponent1, preference3);
                            }
                        });
                        preferenceScreenCreatePreferenceScreen.addPreference(preference2);
                    }
                    if (Intrinsics.areEqual(strComponent1, "en")) {
                        Preference preference3 = new Preference(contextRequireContext);
                        preference3.setTitle("Eloquence voice settings");
                        preference3.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: aio.tts.VoicesActivity$VoicesFragment$$ExternalSyntheticLambda6
                            @Override // androidx.preference.Preference.OnPreferenceClickListener
                            public final boolean onPreferenceClick(Preference preference4) {
                                return VoicesActivity.VoicesFragment.onCreatePreferences$lambda$11$lambda$10(this.f$0, contextRequireContext, preference4);
                            }
                        });
                        this.eloquenceRow = preference3;
                        Intrinsics.checkNotNull(preference3);
                        preferenceScreenCreatePreferenceScreen.addPreference(preference3);
                    }
                }
            }
            setPreferenceScreen(preferenceScreenCreatePreferenceScreen);
            refreshEloquenceRow();
        }

        static final Unit onCreatePreferences$lambda$3$lambda$2(VoicesFragment voicesFragment, String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            Prefs.INSTANCE.setEmojiVoice(name);
            voicesFragment.refreshEloquenceRow();
            return Unit.INSTANCE;
        }

        static final Unit onCreatePreferences$lambda$5$lambda$4(VoicesFragment voicesFragment, String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            Prefs.INSTANCE.setNumberVoice(name);
            voicesFragment.refreshEloquenceRow();
            return Unit.INSTANCE;
        }

        static final Unit onCreatePreferences$lambda$7(String str, VoicesFragment voicesFragment, String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            Prefs.INSTANCE.setVoiceFor(str, name);
            voicesFragment.refreshEloquenceRow();
            return Unit.INSTANCE;
        }

        static final boolean onCreatePreferences$lambda$9$lambda$8(Context context, String str, Preference it) {
            Intrinsics.checkNotNullParameter(it, "it");
            PlaySample.INSTANCE.play(context, str);
            return true;
        }

        static final boolean onCreatePreferences$lambda$11$lambda$10(VoicesFragment voicesFragment, Context context, Preference it) {
            Intrinsics.checkNotNullParameter(it, "it");
            voicesFragment.startActivity(new Intent(context, (Class<?>) EloquenceSettingsActivity.class));
            return true;
        }

        private final void refreshEloquenceRow() {
            Preference preference = this.eloquenceRow;
            if (preference == null) {
                return;
            }
            preference.setVisible(Intrinsics.areEqual(Prefs.INSTANCE.voiceFor("en"), VoiceCatalog.ELOQUENCE_VOICE_NAME) || Intrinsics.areEqual(Prefs.INSTANCE.numberVoice(), VoiceCatalog.ELOQUENCE_VOICE_NAME) || Intrinsics.areEqual(Prefs.INSTANCE.emojiVoice(), VoiceCatalog.ELOQUENCE_VOICE_NAME));
            preference.setSummary(EloquenceVoice.INSTANCE.name(EloquenceVoice.INSTANCE.preset()) + ", Natural voice " + EloquenceVoice.INSTANCE.step(EloquenceVoice.INSTANCE.preset(), 3));
        }

        @Override // androidx.fragment.app.Fragment
        public void onResume() {
            super.onResume();
            refreshEloquenceRow();
        }

        static /* synthetic */ void addVoicePicker$default(VoicesFragment voicesFragment, PreferenceScreen preferenceScreen, Context context, String str, List list, String str2, boolean z, Function1 function1, int i, Object obj) {
            if ((i & 32) != 0) {
                z = false;
            }
            voicesFragment.addVoicePicker(preferenceScreen, context, str, list, str2, z, function1);
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0042  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void addVoicePicker(androidx.preference.PreferenceScreen r6, android.content.Context r7, java.lang.String r8, java.util.List<com.nuance.android.vocalizer.VocalizerVoice> r9, java.lang.String r10, boolean r11, final kotlin.jvm.functions.Function1<? super java.lang.String, kotlin.Unit> r12) {
            /*
                Method dump skipped, instructions count: 258
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: aio.tts.VoicesActivity.VoicesFragment.addVoicePicker(androidx.preference.PreferenceScreen, android.content.Context, java.lang.String, java.util.List, java.lang.String, boolean, kotlin.jvm.functions.Function1):void");
        }

        static final CharSequence addVoicePicker$lambda$16$lambda$14(List list, List list2, ListPreference pref) {
            String str;
            Intrinsics.checkNotNullParameter(pref, "pref");
            String value = pref.getValue();
            int iIndexOf = list.indexOf(value);
            if (value == null || iIndexOf < 0) {
                str = "Not set";
            } else {
                str = list2.get(iIndexOf) + ", " + (iIndexOf + 1) + " of " + list2.size();
            }
            return str;
        }

        static final boolean addVoicePicker$lambda$16$lambda$15(Function1 function1, Preference preference, Object obj) {
            Intrinsics.checkNotNullParameter(preference, "<unused var>");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            function1.invoke((String) obj);
            return true;
        }
    }
}
