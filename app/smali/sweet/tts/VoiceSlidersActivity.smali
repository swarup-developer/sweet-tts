.class public final Lsweet/tts/VoiceSlidersActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VoiceSlidersActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/VoiceSlidersActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoiceSlidersActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoiceSlidersActivity.kt\nsweet/tts/VoiceSlidersActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,207:1\n1#2:208\n295#3,2:209\n*S KotlinDebug\n*F\n+ 1 VoiceSlidersActivity.kt\nsweet/tts/VoiceSlidersActivity\n*L\n86#1:209,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014JD\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u0013H\u0002J4\u0010\u0014\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u000f2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u0013H\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Lsweet/tts/VoiceSlidersActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "buildScaledSlider",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "label",
        "",
        "rawValue",
        "",
        "rawMin",
        "rawMax",
        "onChanged",
        "Lkotlin/Function1;",
        "buildSlider",
        "initialValue",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lsweet/tts/VoiceSlidersActivity$Companion;

.field public static final EXTRA_VOICE_NAME:Ljava/lang/String; = "voice_name"

.field private static final GOOGLE_PITCH_MAX:I = 0x1a4

.field private static final GOOGLE_PITCH_MIN:I = 0x14

.field private static final GOOGLE_RATE_MAX:I = 0x230

