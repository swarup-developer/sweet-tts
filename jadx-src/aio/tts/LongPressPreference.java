package aio.tts;

import android.content.Context;
import android.view.View;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PerApplicationActivity.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Laio/tts/LongPressPreference;", "Landroidx/preference/Preference;", "context", "Landroid/content/Context;", "onLong", "Lkotlin/Function1;", "", "<init>", "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V", "onBindViewHolder", "holder", "Landroidx/preference/PreferenceViewHolder;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LongPressPreference extends Preference {
    private final Function1<LongPressPreference, Unit> onLong;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LongPressPreference(Context context, Function1<? super LongPressPreference, Unit> onLong) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onLong, "onLong");
        this.onLong = onLong;
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onBindViewHolder(holder);
        holder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: aio.tts.LongPressPreference$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return LongPressPreference.onBindViewHolder$lambda$0(this.f$0, view);
            }
        });
    }

    static final boolean onBindViewHolder$lambda$0(LongPressPreference longPressPreference, View view) {
        longPressPreference.onLong.invoke(longPressPreference);
        return true;
    }
}
