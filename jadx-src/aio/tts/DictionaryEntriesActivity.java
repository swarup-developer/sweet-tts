package aio.tts;

import aio.tts.Dictionary;
import aio.tts.DictionaryEntriesActivity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DictionaryEntriesActivity.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \n2\u00020\u0001:\u0003\n\u000b\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0006\u0010\b\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0005¨\u0006\r"}, d2 = {"Laio/tts/DictionaryEntriesActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "showEditList", "refreshEditListIfShowing", "Companion", "MenuFragment", "EditListFragment", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DictionaryEntriesActivity extends AppCompatActivity {
    private static final int CONTAINER_ID = View.generateViewId();

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("Dictionary");
        DictionaryEntriesActivity dictionaryEntriesActivity = this;
        LinearLayout linearLayout = new LinearLayout(dictionaryEntriesActivity);
        linearLayout.setOrientation(1);
        linearLayout.addView(UiHelpersKt.centeredHeader(dictionaryEntriesActivity, "Dictionary"));
        FrameLayout frameLayout = new FrameLayout(dictionaryEntriesActivity);
        int i = CONTAINER_ID;
        frameLayout.setId(i);
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
        setContentView(linearLayout);
        if (savedInstanceState == null) {
            getSupportFragmentManager().beginTransaction().replace(i, new MenuFragment()).commit();
        }
    }

    public final void showEditList() {
        getSupportFragmentManager().beginTransaction().replace(CONTAINER_ID, new EditListFragment()).addToBackStack(null).commit();
    }

    public final void refreshEditListIfShowing() {
        Fragment fragmentFindFragmentById = getSupportFragmentManager().findFragmentById(CONTAINER_ID);
        if (fragmentFindFragmentById instanceof EditListFragment) {
            ((EditListFragment) fragmentFindFragmentById).rebuild();
        }
    }

    /* compiled from: DictionaryEntriesActivity.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\n\u001a\u00020\tH\u0002¨\u0006\u000b"}, d2 = {"Laio/tts/DictionaryEntriesActivity$MenuFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "<init>", "()V", "onCreatePreferences", "", "savedInstanceState", "Landroid/os/Bundle;", "rootKey", "", "entryCountSummary", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class MenuFragment extends PreferenceFragmentCompat {
        @Override // androidx.preference.PreferenceFragmentCompat
        public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            PreferenceScreen preferenceScreenCreatePreferenceScreen = getPreferenceManager().createPreferenceScreen(contextRequireContext);
            Intrinsics.checkNotNullExpressionValue(preferenceScreenCreatePreferenceScreen, "createPreferenceScreen(...)");
            Preference preference = new Preference(contextRequireContext);
            preference.setTitle("Add Entry");
            preference.setSummary(Desc.pick$default(Desc.INSTANCE, Desc.DICT_ENTRIES_INTRO, null, 2, null));
            preference.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: aio.tts.DictionaryEntriesActivity$MenuFragment$$ExternalSyntheticLambda1
                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference2) {
                    return DictionaryEntriesActivity.MenuFragment.onCreatePreferences$lambda$2$lambda$1(this.f$0, preference2);
                }
            });
            preferenceScreenCreatePreferenceScreen.addPreference(preference);
            Preference preference2 = new Preference(contextRequireContext);
            preference2.setTitle("Edit Entries");
            preference2.setSummary(entryCountSummary());
            preference2.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: aio.tts.DictionaryEntriesActivity$MenuFragment$$ExternalSyntheticLambda2
                @Override // androidx.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference3) {
                    return DictionaryEntriesActivity.MenuFragment.onCreatePreferences$lambda$4$lambda$3(this.f$0, preference3);
                }
            });
            preferenceScreenCreatePreferenceScreen.addPreference(preference2);
            setPreferenceScreen(preferenceScreenCreatePreferenceScreen);
        }

        static final boolean onCreatePreferences$lambda$2$lambda$1(final MenuFragment menuFragment, Preference it) {
            Intrinsics.checkNotNullParameter(it, "it");
            FragmentActivity fragmentActivityRequireActivity = menuFragment.requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            DictionaryEntriesActivityKt.showEntryDialog$default(fragmentActivityRequireActivity, null, null, null, null, new Function0() { // from class: aio.tts.DictionaryEntriesActivity$MenuFragment$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DictionaryEntriesActivity.MenuFragment.onCreatePreferences$lambda$2$lambda$1$lambda$0(this.f$0);
                }
            }, 24, null);
            return true;
        }

        static final Unit onCreatePreferences$lambda$2$lambda$1$lambda$0(MenuFragment menuFragment) {
            FragmentActivity activity = menuFragment.getActivity();
            DictionaryEntriesActivity dictionaryEntriesActivity = activity instanceof DictionaryEntriesActivity ? (DictionaryEntriesActivity) activity : null;
            if (dictionaryEntriesActivity != null) {
                dictionaryEntriesActivity.refreshEditListIfShowing();
            }
            return Unit.INSTANCE;
        }

        static final boolean onCreatePreferences$lambda$4$lambda$3(MenuFragment menuFragment, Preference it) {
            Intrinsics.checkNotNullParameter(it, "it");
            FragmentActivity activity = menuFragment.getActivity();
            DictionaryEntriesActivity dictionaryEntriesActivity = activity instanceof DictionaryEntriesActivity ? (DictionaryEntriesActivity) activity : null;
            if (dictionaryEntriesActivity == null) {
                return true;
            }
            dictionaryEntriesActivity.showEditList();
            return true;
        }

        private final String entryCountSummary() {
            Iterator<T> it = Dictionary.INSTANCE.allTargets().iterator();
            int size = 0;
            while (it.hasNext()) {
                size += Dictionary.INSTANCE.entriesFor(((Dictionary.Target) it.next()).getKey()).size();
            }
            if (size == 0) {
                return "No entries yet";
            }
            return size + " entr" + (size == 1 ? "y" : "ies");
        }
    }

    /* compiled from: DictionaryEntriesActivity.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\u0006\u0010\n\u001a\u00020\u0005¨\u0006\u000b"}, d2 = {"Laio/tts/DictionaryEntriesActivity$EditListFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "<init>", "()V", "onCreatePreferences", "", "savedInstanceState", "Landroid/os/Bundle;", "rootKey", "", "rebuild", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class EditListFragment extends PreferenceFragmentCompat {
        @Override // androidx.preference.PreferenceFragmentCompat
        public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
            rebuild();
        }

        public final void rebuild() {
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            PreferenceScreen preferenceScreenCreatePreferenceScreen = getPreferenceManager().createPreferenceScreen(contextRequireContext);
            Intrinsics.checkNotNullExpressionValue(preferenceScreenCreatePreferenceScreen, "createPreferenceScreen(...)");
            int i = 0;
            for (final Dictionary.Target target : Dictionary.INSTANCE.allTargets()) {
                final int i2 = 0;
                for (Object obj : Dictionary.INSTANCE.entriesFor(target.getKey())) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    Dictionary.Entry entry = (Dictionary.Entry) obj;
                    i++;
                    String replace = entry.getReplace().length() == 0 ? "(nothing spoken)" : entry.getReplace();
                    List listMutableListOf = CollectionsKt.mutableListOf(target.getLabel());
                    if (target.getAllowsCaseSensitive()) {
                        listMutableListOf.add("Case Sensitive: ".concat(entry.getCaseSensitive() ? "Yes" : "No"));
                    }
                    Preference preference = new Preference(contextRequireContext);
                    preference.setTitle(i + ". " + entry.getFind() + " → " + replace);
                    preference.setSummary(CollectionsKt.joinToString$default(listMutableListOf, " • ", null, null, 0, null, null, 62, null));
                    preference.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: aio.tts.DictionaryEntriesActivity$EditListFragment$$ExternalSyntheticLambda0
                        @Override // androidx.preference.Preference.OnPreferenceClickListener
                        public final boolean onPreferenceClick(Preference preference2) {
                            return DictionaryEntriesActivity.EditListFragment.rebuild$lambda$3$lambda$2$lambda$1(this.f$0, target, i2, preference2);
                        }
                    });
                    preferenceScreenCreatePreferenceScreen.addPreference(preference);
                    i2 = i3;
                }
            }
            if (i == 0) {
                Preference preference2 = new Preference(contextRequireContext);
                preference2.setTitle("No entries yet");
                preference2.setSelectable(false);
                preferenceScreenCreatePreferenceScreen.addPreference(preference2);
            }
            setPreferenceScreen(preferenceScreenCreatePreferenceScreen);
        }

        static final boolean rebuild$lambda$3$lambda$2$lambda$1(final EditListFragment editListFragment, Dictionary.Target target, int i, Preference it) {
            Intrinsics.checkNotNullParameter(it, "it");
            FragmentActivity fragmentActivityRequireActivity = editListFragment.requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            DictionaryEntriesActivityKt.showEntryDialog$default(fragmentActivityRequireActivity, target.getKey(), Integer.valueOf(i), null, null, new Function0() { // from class: aio.tts.DictionaryEntriesActivity$EditListFragment$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DictionaryEntriesActivity.EditListFragment.rebuild$lambda$3$lambda$2$lambda$1$lambda$0(this.f$0);
                }
            }, 24, null);
            return true;
        }

        static final Unit rebuild$lambda$3$lambda$2$lambda$1$lambda$0(EditListFragment editListFragment) {
            editListFragment.rebuild();
            return Unit.INSTANCE;
        }
    }
}
