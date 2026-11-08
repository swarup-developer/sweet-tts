package aio.tts;

import aio.tts.PerApplicationActivity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PerApplicationActivity.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \t2\u00020\u0001:\u0002\t\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\b\u0010\b\u001a\u00020\u0005H\u0014¨\u0006\u000b"}, d2 = {"Laio/tts/PerApplicationActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "Companion", "PerApplicationFragment", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PerApplicationActivity extends AppCompatActivity {
    private static final int CONTAINER_ID = View.generateViewId();

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("Per Application");
        PerApplicationActivity perApplicationActivity = this;
        LinearLayout linearLayout = new LinearLayout(perApplicationActivity);
        linearLayout.setOrientation(1);
        linearLayout.addView(UiHelpersKt.centeredHeader(perApplicationActivity, "Per Application"));
        FrameLayout frameLayout = new FrameLayout(perApplicationActivity);
        frameLayout.setId(CONTAINER_ID);
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
        setContentView(linearLayout);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        getSupportFragmentManager().beginTransaction().replace(CONTAINER_ID, new PerApplicationFragment()).commit();
    }

    /* compiled from: PerApplicationActivity.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, d2 = {"Laio/tts/PerApplicationActivity$PerApplicationFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "<init>", "()V", "onCreatePreferences", "", "savedInstanceState", "Landroid/os/Bundle;", "rootKey", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class PerApplicationFragment extends PreferenceFragmentCompat {
        @Override // androidx.preference.PreferenceFragmentCompat
        public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
            String strPick;
            Pair pair;
            final Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            PreferenceScreen preferenceScreenCreatePreferenceScreen = getPreferenceManager().createPreferenceScreen(contextRequireContext);
            Intrinsics.checkNotNullExpressionValue(preferenceScreenCreatePreferenceScreen, "createPreferenceScreen(...)");
            PackageManager packageManager = contextRequireContext.getPackageManager();
            boolean zHasPermission = ForegroundApp.INSTANCE.hasPermission(contextRequireContext);
            Preference preference = new Preference(contextRequireContext);
            preference.setTitle("Add Application");
            if (zHasPermission) {
                strPick = Desc.pick$default(Desc.INSTANCE, Desc.PERAPP_ADD_OK, null, 2, null);
            } else {
                strPick = Desc.INSTANCE.pick(Desc.PERAPP_ADD_NOPERM, Desc.PERAPP_ADD_NOPERM_EN);
            }
            preference.setSummary(strPick);
            preference.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: aio.tts.PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda1
                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference2) {
                    return PerApplicationActivity.PerApplicationFragment.onCreatePreferences$lambda$1$lambda$0(contextRequireContext, this, preference2);
                }
            });
            preferenceScreenCreatePreferenceScreen.addPreference(preference);
            Set<String> setAddedApps = Prefs.INSTANCE.addedApps();
            ArrayList arrayList = new ArrayList();
            for (String str : setAddedApps) {
                try {
                    pair = TuplesKt.to(str, packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0)).toString());
                } catch (Exception unused) {
                    pair = null;
                }
                if (pair != null) {
                    arrayList.add(pair);
                }
            }
            for (Pair pair2 : CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: aio.tts.PerApplicationActivity$PerApplicationFragment$onCreatePreferences$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    String lowerCase = ((String) ((Pair) t).getSecond()).toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    String lowerCase2 = ((String) ((Pair) t2).getSecond()).toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                    return ComparisonsKt.compareValues(lowerCase, lowerCase2);
                }
            })) {
                final String str2 = (String) pair2.component1();
                final String str3 = (String) pair2.component2();
                LongPressPreference longPressPreference = new LongPressPreference(contextRequireContext, new Function1() { // from class: aio.tts.PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PerApplicationActivity.PerApplicationFragment.onCreatePreferences$lambda$5(contextRequireContext, str3, str2, this, (LongPressPreference) obj);
                    }
                });
                longPressPreference.setTitle(str3);
                longPressPreference.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: aio.tts.PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda3
                    @Override // androidx.preference.Preference.OnPreferenceClickListener
                    public final boolean onPreferenceClick(Preference preference2) {
                        return PerApplicationActivity.PerApplicationFragment.onCreatePreferences$lambda$7$lambda$6(this.f$0, contextRequireContext, str2, preference2);
                    }
                });
                preferenceScreenCreatePreferenceScreen.addPreference(longPressPreference);
            }
            setPreferenceScreen(preferenceScreenCreatePreferenceScreen);
        }

        static final boolean onCreatePreferences$lambda$1$lambda$0(Context context, PerApplicationFragment perApplicationFragment, Preference it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (ForegroundApp.INSTANCE.hasPermission(context)) {
                perApplicationFragment.startActivity(new Intent(context, (Class<?>) AddAppActivity.class));
                return true;
            }
            ForegroundApp.INSTANCE.requestPermission(context);
            return true;
        }

        static final Unit onCreatePreferences$lambda$5(Context context, String str, final String str2, final PerApplicationFragment perApplicationFragment, final LongPressPreference pref) {
            Intrinsics.checkNotNullParameter(pref, "pref");
            new AlertDialog.Builder(context).setMessage("Remove " + str + " from Per Application?").setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: aio.tts.PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    PerApplicationActivity.PerApplicationFragment.onCreatePreferences$lambda$5$lambda$4(str2, perApplicationFragment, pref, dialogInterface, i);
                }
            }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
            return Unit.INSTANCE;
        }

        static final void onCreatePreferences$lambda$5$lambda$4(String str, PerApplicationFragment perApplicationFragment, LongPressPreference longPressPreference, DialogInterface dialogInterface, int i) {
            Prefs.INSTANCE.removeApp(str);
            Prefs.INSTANCE.clearAppVoices(str);
            perApplicationFragment.getPreferenceScreen().removePreference(longPressPreference);
        }

        static final boolean onCreatePreferences$lambda$7$lambda$6(PerApplicationFragment perApplicationFragment, Context context, String str, Preference it) {
            Intrinsics.checkNotNullParameter(it, "it");
            perApplicationFragment.startActivity(new Intent(context, (Class<?>) AppVoiceActivity.class).putExtra(AppVoiceActivity.EXTRA_PACKAGE, str));
            return true;
        }
    }
}
