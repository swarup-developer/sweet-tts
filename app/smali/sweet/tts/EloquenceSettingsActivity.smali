.class public final Lsweet/tts/EloquenceSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EloquenceSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEloquenceSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EloquenceSettingsActivity.kt\nsweet/tts/EloquenceSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,137:1\n1#2:138\n360#3,7:139\n295#3,2:146\n1563#3:148\n1634#3,3:149\n37#4:152\n36#4,3:153\n*S KotlinDebug\n*F\n+ 1 EloquenceSettingsActivity.kt\nsweet/tts/EloquenceSettingsActivity\n*L\n49#1:139,7\n68#1:146,2\n56#1:148\n56#1:149,3\n56#1:152\n56#1:153,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0008\u0010\n\u001a\u00020\u0007H\u0002J\u0018\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lsweet/tts/EloquenceSettingsActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "content",
        "Landroid/widget/LinearLayout;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "build",
        "sliderRow",
        "preset",
        "",
        "s",
        "Lsweet/tts/EloquenceVoice$Slider;",
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


# instance fields
.field private content:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$sliderRow$show(Landroid/widget/TextView;Lsweet/tts/EloquenceVoice$Slider;Landroid/widget/Button;Landroid/widget/Button;II)V
    .locals 0

    .line 18
    invoke-static/range {p0 .. p5}, Lsweet/tts/EloquenceSettingsActivity;->sliderRow$show(Landroid/widget/TextView;Lsweet/tts/EloquenceVoice$Slider;Landroid/widget/Button;Landroid/widget/Button;II)V

    return-void
.end method

