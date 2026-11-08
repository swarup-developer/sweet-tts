package aio.tts;

import aio.tts.AddAppActivity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AddAppActivity.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \b2\u00020\u0001:\u0002\b\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014¨\u0006\n"}, d2 = {"Laio/tts/AddAppActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "AddAppFragment", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AddAppActivity extends AppCompatActivity {
    private static final int CONTAINER_ID = View.generateViewId();

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("Add Application");
        AddAppActivity addAppActivity = this;
        LinearLayout linearLayout = new LinearLayout(addAppActivity);
        linearLayout.setOrientation(1);
        linearLayout.addView(UiHelpersKt.centeredHeader(addAppActivity, "Add Application"));
        String strPick$default = Desc.pick$default(Desc.INSTANCE, Desc.PERAPP_PICK, null, 2, null);
        if (strPick$default != null) {
            TextView textView = new TextView(addAppActivity);
            textView.setText(strPick$default);
            textView.setTextSize(18.0f);
            textView.setPadding(32, 0, 32, 16);
            linearLayout.addView(textView);
        }
        FrameLayout frameLayout = new FrameLayout(addAppActivity);
        int i = CONTAINER_ID;
        frameLayout.setId(i);
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
        setContentView(linearLayout);
        getSupportFragmentManager().beginTransaction().replace(i, new AddAppFragment()).commit();
    }

    /* compiled from: AddAppActivity.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, d2 = {"Laio/tts/AddAppActivity$AddAppFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "<init>", "()V", "onCreatePreferences", "", "savedInstanceState", "Landroid/os/Bundle;", "rootKey", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class AddAppFragment extends PreferenceFragmentCompat {
        @Override // androidx.preference.PreferenceFragmentCompat
        public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
            Pair pair;
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            PreferenceScreen preferenceScreenCreatePreferenceScreen = getPreferenceManager().createPreferenceScreen(contextRequireContext);
            Intrinsics.checkNotNullExpressionValue(preferenceScreenCreatePreferenceScreen, "createPreferenceScreen(...)");
            PackageManager packageManager = contextRequireContext.getPackageManager();
            Intent intentAddCategory = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER");
            Intrinsics.checkNotNullExpressionValue(intentAddCategory, "addCategory(...)");
            Set<String> setAddedApps = Prefs.INSTANCE.addedApps();
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intentAddCategory, 0);
            Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities, "queryIntentActivities(...)");
            List<ResolveInfo> list = listQueryIntentActivities;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((ResolveInfo) it.next()).activityInfo.packageName);
            }
            List listDistinct = CollectionsKt.distinct(arrayList);
            ArrayList<String> arrayList2 = new ArrayList();
            for (Object obj : listDistinct) {
                String str = (String) obj;
                if (!Intrinsics.areEqual(str, contextRequireContext.getPackageName()) && !setAddedApps.contains(str)) {
                    arrayList2.add(obj);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            for (String str2 : arrayList2) {
                try {
                    pair = TuplesKt.to(str2, packageManager.getApplicationLabel(packageManager.getApplicationInfo(str2, 0)).toString());
                } catch (PackageManager.NameNotFoundException unused) {
                    pair = null;
                }
                if (pair != null) {
                    arrayList3.add(pair);
                }
            }
            List<Pair> listSortedWith = CollectionsKt.sortedWith(arrayList3, new Comparator() { // from class: aio.tts.AddAppActivity$AddAppFragment$onCreatePreferences$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    String lowerCase = ((String) ((Pair) t).getSecond()).toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    String lowerCase2 = ((String) ((Pair) t2).getSecond()).toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                    return ComparisonsKt.compareValues(lowerCase, lowerCase2);
                }
            });
            if (listSortedWith.isEmpty()) {
                Preference preference = new Preference(contextRequireContext);
                preference.setTitle("No more apps to add");
                preference.setSummary("Every launchable app is already added.");
                preference.setSelectable(false);
                preferenceScreenCreatePreferenceScreen.addPreference(preference);
            } else {
                for (Pair pair2 : listSortedWith) {
                    final String str3 = (String) pair2.component1();
                    String str4 = (String) pair2.component2();
                    Preference preference2 = new Preference(contextRequireContext);
                    preference2.setTitle(str4);
                    preference2.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: aio.tts.AddAppActivity$AddAppFragment$$ExternalSyntheticLambda0
                        @Override // androidx.preference.Preference.OnPreferenceClickListener
                        public final boolean onPreferenceClick(Preference preference3) {
                            return AddAppActivity.AddAppFragment.onCreatePreferences$lambda$6$lambda$5(str3, this, preference3);
                        }
                    });
                    preferenceScreenCreatePreferenceScreen.addPreference(preference2);
                }
            }
            setPreferenceScreen(preferenceScreenCreatePreferenceScreen);
        }

        static final boolean onCreatePreferences$lambda$6$lambda$5(String str, AddAppFragment addAppFragment, Preference it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Prefs prefs = Prefs.INSTANCE;
            Intrinsics.checkNotNull(str);
            prefs.addApp(str);
            addAppFragment.requireActivity().finish();
            return true;
        }
    }
}
