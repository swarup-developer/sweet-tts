package aio.tts;

import aio.tts.Dictionary;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DictionaryEntriesActivity.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ae\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0014\b\u0002\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\t2\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00010\tH\u0000¢\u0006\u0002\u0010\u000f¨\u0006\u0010"}, d2 = {"showEntryDialog", "", "activity", "Landroid/app/Activity;", "existingTargetKey", "", "index", "", "enabledTargets", "Lkotlin/Function0;", "", "Laio/tts/Dictionary$Target;", "targetFor", "Lkotlin/Function1;", "onSaved", "(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DictionaryEntriesActivityKt {

    /* compiled from: DictionaryEntriesActivity.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    /* renamed from: aio.tts.DictionaryEntriesActivityKt$showEntryDialog$1, reason: invalid class name */
    static final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function0<List<? extends Dictionary.Target>> {
        AnonymousClass1(Object obj) {
            super(0, obj, Dictionary.class, "enabledTargets", "enabledTargets()Ljava/util/List;", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final List<? extends Dictionary.Target> invoke() {
            return ((Dictionary) this.receiver).enabledTargets();
        }
    }

    /* compiled from: DictionaryEntriesActivity.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    /* renamed from: aio.tts.DictionaryEntriesActivityKt$showEntryDialog$2, reason: invalid class name */
    static final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<String, Dictionary.Target> {
        AnonymousClass2(Object obj) {
            super(1, obj, Dictionary.class, "targetFor", "targetFor(Ljava/lang/String;)Laio/tts/Dictionary$Target;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Dictionary.Target invoke(String p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return ((Dictionary) this.receiver).targetFor(p0);
        }
    }

    public static /* synthetic */ void showEntryDialog$default(Activity activity, String str, Integer num, Function0 function0, Function1 function1, Function0 function02, int i, Object obj) {
        if ((i & 8) != 0) {
            function0 = new AnonymousClass1(Dictionary.INSTANCE);
        }
        Function0 function03 = function0;
        if ((i & 16) != 0) {
            function1 = new AnonymousClass2(Dictionary.INSTANCE);
        }
        showEntryDialog(activity, str, num, function03, function1, function02);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void showEntryDialog(final android.app.Activity r17, final java.lang.String r18, final java.lang.Integer r19, kotlin.jvm.functions.Function0<? extends java.util.List<aio.tts.Dictionary.Target>> r20, kotlin.jvm.functions.Function1<? super java.lang.String, aio.tts.Dictionary.Target> r21, final kotlin.jvm.functions.Function0<kotlin.Unit> r22) {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.DictionaryEntriesActivityKt.showEntryDialog(android.app.Activity, java.lang.String, java.lang.Integer, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showEntryDialog$updateCaseSensitiveVisibility(List<Dictionary.Target> list, Spinner spinner, CheckBox checkBox) {
        Dictionary.Target target = (Dictionary.Target) CollectionsKt.getOrNull(list, spinner.getSelectedItemPosition());
        checkBox.setVisibility((target == null || !target.getAllowsCaseSensitive()) ? 8 : 0);
    }

    static final void showEntryDialog$lambda$10(String str, Integer num, Function0 function0, DialogInterface dialogInterface, int i) {
        Dictionary.INSTANCE.removeEntry(str, num.intValue());
        function0.invoke();
    }

    static final void showEntryDialog$lambda$13$lambda$12(EditText editText, final AlertDialog alertDialog, EditText editText2, List list, Spinner spinner, CheckBox checkBox, Activity activity, final String str, final Integer num, final Function0 function0, View view) {
        final String string = editText.getText().toString();
        if (string.length() == 0) {
            alertDialog.dismiss();
            return;
        }
        final String string2 = editText2.getText().toString();
        final Dictionary.Target target = (Dictionary.Target) list.get(spinner.getSelectedItemPosition());
        boolean z = target.getAllowsCaseSensitive() && checkBox.isChecked();
        if (string2.length() == 0) {
            final boolean z2 = z;
            new AlertDialog.Builder(activity).setMessage("No replacement word entered. This entry will not be spoken. Do you want to continue?").setPositiveButton("Continue", new DialogInterface.OnClickListener() { // from class: aio.tts.DictionaryEntriesActivityKt$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DictionaryEntriesActivityKt.showEntryDialog$lambda$13$lambda$12$commit(str, num, target, string, string2, z2, alertDialog, function0);
                }
            }).setNegativeButton("Go Back", (DialogInterface.OnClickListener) null).show();
        } else {
            showEntryDialog$lambda$13$lambda$12$commit(str, num, target, string, string2, z, alertDialog, function0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showEntryDialog$lambda$13$lambda$12$commit(String str, Integer num, Dictionary.Target target, String str2, String str3, boolean z, AlertDialog alertDialog, Function0<Unit> function0) {
        if (str == null || num == null) {
            Dictionary.INSTANCE.addEntry(target.getKey(), str2, str3, z);
        } else if (Intrinsics.areEqual(target.getKey(), str)) {
            Dictionary.INSTANCE.updateEntry(target.getKey(), num.intValue(), str2, str3, z);
        } else {
            Dictionary.INSTANCE.removeEntry(str, num.intValue());
            Dictionary.INSTANCE.addEntry(target.getKey(), str2, str3, z);
        }
        alertDialog.dismiss();
        function0.invoke();
    }
}
