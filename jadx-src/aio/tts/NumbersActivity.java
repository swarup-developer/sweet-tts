package aio.tts;

import aio.tts.NumbersActivity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.CheckBoxPreference;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NumbersActivity.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \b2\u00020\u0001:\u0002\b\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014¨\u0006\n"}, d2 = {"Laio/tts/NumbersActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "NumbersFragment", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NumbersActivity extends AppCompatActivity {
    private static final int CONTAINER_ID = View.generateViewId();

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("Numbers, Mobile & OTP");
        NumbersActivity numbersActivity = this;
        LinearLayout linearLayout = new LinearLayout(numbersActivity);
        linearLayout.setOrientation(1);
        linearLayout.addView(UiHelpersKt.centeredHeader(numbersActivity, "Numbers, Mobile & OTP"));
        FrameLayout frameLayout = new FrameLayout(numbersActivity);
        int i = CONTAINER_ID;
        frameLayout.setId(i);
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
        setContentView(linearLayout);
        getSupportFragmentManager().beginTransaction().replace(i, new NumbersFragment()).commit();
    }

    /* compiled from: NumbersActivity.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, d2 = {"Laio/tts/NumbersActivity$NumbersFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "<init>", "()V", "onCreatePreferences", "", "savedInstanceState", "Landroid/os/Bundle;", "rootKey", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class NumbersFragment extends PreferenceFragmentCompat {
        @Override // androidx.preference.PreferenceFragmentCompat
        public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
            String string;
            String string2;
            String string3;
            String string4;
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            PreferenceScreen preferenceScreenCreatePreferenceScreen = getPreferenceManager().createPreferenceScreen(contextRequireContext);
            Intrinsics.checkNotNullExpressionValue(preferenceScreenCreatePreferenceScreen, "createPreferenceScreen(...)");
            ListPreference listPreference = new ListPreference(contextRequireContext);
            listPreference.setKey("long_number_reading_mode");
            listPreference.setTitle("Long Number Reading");
            String strPick$default = Desc.pick$default(Desc.INSTANCE, Desc.LONG_NUMBER, null, 2, null);
            listPreference.setSummary((strPick$default == null || (string4 = new StringBuilder("%s\n").append(strPick$default).toString()) == null) ? "%s" : string4);
            listPreference.setEntries(new String[]{"None (No Processing)", "Ones (say as a number)", "Tens (say as a number)", "Hundreds (say as a number)", "Group of 2 (say digit by digit, with pause)", "Group of 3 (say digit by digit, with pause)", "Group of 4 (say digit by digit, with pause)", "Group of 5 (say digit by digit, with pause)"});
            listPreference.setEntryValues(new String[]{PunctuationReader.NONE, "ones", "tens", "hundreds", "group_2", "group_3", "group_4", "group_5"});
            listPreference.setValue(Prefs.INSTANCE.longNumberReadingMode());
            listPreference.setNegativeButtonText((CharSequence) null);
            listPreference.setPersistent(false);
            listPreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: aio.tts.NumbersActivity$NumbersFragment$$ExternalSyntheticLambda0
                @Override // androidx.preference.Preference.OnPreferenceChangeListener
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return NumbersActivity.NumbersFragment.onCreatePreferences$lambda$2$lambda$1(preference, obj);
                }
            });
            preferenceScreenCreatePreferenceScreen.addPreference(listPreference);
            ListPreference listPreference2 = new ListPreference(contextRequireContext);
            listPreference2.setKey("long_number_min_digits");
            listPreference2.setTitle("Long Number Reading applies to");
            String strPick$default2 = Desc.pick$default(Desc.INSTANCE, Desc.LONG_NUMBER_APPLIES, null, 2, null);
            listPreference2.setSummary((strPick$default2 == null || (string3 = new StringBuilder("%s\n").append(strPick$default2).toString()) == null) ? "%s" : string3);
            listPreference2.setEntries(new String[]{"5 Digits & Above", "6 Digits & Above", "7 Digits & Above", "8 Digits & Above", "9 Digits & Above", "10 Digits & Above"});
            listPreference2.setEntryValues(new String[]{"5", "6", "7", "8", "9", "10"});
            listPreference2.setValue(String.valueOf(Prefs.INSTANCE.longNumberMinDigits()));
            listPreference2.setNegativeButtonText((CharSequence) null);
            listPreference2.setPersistent(false);
            listPreference2.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: aio.tts.NumbersActivity$NumbersFragment$$ExternalSyntheticLambda1
                @Override // androidx.preference.Preference.OnPreferenceChangeListener
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return NumbersActivity.NumbersFragment.onCreatePreferences$lambda$5$lambda$4(preference, obj);
                }
            });
            preferenceScreenCreatePreferenceScreen.addPreference(listPreference2);
            ListPreference listPreference3 = new ListPreference(contextRequireContext);
            listPreference3.setKey("mobile_13_digit_pattern");
            listPreference3.setTitle("Mobile Number Reading");
            String strPick$default3 = Desc.pick$default(Desc.INSTANCE, Desc.MOBILE, null, 2, null);
            listPreference3.setSummary((strPick$default3 == null || (string2 = new StringBuilder("%s\n").append(strPick$default3).toString()) == null) ? "%s" : string2);
            listPreference3.setEntries(new String[]{"None (No Grouping)", "+91 12345 67890", "+91 123 456 7890", "+91 1234 567 890", "+91 12 34 56 78 90"});
            listPreference3.setEntryValues(new String[]{PunctuationReader.NONE, "5-5", "3-3-4", "4-3-3", "2-2-2-2-2"});
            listPreference3.setValue(Prefs.INSTANCE.mobile13DigitPattern());
            listPreference3.setNegativeButtonText((CharSequence) null);
            listPreference3.setPersistent(false);
            listPreference3.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: aio.tts.NumbersActivity$NumbersFragment$$ExternalSyntheticLambda2
                @Override // androidx.preference.Preference.OnPreferenceChangeListener
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return NumbersActivity.NumbersFragment.onCreatePreferences$lambda$8$lambda$7(preference, obj);
                }
            });
            preferenceScreenCreatePreferenceScreen.addPreference(listPreference3);
            CheckBoxPreference checkBoxPreference = new CheckBoxPreference(contextRequireContext);
            checkBoxPreference.setKey("crore_lakh_enabled");
            checkBoxPreference.setTitle("Amount Reading");
            checkBoxPreference.setSummary(Desc.INSTANCE.pick(Desc.AMOUNT, Desc.AMOUNT_EN));
            checkBoxPreference.setChecked(Prefs.INSTANCE.croreLakhEnabled());
            checkBoxPreference.setPersistent(false);
            checkBoxPreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: aio.tts.NumbersActivity$NumbersFragment$$ExternalSyntheticLambda3
                @Override // androidx.preference.Preference.OnPreferenceChangeListener
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return NumbersActivity.NumbersFragment.onCreatePreferences$lambda$10$lambda$9(preference, obj);
                }
            });
            preferenceScreenCreatePreferenceScreen.addPreference(checkBoxPreference);
            CheckBoxPreference checkBoxPreference2 = new CheckBoxPreference(contextRequireContext);
            checkBoxPreference2.setKey("otp_reading_enabled");
            checkBoxPreference2.setTitle("OTP Reading");
            checkBoxPreference2.setSummary(Desc.pick$default(Desc.INSTANCE, Desc.OTP, null, 2, null));
            checkBoxPreference2.setChecked(Prefs.INSTANCE.otpReadingEnabled());
            checkBoxPreference2.setPersistent(false);
            checkBoxPreference2.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: aio.tts.NumbersActivity$NumbersFragment$$ExternalSyntheticLambda4
                @Override // androidx.preference.Preference.OnPreferenceChangeListener
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return NumbersActivity.NumbersFragment.onCreatePreferences$lambda$12$lambda$11(preference, obj);
                }
            });
            preferenceScreenCreatePreferenceScreen.addPreference(checkBoxPreference2);
            CheckBoxPreference checkBoxPreference3 = new CheckBoxPreference(contextRequireContext);
            checkBoxPreference3.setKey("otp_clipboard_enabled");
            checkBoxPreference3.setTitle("Copy OTP to clipboard");
            checkBoxPreference3.setSummary(Desc.pick$default(Desc.INSTANCE, Desc.OTP_CLIPBOARD, null, 2, null));
            checkBoxPreference3.setChecked(Prefs.INSTANCE.otpClipboardEnabled());
            checkBoxPreference3.setPersistent(false);
            checkBoxPreference3.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: aio.tts.NumbersActivity$NumbersFragment$$ExternalSyntheticLambda5
                @Override // androidx.preference.Preference.OnPreferenceChangeListener
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return NumbersActivity.NumbersFragment.onCreatePreferences$lambda$14$lambda$13(preference, obj);
                }
            });
            preferenceScreenCreatePreferenceScreen.addPreference(checkBoxPreference3);
            ListPreference listPreference4 = new ListPreference(contextRequireContext);
            listPreference4.setKey("otp_clipboard_delay_sec");
            listPreference4.setTitle("Copy OTP after");
            String strPick$default4 = Desc.pick$default(Desc.INSTANCE, Desc.OTP_AFTER, null, 2, null);
            listPreference4.setSummary((strPick$default4 == null || (string = new StringBuilder("%s\n").append(strPick$default4).toString()) == null) ? "%s" : string);
            String[] strArr = new String[8];
            int i = 0;
            while (i < 8) {
                strArr[i] = i == 0 ? "1 second" : (i + 1) + " seconds";
                i++;
            }
            listPreference4.setEntries(strArr);
            String[] strArr2 = new String[8];
            int i2 = 0;
            while (i2 < 8) {
                int i3 = i2 + 1;
                strArr2[i2] = String.valueOf(i3);
                i2 = i3;
            }
            listPreference4.setEntryValues(strArr2);
            listPreference4.setValue(String.valueOf(Prefs.INSTANCE.otpClipboardDelaySec()));
            listPreference4.setNegativeButtonText((CharSequence) null);
            listPreference4.setPersistent(false);
            listPreference4.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: aio.tts.NumbersActivity$NumbersFragment$$ExternalSyntheticLambda6
                @Override // androidx.preference.Preference.OnPreferenceChangeListener
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    return NumbersActivity.NumbersFragment.onCreatePreferences$lambda$17$lambda$16(preference, obj);
                }
            });
            preferenceScreenCreatePreferenceScreen.addPreference(listPreference4);
            setPreferenceScreen(preferenceScreenCreatePreferenceScreen);
        }

        static final boolean onCreatePreferences$lambda$2$lambda$1(Preference preference, Object obj) {
            Intrinsics.checkNotNullParameter(preference, "<unused var>");
            Prefs prefs = Prefs.INSTANCE;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            prefs.setLongNumberReadingMode((String) obj);
            return true;
        }

        static final boolean onCreatePreferences$lambda$5$lambda$4(Preference preference, Object obj) {
            Intrinsics.checkNotNullParameter(preference, "<unused var>");
            Prefs prefs = Prefs.INSTANCE;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            prefs.setLongNumberMinDigits(Integer.parseInt((String) obj));
            return true;
        }

        static final boolean onCreatePreferences$lambda$8$lambda$7(Preference preference, Object obj) {
            Intrinsics.checkNotNullParameter(preference, "<unused var>");
            Prefs prefs = Prefs.INSTANCE;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            prefs.setMobile13DigitPattern((String) obj);
            return true;
        }

        static final boolean onCreatePreferences$lambda$10$lambda$9(Preference preference, Object obj) {
            Intrinsics.checkNotNullParameter(preference, "<unused var>");
            Prefs prefs = Prefs.INSTANCE;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            prefs.setCroreLakhEnabled(((Boolean) obj).booleanValue());
            return true;
        }

        static final boolean onCreatePreferences$lambda$12$lambda$11(Preference preference, Object obj) {
            Intrinsics.checkNotNullParameter(preference, "<unused var>");
            Prefs prefs = Prefs.INSTANCE;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            prefs.setOtpReadingEnabled(((Boolean) obj).booleanValue());
            return true;
        }

        static final boolean onCreatePreferences$lambda$14$lambda$13(Preference preference, Object obj) {
            Intrinsics.checkNotNullParameter(preference, "<unused var>");
            Prefs prefs = Prefs.INSTANCE;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            prefs.setOtpClipboardEnabled(((Boolean) obj).booleanValue());
            return true;
        }

        static final boolean onCreatePreferences$lambda$17$lambda$16(Preference preference, Object obj) {
            Intrinsics.checkNotNullParameter(preference, "<unused var>");
            Prefs prefs = Prefs.INSTANCE;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            prefs.setOtpClipboardDelaySec(Integer.parseInt((String) obj));
            return true;
        }
    }
}
