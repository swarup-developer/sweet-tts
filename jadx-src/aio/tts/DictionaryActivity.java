package aio.tts;

import aio.tts.DictionaryActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* compiled from: DictionaryActivity.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\u0018\u0000 \u00122\u00020\u0001:\u0002\u0012\u0013B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\b\u0010\b\u001a\u00020\u0005H\u0014J-\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010\u0011¨\u0006\u0014"}, d2 = {"Laio/tts/DictionaryActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "onRequestPermissionsResult", "requestCode", "", "permissions", "", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "Companion", "MenuFragment", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DictionaryActivity extends AppCompatActivity {
    private static final int CONTAINER_ID = View.generateViewId();

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("Dictionary");
        DictionaryActivity dictionaryActivity = this;
        LinearLayout linearLayout = new LinearLayout(dictionaryActivity);
        linearLayout.setOrientation(1);
        linearLayout.addView(UiHelpersKt.centeredHeader(dictionaryActivity, "Dictionary"));
        FrameLayout frameLayout = new FrameLayout(dictionaryActivity);
        frameLayout.setId(CONTAINER_ID);
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
        setContentView(linearLayout);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        getSupportFragmentManager().beginTransaction().replace(CONTAINER_ID, new MenuFragment()).commit();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        ImportExport.INSTANCE.onRequestPermissionsResult(this, requestCode, grantResults);
    }

    /* compiled from: DictionaryActivity.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, d2 = {"Laio/tts/DictionaryActivity$MenuFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "<init>", "()V", "onCreatePreferences", "", "savedInstanceState", "Landroid/os/Bundle;", "rootKey", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class MenuFragment extends PreferenceFragmentCompat {
        @Override // androidx.preference.PreferenceFragmentCompat
        public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
            final Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            PreferenceScreen preferenceScreenCreatePreferenceScreen = getPreferenceManager().createPreferenceScreen(contextRequireContext);
            Intrinsics.checkNotNullExpressionValue(preferenceScreenCreatePreferenceScreen, "createPreferenceScreen(...)");
            Preference preference = new Preference(contextRequireContext);
            preference.setTitle("Dictionary");
            preference.setSummary(Desc.INSTANCE.pick(Desc.DICTIONARY, Desc.DICTIONARY_EN));
            preference.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: aio.tts.DictionaryActivity$MenuFragment$$ExternalSyntheticLambda0
                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference2) {
                    return DictionaryActivity.MenuFragment.onCreatePreferences$lambda$1$lambda$0(this.f$0, contextRequireContext, preference2);
                }
            });
            preferenceScreenCreatePreferenceScreen.addPreference(preference);
            Preference preference2 = new Preference(contextRequireContext);
            preference2.setTitle("Backup Dictionary");
            preference2.setSummary(Desc.pick$default(Desc.INSTANCE, Desc.DICT_EXPORT, null, 2, null));
            preference2.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: aio.tts.DictionaryActivity$MenuFragment$$ExternalSyntheticLambda1
                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference3) {
                    return DictionaryActivity.MenuFragment.onCreatePreferences$lambda$3$lambda$2(this.f$0, preference3);
                }
            });
            preferenceScreenCreatePreferenceScreen.addPreference(preference2);
            Preference preference3 = new Preference(contextRequireContext);
            preference3.setTitle("Restore Dictionary");
            preference3.setSummary(Desc.pick$default(Desc.INSTANCE, Desc.DICT_IMPORT, null, 2, null));
            preference3.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: aio.tts.DictionaryActivity$MenuFragment$$ExternalSyntheticLambda2
                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference4) {
                    return DictionaryActivity.MenuFragment.onCreatePreferences$lambda$5$lambda$4(this.f$0, preference4);
                }
            });
            preferenceScreenCreatePreferenceScreen.addPreference(preference3);
            setPreferenceScreen(preferenceScreenCreatePreferenceScreen);
        }

        static final boolean onCreatePreferences$lambda$1$lambda$0(MenuFragment menuFragment, Context context, Preference it) {
            Intrinsics.checkNotNullParameter(it, "it");
            menuFragment.startActivity(new Intent(context, (Class<?>) DictionaryEntriesActivity.class));
            return true;
        }

        static final boolean onCreatePreferences$lambda$3$lambda$2(MenuFragment menuFragment, Preference it) throws JSONException {
            Intrinsics.checkNotNullParameter(it, "it");
            ImportExport importExport = ImportExport.INSTANCE;
            FragmentActivity fragmentActivityRequireActivity = menuFragment.requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            importExport.exportDictionary(fragmentActivityRequireActivity);
            return true;
        }

        static final boolean onCreatePreferences$lambda$5$lambda$4(MenuFragment menuFragment, Preference it) throws JSONException {
            Intrinsics.checkNotNullParameter(it, "it");
            ImportExport importExport = ImportExport.INSTANCE;
            FragmentActivity fragmentActivityRequireActivity = menuFragment.requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            importExport.importDictionary(fragmentActivityRequireActivity);
            return true;
        }
    }
}
