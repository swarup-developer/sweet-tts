package aio.tts;

import aio.tts.AppVoiceActivity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;
import com.nuance.android.vocalizer.VocalizerVoice;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AppVoiceActivity.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \b2\u00020\u0001:\u0002\b\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014¨\u0006\n"}, d2 = {"Laio/tts/AppVoiceActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "AppVoiceFragment", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AppVoiceActivity extends AppCompatActivity {
    public static final String EXTRA_PACKAGE = "package_name";
    private static final int CONTAINER_ID = View.generateViewId();

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        String string;
        super.onCreate(savedInstanceState);
        String stringExtra = getIntent().getStringExtra(EXTRA_PACKAGE);
        if (stringExtra == null) {
            finish();
            return;
        }
        try {
            string = getPackageManager().getApplicationLabel(getPackageManager().getApplicationInfo(stringExtra, 0)).toString();
        } catch (Exception unused) {
            string = stringExtra;
        }
        setTitle(string);
        AppVoiceActivity appVoiceActivity = this;
        LinearLayout linearLayout = new LinearLayout(appVoiceActivity);
        linearLayout.setOrientation(1);
        linearLayout.addView(UiHelpersKt.centeredHeader(appVoiceActivity, string));
        String strPick$default = Desc.pick$default(Desc.INSTANCE, Desc.APP_VOICE_INTRO, null, 2, null);
        if (strPick$default != null) {
            TextView textView = new TextView(appVoiceActivity);
            textView.setText(strPick$default);
            textView.setTextSize(18.0f);
            textView.setPadding(32, 0, 32, 16);
            linearLayout.addView(textView);
        }
        FrameLayout frameLayout = new FrameLayout(appVoiceActivity);
        int i = CONTAINER_ID;
        frameLayout.setId(i);
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
        setContentView(linearLayout);
        getSupportFragmentManager().beginTransaction().replace(i, AppVoiceFragment.INSTANCE.newInstance(stringExtra)).commit();
    }

    /* compiled from: AppVoiceActivity.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Laio/tts/AppVoiceActivity$AppVoiceFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "<init>", "()V", "packageName", "", "onCreatePreferences", "", "savedInstanceState", "Landroid/os/Bundle;", "rootKey", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class AppVoiceFragment extends PreferenceFragmentCompat {

        /* renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private String packageName;

        @Override // androidx.preference.PreferenceFragmentCompat
        public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
            String string = requireArguments().getString(AppVoiceActivity.EXTRA_PACKAGE);
            Intrinsics.checkNotNull(string);
            this.packageName = string;
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            PreferenceScreen preferenceScreenCreatePreferenceScreen = getPreferenceManager().createPreferenceScreen(contextRequireContext);
            Intrinsics.checkNotNullExpressionValue(preferenceScreenCreatePreferenceScreen, "createPreferenceScreen(...)");
            List<Pair<String, String>> languages = VoiceCatalog.INSTANCE.getLANGUAGES();
            ArrayList arrayList = new ArrayList();
            for (Object obj : languages) {
                String str = (String) ((Pair) obj).component1();
                if (Prefs.INSTANCE.isLanguageEnabled(str) && VoiceCatalog.INSTANCE.voicesFor(str).size() > 1) {
                    arrayList.add(obj);
                }
            }
            ArrayList<Pair> arrayList2 = arrayList;
            if (arrayList2.isEmpty()) {
                Preference preference = new Preference(contextRequireContext);
                preference.setTitle("Nothing to override");
                preference.setSummary("Every enabled language only has one voice available, so this app already uses the same voices as everywhere else.");
                preference.setSelectable(false);
                preferenceScreenCreatePreferenceScreen.addPreference(preference);
            } else {
                for (Pair pair : arrayList2) {
                    final String str2 = (String) pair.component1();
                    String str3 = (String) pair.component2();
                    List<VocalizerVoice> listSortedForDisplay = VoiceCatalog.INSTANCE.sortedForDisplay(VoiceCatalog.INSTANCE.voicesFor(str2));
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSortedForDisplay, 10));
                    Iterator<T> it = listSortedForDisplay.iterator();
                    while (it.hasNext()) {
                        arrayList3.add(((VocalizerVoice) it.next()).mVoiceName);
                    }
                    final ArrayList arrayList4 = arrayList3;
                    Prefs prefs = Prefs.INSTANCE;
                    String str4 = this.packageName;
                    if (str4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("packageName");
                        str4 = null;
                    }
                    String strVoiceForApp = prefs.voiceForApp(str4, str2);
                    ListPreference listPreference = new ListPreference(contextRequireContext);
                    String str5 = this.packageName;
                    if (str5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("packageName");
                        str5 = null;
                    }
                    listPreference.setKey("appvoice_" + str5 + "_" + str2);
                    listPreference.setTitle("Select voice for " + str3);
                    listPreference.setDialogTitle("");
                    listPreference.setPersistent(false);
                    ArrayList arrayList5 = arrayList4;
                    listPreference.setEntries((CharSequence[]) arrayList5.toArray(new String[0]));
                    listPreference.setEntryValues((CharSequence[]) arrayList5.toArray(new String[0]));
                    listPreference.setNegativeButtonText((CharSequence) null);
                    listPreference.setSummaryProvider(new Preference.SummaryProvider() { // from class: aio.tts.AppVoiceActivity$AppVoiceFragment$$ExternalSyntheticLambda0
                        @Override // androidx.preference.Preference.SummaryProvider
                        public final CharSequence provideSummary(Preference preference2) {
                            return AppVoiceActivity.AppVoiceFragment.onCreatePreferences$lambda$5$lambda$3(arrayList4, (ListPreference) preference2);
                        }
                    });
                    listPreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: aio.tts.AppVoiceActivity$AppVoiceFragment$$ExternalSyntheticLambda1
                        @Override // androidx.preference.Preference.OnPreferenceChangeListener
                        public final boolean onPreferenceChange(Preference preference2, Object obj2) {
                            return AppVoiceActivity.AppVoiceFragment.onCreatePreferences$lambda$5$lambda$4(this.f$0, str2, preference2, obj2);
                        }
                    });
                    listPreference.setValue(strVoiceForApp);
                    preferenceScreenCreatePreferenceScreen.addPreference(listPreference);
                }
            }
            setPreferenceScreen(preferenceScreenCreatePreferenceScreen);
        }

        static final CharSequence onCreatePreferences$lambda$5$lambda$3(List list, ListPreference pref) {
            String str;
            Intrinsics.checkNotNullParameter(pref, "pref");
            String value = pref.getValue();
            int iIndexOf = list.indexOf(value);
            if (value == null || iIndexOf < 0) {
                str = "Same as global default";
            } else {
                str = value + ", " + (iIndexOf + 1) + " of " + list.size();
            }
            return str;
        }

        static final boolean onCreatePreferences$lambda$5$lambda$4(AppVoiceFragment appVoiceFragment, String str, Preference preference, Object obj) {
            Intrinsics.checkNotNullParameter(preference, "<unused var>");
            Prefs prefs = Prefs.INSTANCE;
            String str2 = appVoiceFragment.packageName;
            if (str2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("packageName");
                str2 = null;
            }
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            prefs.setVoiceForApp(str2, str, (String) obj);
            return true;
        }

        /* compiled from: AppVoiceActivity.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Laio/tts/AppVoiceActivity$AppVoiceFragment$Companion;", "", "<init>", "()V", "newInstance", "Laio/tts/AppVoiceActivity$AppVoiceFragment;", "packageName", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final AppVoiceFragment newInstance(String packageName) {
                Intrinsics.checkNotNullParameter(packageName, "packageName");
                AppVoiceFragment appVoiceFragment = new AppVoiceFragment();
                Bundle bundle = new Bundle(1);
                bundle.putString(AppVoiceActivity.EXTRA_PACKAGE, packageName);
                appVoiceFragment.setArguments(bundle);
                return appVoiceFragment;
            }
        }
    }
}
