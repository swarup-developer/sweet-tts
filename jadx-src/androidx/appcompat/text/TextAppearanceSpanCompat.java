package androidx.appcompat.text;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import android.text.style.TextAppearanceSpan;
import androidx.appcompat.R;
import androidx.appcompat.text.TextAppearanceSpanCompat;
import androidx.core.content.res.ResourcesCompat;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextAppearanceSpanCompat.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B7\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0012\u0010\u0015\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0012\u0010\u0016\u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0002R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Landroidx/appcompat/text/TextAppearanceSpanCompat;", "Landroid/text/style/MetricAffectingSpan;", "context", "Landroid/content/Context;", "appearance", "", "colorList", "fontResId", "appCompatTypeface", "Ljava/util/concurrent/atomic/AtomicReference;", "Landroid/graphics/Typeface;", "<init>", "(Landroid/content/Context;IIILjava/util/concurrent/atomic/AtomicReference;)V", "getAppCompatTypeface$appcompat", "()Ljava/util/concurrent/atomic/AtomicReference;", "platformTextAppearanceSpan", "Landroid/text/style/TextAppearanceSpan;", "updateMeasureState", "", "ds", "Landroid/text/TextPaint;", "updateDrawState", "updateTypefaceIfNecessary", "paint", "Landroid/graphics/Paint;", "Companion", "appcompat"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextAppearanceSpanCompat extends MetricAffectingSpan {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final TextAppearanceSpanCompat$Companion$DEFAULT_FONT_FETCHER$1 DEFAULT_FONT_FETCHER = new Companion.FontFetcher() { // from class: androidx.appcompat.text.TextAppearanceSpanCompat$Companion$DEFAULT_FONT_FETCHER$1
        @Override // androidx.appcompat.text.TextAppearanceSpanCompat.Companion.FontFetcher
        public Typeface getCachedFont(Context context, int fontResId) {
            Intrinsics.checkNotNullParameter(context, "context");
            return ResourcesCompat.getCachedFont(context, fontResId);
        }

        @Override // androidx.appcompat.text.TextAppearanceSpanCompat.Companion.FontFetcher
        public Typeface getFont(Context context, int fontResId) {
            Intrinsics.checkNotNullParameter(context, "context");
            return ResourcesCompat.getFont(context, fontResId);
        }
    };
    private final AtomicReference<Typeface> appCompatTypeface;
    private final int fontResId;
    private final TextAppearanceSpan platformTextAppearanceSpan;

    public /* synthetic */ TextAppearanceSpanCompat(Context context, int i, int i2, int i3, AtomicReference atomicReference, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, i, i2, i3, atomicReference);
    }

    @JvmStatic
    public static final TextAppearanceSpanCompat create(Context context, int i, int i2, Executor executor, Runnable runnable) {
        return INSTANCE.create(context, i, i2, executor, runnable);
    }

    private TextAppearanceSpanCompat(Context context, int i, int i2, int i3, AtomicReference<Typeface> atomicReference) {
        this.fontResId = i3;
        this.appCompatTypeface = atomicReference;
        this.platformTextAppearanceSpan = new TextAppearanceSpan(context, i, i2);
    }

    public final AtomicReference<Typeface> getAppCompatTypeface$appcompat() {
        return this.appCompatTypeface;
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint ds) {
        Intrinsics.checkNotNullParameter(ds, "ds");
        this.platformTextAppearanceSpan.updateMeasureState(ds);
        updateTypefaceIfNecessary(ds);
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint ds) {
        this.platformTextAppearanceSpan.updateDrawState(ds);
        updateTypefaceIfNecessary(ds);
    }

    private final void updateTypefaceIfNecessary(Paint paint) {
        Typeface typeface;
        if (paint == null || this.fontResId == -1 || this.platformTextAppearanceSpan.getTypeface() != null || (typeface = this.appCompatTypeface.get()) == null) {
            return;
        }
        paint.setTypeface(typeface);
    }

    /* compiled from: TextAppearanceSpanCompat.kt */
    @Metadata(d1 = {"\u0000=\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0011\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0017B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0002J=\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0000¢\u0006\u0002\b\u0016R\u0010\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0012¨\u0006\u0018"}, d2 = {"Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion;", "", "<init>", "()V", "create", "Landroidx/appcompat/text/TextAppearanceSpanCompat;", "context", "Landroid/content/Context;", "appearance", "", "colorList", "executor", "Ljava/util/concurrent/Executor;", "onComplete", "Ljava/lang/Runnable;", "extractFontFamilyAttribute", "DEFAULT_FONT_FETCHER", "androidx/appcompat/text/TextAppearanceSpanCompat$Companion$DEFAULT_FONT_FETCHER$1", "Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$DEFAULT_FONT_FETCHER$1;", "createInternal", "fetcher", "Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$FontFetcher;", "createInternal$appcompat", "FontFetcher", "appcompat"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* compiled from: TextAppearanceSpanCompat.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\b\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Landroidx/appcompat/text/TextAppearanceSpanCompat$Companion$FontFetcher;", "", "getCachedFont", "Landroid/graphics/Typeface;", "context", "Landroid/content/Context;", "fontResId", "", "getFont", "appcompat"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public interface FontFetcher {
            Typeface getCachedFont(Context context, int fontResId);

            Typeface getFont(Context context, int fontResId);
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final TextAppearanceSpanCompat create(Context context, int appearance, int colorList, Executor executor, Runnable onComplete) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(executor, "executor");
            Intrinsics.checkNotNullParameter(onComplete, "onComplete");
            return createInternal$appcompat(context, appearance, colorList, executor, onComplete, TextAppearanceSpanCompat.DEFAULT_FONT_FETCHER);
        }

        private final int extractFontFamilyAttribute(Context context, int appearance) throws Resources.NotFoundException {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(appearance, R.styleable.TextAppearance);
            Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            try {
                return typedArrayObtainStyledAttributes.getResourceId(R.styleable.TextAppearance_android_fontFamily, -1);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }

        public final TextAppearanceSpanCompat createInternal$appcompat(Context context, int appearance, int colorList, Executor executor, final Runnable onComplete, final FontFetcher fetcher) throws Resources.NotFoundException {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(executor, "executor");
            Intrinsics.checkNotNullParameter(onComplete, "onComplete");
            Intrinsics.checkNotNullParameter(fetcher, "fetcher");
            final int iExtractFontFamilyAttribute = extractFontFamilyAttribute(context, appearance);
            if (iExtractFontFamilyAttribute == -1) {
                return new TextAppearanceSpanCompat(context, appearance, colorList, iExtractFontFamilyAttribute, new AtomicReference(null), null);
            }
            Typeface cachedFont = fetcher.getCachedFont(context, iExtractFontFamilyAttribute);
            if (cachedFont != null) {
                return new TextAppearanceSpanCompat(context, appearance, colorList, iExtractFontFamilyAttribute, new AtomicReference(cachedFont), null);
            }
            final AtomicReference atomicReference = new AtomicReference(null);
            final Context applicationContext = context.getApplicationContext();
            executor.execute(new Runnable() { // from class: androidx.appcompat.text.TextAppearanceSpanCompat$Companion$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    TextAppearanceSpanCompat.Companion.createInternal$lambda$0(fetcher, applicationContext, iExtractFontFamilyAttribute, atomicReference, onComplete);
                }
            });
            return new TextAppearanceSpanCompat(context, appearance, colorList, iExtractFontFamilyAttribute, atomicReference, null);
        }

        static final void createInternal$lambda$0(FontFetcher fontFetcher, Context context, int i, AtomicReference atomicReference, Runnable runnable) {
            Intrinsics.checkNotNull(context);
            Typeface font = fontFetcher.getFont(context, i);
            if (font != null) {
                atomicReference.set(font);
            }
            runnable.run();
        }
    }
}