.field private static final GOOGLE_RATE_MIN:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/VoiceSlidersActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsweet/tts/VoiceSlidersActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsweet/tts/VoiceSlidersActivity;->Companion:Lsweet/tts/VoiceSlidersActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final buildScaledSlider(Landroid/content/Context;Ljava/lang/String;IIILkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "III",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    sub-int/2addr p3, p4

    int-to-float p3, p3

    sub-int v0, p5, p4

    int-to-float v0, v0

    div-float/2addr p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p3, v0

    .line 113
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {p3, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p3

    .line 114
    new-instance v0, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p4, p5, p6}, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda6;-><init>(IILkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lsweet/tts/VoiceSlidersActivity;->buildSlider(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method static final buildScaledSlider$lambda$13(IILkotlin/jvm/functions/Function1;I)Lkotlin/Unit;
    .locals 1

    int-to-float p3, p3

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    add-int/2addr p0, p1

    .line 116
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final buildSlider(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    .line 127
    new-instance p0, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x18

    const/4 v2, 0x0

    .line 129
    invoke-virtual {p0, v2, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 132
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 134
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x8

    .line 135
    invoke-virtual {v5, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 137
    move-object v1, v5

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 141
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 145
    const-string v3, "-1%"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Decrease "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " by 1 percent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v3, v4

    .line 148
    new-instance v4, Landroid/widget/SeekBar;

    invoke-direct {v4, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x64

    .line 149
    invoke-virtual {v4, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 150
    invoke-virtual {v4, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " slider"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 159
    const-string p1, "+1%"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v8, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "Increase "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v8, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 172
    new-instance v3, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda7;

    move-object v6, p2

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda7;-><init>(Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    new-instance v3, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;

    invoke-direct/range {v3 .. v9}, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda8;-><init>(Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/jvm/functions/Function1;)V

    move-object p1, v4

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v3, Lsweet/tts/VoiceSlidersActivity$buildSlider$3;

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lsweet/tts/VoiceSlidersActivity$buildSlider$3;-><init>(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/jvm/functions/Function1;)V

    move-object v8, v7

    move-object v7, v6

    check-cast v3, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    if-lez p3, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v2

    .line 186
    :goto_0
    invoke-virtual {v7, p2}, Landroid/widget/Button;->setEnabled(Z)V

    if-ge p3, v10, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 187
    :goto_1
    invoke-virtual {v8, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    check-cast v7, Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    move-object v4, p1

    check-cast v4, Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    check-cast v8, Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method private static final buildSlider$applyValue(Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/jvm/functions/Function1;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "Landroid/widget/Button;",
            "Landroid/widget/Button;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 164
    invoke-static {p6, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p6

    .line 165
    invoke-virtual {p0, p6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "%"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    if-lez p6, :cond_0

    move p1, p0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 167
    :goto_0
    invoke-virtual {p3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-ge p6, v1, :cond_1

    move v0, p0

    .line 168
    :cond_1
    invoke-virtual {p4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static final buildSlider$lambda$20(Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 7

    .line 172
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p6

    add-int/lit8 v6, p6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lsweet/tts/VoiceSlidersActivity;->buildSlider$applyValue(Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method

.method static final buildSlider$lambda$21(Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 7

    .line 173
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p6

    add-int/lit8 v6, p6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lsweet/tts/VoiceSlidersActivity;->buildSlider$applyValue(Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method

.method static final onCreate$lambda$12$lambda$11(Ljava/lang/String;Lsweet/tts/VoiceSlidersActivity;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 92
    sget-object p2, Lsweet/tts/PlaySample;->INSTANCE:Lsweet/tts/PlaySample;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p2, p1, p0}, Lsweet/tts/PlaySample;->play(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static final onCreate$lambda$4(Ljava/lang/String;I)Lkotlin/Unit;
    .locals 1

    .line 48
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0, p0, p1}, Lsweet/tts/Prefs;->setVolumeFor(Ljava/lang/String;I)V

    .line 49
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreate$lambda$5(Ljava/lang/String;I)Lkotlin/Unit;
    .locals 1

    .line 64
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0, p0, p1}, Lsweet/tts/Prefs;->setRateFor(Ljava/lang/String;I)V

    .line 65
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreate$lambda$6(Ljava/lang/String;I)Lkotlin/Unit;
    .locals 1

    .line 67
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0, p0, p1}, Lsweet/tts/Prefs;->setPitchFor(Ljava/lang/String;I)V

    .line 68
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreate$lambda$7(Ljava/lang/String;I)Lkotlin/Unit;
    .locals 1

    .line 74
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p0, p1}, Lsweet/tts/Prefs;->setRateFor(Ljava/lang/String;I)V

    .line 75
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreate$lambda$8(Ljava/lang/String;I)Lkotlin/Unit;
    .locals 1

    .line 77
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p0, p1}, Lsweet/tts/Prefs;->setPitchFor(Ljava/lang/String;I)V

    .line 78
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 26
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lsweet/tts/VoiceSlidersActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "voice_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "default"

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Voice Preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lsweet/tts/VoiceSlidersActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v1, Landroid/widget/LinearLayout;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 34
    invoke-static {v3, v0}, Lsweet/tts/UiHelpersKt;->centeredHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 35
    sget-object v0, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v2, "\u0907\u0938 \u0906\u0935\u093e\u091c\u093c \u0915\u093e \u0935\u0949\u0932\u094d\u092f\u0942\u092e, \u0930\u092b\u093c\u094d\u0924\u093e\u0930 \u0914\u0930 \u092a\u093f\u091a\u0964 Play Sample \u0938\u0947 \u0938\u0941\u0928\u0915\u0930 \u091c\u093e\u0901\u091a\u093f\u090f\u0964 -1% \u0914\u0930 +1% \u092c\u091f\u0928 \u0938\u0947 \u092c\u093e\u0930\u0940\u0915 \u092c\u0926\u0932\u093e\u0935 \u0915\u0940\u091c\u093f\u090f\u0964"

    const/4 v10, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v10, v4, v10}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    const/16 v5, 0x20

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    .line 36
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v5, v11, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    check-cast v6, Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 41
    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 46
    const-string v2, "Google "

    invoke-static {p1, v2, v11, v4, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {v5, p1}, Lsweet/tts/ExternalEngines;->isExternalVoice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 47
    sget-object v5, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v5, p1}, Lsweet/tts/Prefs;->volumeFor(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1}, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const-string v7, "Volume"

    invoke-direct {p0, v3, v7, v5, v6}, Lsweet/tts/VoiceSlidersActivity;->buildSlider(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    :cond_2
    invoke-static {p1, v2, v11, v4, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {v2, p1}, Lsweet/tts/ExternalEngines;->isExternalVoice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 73
    :cond_3
    sget-object v2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v2, p1}, Lsweet/tts/Prefs;->rateFor(Ljava/lang/String;)I

    move-result v2

    div-int/2addr v2, v4

    new-instance v5, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p1}, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    const-string v6, "Speech rate"

    invoke-direct {p0, v3, v6, v2, v5}, Lsweet/tts/VoiceSlidersActivity;->buildSlider(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    sget-object v2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v2, p1}, Lsweet/tts/Prefs;->pitchFor(Ljava/lang/String;)I

    move-result v2

    div-int/2addr v2, v4

    new-instance v4, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p1}, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    const-string v5, "Voice pitch"

    invoke-direct {p0, v3, v5, v2, v4}, Lsweet/tts/VoiceSlidersActivity;->buildSlider(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v2, p0

    goto :goto_1

    .line 63
    :cond_4
    :goto_0
    sget-object v2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v2, p1}, Lsweet/tts/Prefs;->rateFor(Ljava/lang/String;)I

    move-result v5

    new-instance v8, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, p1}, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const-string v4, "Speech rate"

    const/16 v6, 0x14

    const/16 v7, 0x230

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lsweet/tts/VoiceSlidersActivity;->buildScaledSlider(Landroid/content/Context;Ljava/lang/String;IIILkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0, p1}, Lsweet/tts/Prefs;->pitchFor(Ljava/lang/String;)I

    move-result v5

    new-instance v8, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda2;

    invoke-direct {v8, p1}, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    const-string v4, "Voice pitch"

    const/16 v7, 0x1a4

    invoke-direct/range {v2 .. v8}, Lsweet/tts/VoiceSlidersActivity;->buildScaledSlider(Landroid/content/Context;Ljava/lang/String;IIILkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    :goto_1
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p0}, Lsweet/tts/VoiceCatalog;->getLANGUAGES()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 209
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 86
    sget-object v6, Lsweet/tts/PlaySample;->INSTANCE:Lsweet/tts/PlaySample;

    invoke-virtual {v6, v3, v5}, Lsweet/tts/PlaySample;->resolveVoiceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_6
    move-object v4, v10

    :goto_2
    check-cast v4, Lkotlin/Pair;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Ljava/lang/String;

    .line 87
    :cond_7
    new-instance p0, Landroid/widget/Button;

    invoke-direct {p0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 88
    const-string p1, "Play Sample"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x18

    .line 89
    invoke-virtual {p0, v11, p1, v11, v11}, Landroid/widget/Button;->setPadding(IIII)V

    if-eqz v10, :cond_8

    goto :goto_3

    :cond_8
    move v9, v11

    .line 90
    :goto_3
    invoke-virtual {p0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    if-nez v10, :cond_9

    .line 91
    const-string p1, "Play Sample, unavailable: this voice isn\'t currently assigned to a language"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    :cond_9
    new-instance p1, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, v10, v2}, Lsweet/tts/VoiceSlidersActivity$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Lsweet/tts/VoiceSlidersActivity;)V

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance p0, Landroid/widget/ScrollView;

    invoke-direct {p0, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 96
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 97
    check-cast p0, Landroid/view/View;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Lsweet/tts/VoiceSlidersActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