.method private final build()V
    .locals 14

    .line 46
    iget-object v0, p0, Lsweet/tts/EloquenceSettingsActivity;->content:Landroid/widget/LinearLayout;

    const-string v1, "content"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 47
    sget-object v0, Lsweet/tts/EloquenceVoice;->INSTANCE:Lsweet/tts/EloquenceVoice;

    invoke-virtual {v0}, Lsweet/tts/EloquenceVoice;->preset()I

    move-result v0

    .line 48
    sget-object v3, Lsweet/tts/EloquenceVoice;->INSTANCE:Lsweet/tts/EloquenceVoice;

    invoke-virtual {v3}, Lsweet/tts/EloquenceVoice;->getVOICES()Ljava/util/List;

    move-result-object v3

    .line 140
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 141
    check-cast v7, Lkotlin/Pair;

    .line 49
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-ne v7, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    :goto_1
    invoke-static {v6, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    .line 50
    iget-object v6, p0, Lsweet/tts/EloquenceSettingsActivity;->content:Landroid/widget/LinearLayout;

    if-nez v6, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_3
    new-instance v7, Landroid/widget/Button;

    move-object v8, p0

    check-cast v8, Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v7, v5}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 v9, 0x41a00000    # 20.0f

    .line 52
    invoke-virtual {v7, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 53
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/Pair;

    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v4, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Voice: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v9, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0, v3, v4}, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lsweet/tts/EloquenceSettingsActivity;Ljava/util/List;I)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    sget-object v3, Lsweet/tts/EloquenceVoice;->INSTANCE:Lsweet/tts/EloquenceVoice;

    invoke-virtual {v3}, Lsweet/tts/EloquenceVoice;->getSLIDERS()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsweet/tts/EloquenceVoice$Slider;

    iget-object v6, p0, Lsweet/tts/EloquenceSettingsActivity;->content:Landroid/widget/LinearLayout;

    if-nez v6, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_4
    invoke-direct {p0, v0, v4}, Lsweet/tts/EloquenceSettingsActivity;->sliderRow(ILsweet/tts/EloquenceVoice$Slider;)Landroid/widget/LinearLayout;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 65
    :cond_5
    iget-object v3, p0, Lsweet/tts/EloquenceSettingsActivity;->content:Landroid/widget/LinearLayout;

    if-nez v3, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_6
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 67
    const-string v6, "Play Sample"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x3

    .line 68
    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "en"

    aput-object v7, v6, v5

    const-string v7, "number"

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x2

    const-string v10, "emoji"

    aput-object v10, v6, v7

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 146
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    .line 68
    sget-object v11, Lsweet/tts/PlaySample;->INSTANCE:Lsweet/tts/PlaySample;

    invoke-virtual {v11, v8, v10}, Lsweet/tts/PlaySample;->resolveVoiceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ETI Eloquence"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_3

    :cond_8
    move-object v7, v2

    :goto_3
    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_9
    move v9, v5

    .line 69
    :goto_4
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 70
    new-instance v6, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v6, v7, p0}, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Lsweet/tts/EloquenceSettingsActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    iget-object v3, p0, Lsweet/tts/EloquenceSettingsActivity;->content:Landroid/widget/LinearLayout;

    if-nez v3, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move-object v2, v3

    :goto_5
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 74
    const-string v3, "Reset to default"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v3, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0, p0}, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda6;-><init>(ILsweet/tts/EloquenceSettingsActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static final build$lambda$13$lambda$12(Ljava/lang/String;Lsweet/tts/EloquenceSettingsActivity;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 70
    sget-object p2, Lsweet/tts/PlaySample;->INSTANCE:Lsweet/tts/PlaySample;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p2, p1, p0}, Lsweet/tts/PlaySample;->play(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static final build$lambda$15$lambda$14(ILsweet/tts/EloquenceSettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 76
    sget-object p2, Lsweet/tts/EloquenceVoice;->INSTANCE:Lsweet/tts/EloquenceVoice;

    invoke-virtual {p2, p0}, Lsweet/tts/EloquenceVoice;->reset(I)V

    .line 77
    invoke-direct {p1}, Lsweet/tts/EloquenceSettingsActivity;->build()V

    return-void
.end method

.method static final build$lambda$9$lambda$8(Lsweet/tts/EloquenceSettingsActivity;Ljava/util/List;ILandroid/view/View;)V
    .locals 3

    .line 55
    new-instance p3, Landroid/app/AlertDialog$Builder;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 149
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 150
    check-cast v2, Lkotlin/Pair;

    .line 56
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 148
    check-cast v1, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 155
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 56
    new-instance v1, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p0}, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;Lsweet/tts/EloquenceSettingsActivity;)V

    invoke-virtual {p3, v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static final build$lambda$9$lambda$8$lambda$7(Ljava/util/List;Lsweet/tts/EloquenceSettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 57
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lsweet/tts/Prefs;->setEloquencePreset(I)V

    .line 58
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 59
    invoke-direct {p1}, Lsweet/tts/EloquenceSettingsActivity;->build()V

    return-void
.end method

.method static final onCreate$lambda$3(Lsweet/tts/EloquenceSettingsActivity;)V
    .locals 1

    .line 39
    sget-object v0, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v0}, Lsweet/tts/EloquenceHub;->engine()Lorg/eloqium/tts/engine/EloqiumEngine;

    .line 40
    new-instance v0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lsweet/tts/EloquenceSettingsActivity;)V

    invoke-virtual {p0, v0}, Lsweet/tts/EloquenceSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static final onCreate$lambda$3$lambda$2(Lsweet/tts/EloquenceSettingsActivity;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lsweet/tts/EloquenceSettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsweet/tts/EloquenceSettingsActivity;->build()V

    :cond_0
    return-void
.end method

.method private final sliderRow(ILsweet/tts/EloquenceVoice$Slider;)Landroid/widget/LinearLayout;
    .locals 14

    .line 84
    sget-object v0, Lsweet/tts/EloquenceVoice;->INSTANCE:Lsweet/tts/EloquenceVoice;

    invoke-virtual/range {p2 .. p2}, Lsweet/tts/EloquenceVoice$Slider;->getParam()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lsweet/tts/EloquenceVoice;->step(II)I

    move-result v0

    .line 85
    new-instance v1, Landroid/widget/LinearLayout;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 86
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x18

    const/4 v4, 0x0

    .line 87
    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 89
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Lsweet/tts/EloquenceVoice$Slider;->getTitle()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41900000    # 18.0f

    .line 91
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x8

    .line 92
    invoke-virtual {v7, v4, v4, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    move-object v3, v7

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 97
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 99
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v3, "-1"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Lsweet/tts/EloquenceVoice$Slider;->getTitle()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Decrease "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " by 1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v3, Landroid/widget/SeekBar;

    invoke-direct {v3, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x14

    .line 101
    invoke-virtual {v3, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 102
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Lsweet/tts/EloquenceVoice$Slider;->getTitle()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " slider"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v4, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v11}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v4, v9

    .line 106
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "+1"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Lsweet/tts/EloquenceVoice$Slider;->getTitle()Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Increase "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v2, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;

    move v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v9}, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda2;-><init>(Landroid/widget/SeekBar;IILsweet/tts/EloquenceVoice$Slider;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    new-instance v2, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct/range {v2 .. v9}, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda3;-><init>(Landroid/widget/SeekBar;IILsweet/tts/EloquenceVoice$Slider;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V

    move-object v5, v9

    move-object v9, v3

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v2, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;

    move-object v3, v7

    move-object v7, v5

    move-object v5, v3

    move v3, p1

    move-object v6, v8

    move v8, v4

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v8}, Lsweet/tts/EloquenceSettingsActivity$sliderRow$3;-><init>(ILsweet/tts/EloquenceVoice$Slider;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;I)V

    move-object v4, v7

    move-object v7, v5

    move-object v5, v4

    move v4, v8

    move-object v8, v6

    check-cast v2, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    move-object/from16 v3, p2

    move v6, v4

    move-object v2, v7

    move-object v4, v8

    move v7, v0

    .line 129
    invoke-static/range {v2 .. v7}, Lsweet/tts/EloquenceSettingsActivity;->sliderRow$show(Landroid/widget/TextView;Lsweet/tts/EloquenceVoice$Slider;Landroid/widget/Button;Landroid/widget/Button;II)V

    .line 130
    check-cast v8, Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    move-object v3, v9

    check-cast v3, Landroid/view/View;

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    move-object v9, v5

    check-cast v9, Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    check-cast v10, Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method static final sliderRow$lambda$22(Landroid/widget/SeekBar;IILsweet/tts/EloquenceVoice$Slider;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 8

    .line 118
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p7

    add-int/lit8 v7, p7, -0x1

    move-object v1, p0

    move v0, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lsweet/tts/EloquenceSettingsActivity;->sliderRow$set(ILandroid/widget/SeekBar;ILsweet/tts/EloquenceVoice$Slider;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;I)V

    return-void
.end method

.method static final sliderRow$lambda$23(Landroid/widget/SeekBar;IILsweet/tts/EloquenceVoice$Slider;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 8

    .line 119
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p7

    add-int/lit8 v7, p7, 0x1

    move-object v1, p0

    move v0, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lsweet/tts/EloquenceSettingsActivity;->sliderRow$set(ILandroid/widget/SeekBar;ILsweet/tts/EloquenceVoice$Slider;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;I)V

    return-void
.end method

.method private static final sliderRow$set(ILandroid/widget/SeekBar;ILsweet/tts/EloquenceVoice$Slider;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;I)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-static {p7, v0, p0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p7

    .line 114
    invoke-virtual {p1, p7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 115
    sget-object p1, Lsweet/tts/EloquenceVoice;->INSTANCE:Lsweet/tts/EloquenceVoice;

    invoke-virtual {p3}, Lsweet/tts/EloquenceVoice$Slider;->getParam()I

    move-result v0

    invoke-virtual {p1, p2, v0, p7}, Lsweet/tts/EloquenceVoice;->setStep(III)V

    move-object p1, p4

    move p4, p0

    move-object p0, p1

    move-object p1, p3

    move-object p2, p5

    move-object p3, p6

    move p5, p7

    .line 116
    invoke-static/range {p0 .. p5}, Lsweet/tts/EloquenceSettingsActivity;->sliderRow$show(Landroid/widget/TextView;Lsweet/tts/EloquenceVoice$Slider;Landroid/widget/Button;Landroid/widget/Button;II)V

    return-void
.end method

.method private static final sliderRow$show(Landroid/widget/TextView;Lsweet/tts/EloquenceVoice$Slider;Landroid/widget/Button;Landroid/widget/Button;II)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Lsweet/tts/EloquenceVoice$Slider;->getTitle()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    if-lez p5, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 109
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    if-ge p5, p4, :cond_1

    goto :goto_1

    :cond_1
    move p0, p1

    .line 110
    :goto_1
    invoke-virtual {p3, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 22
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const-string p1, "Eloquence voice settings"

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lsweet/tts/EloquenceSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 26
    invoke-static {v1, p1}, Lsweet/tts/UiHelpersKt;->centeredHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 27
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x20

    const/16 v4, 0x10

    .line 29
    invoke-virtual {p1, v3, v4, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 27
    iput-object p1, p0, Lsweet/tts/EloquenceSettingsActivity;->content:Landroid/widget/LinearLayout;

    .line 31
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 32
    iget-object v1, p0, Lsweet/tts/EloquenceSettingsActivity;->content:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    const-string v1, "content"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 33
    check-cast p1, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lsweet/tts/EloquenceSettingsActivity;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-direct {p0}, Lsweet/tts/EloquenceSettingsActivity;->build()V

    .line 37
    sget-object p1, Lsweet/tts/EloquenceVoice;->INSTANCE:Lsweet/tts/EloquenceVoice;

    invoke-virtual {p1}, Lsweet/tts/EloquenceVoice;->hasBuiltIn()Z

    move-result p1

    if-nez p1, :cond_1

    .line 38
    new-instance p1, Ljava/lang/Thread;

    .line 41
    new-instance v0, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lsweet/tts/EloquenceSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lsweet/tts/EloquenceSettingsActivity;)V

    .line 38
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
