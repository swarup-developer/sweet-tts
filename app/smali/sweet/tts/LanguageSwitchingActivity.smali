.class public final Lsweet/tts/LanguageSwitchingActivity;
.super Landroid/app/Activity;
.source "LanguageSwitchingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLanguageSwitchingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LanguageSwitchingActivity.kt\nsweet/tts/LanguageSwitchingActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,47:1\n1#2:48\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lsweet/tts/LanguageSwitchingActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static final onCreate$lambda$2(Ljava/lang/String;Lsweet/tts/LanguageSwitchingActivity;Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object p2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p2, p0, p3}, Lsweet/tts/Prefs;->setLanguageEnabled(Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    .line 37
    sget-object p2, Lsweet/tts/PlaySample;->INSTANCE:Lsweet/tts/PlaySample;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p2, p1, p0}, Lsweet/tts/PlaySample;->resolveVoiceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const-string p1, "Languages"

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lsweet/tts/LanguageSwitchingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x30

    const/16 v3, 0x18

    .line 19
    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 20
    invoke-static {v1, p1}, Lsweet/tts/UiHelpersKt;->centeredHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 21
    sget-object p1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const-string v5, "\u0938\u093f\u0930\u094d\u092b \u0935\u0939\u0940 \u092d\u093e\u0937\u093e\u090f\u0901 \u091a\u0941\u0928\u093f\u090f \u091c\u094b \u0906\u092a\u0915\u094b \u091a\u093e\u0939\u093f\u090f, \u092c\u093e\u0915\u0940 \u0916\u093e\u0932\u0940 \u0930\u0916\u093f\u090f\u0964 \u091c\u093f\u0924\u0928\u0940 \u0915\u092e \u092d\u093e\u0937\u093e\u090f\u0901, \u0909\u0924\u0928\u0940 \u0924\u0947\u091c\u093c \u0914\u0930 \u0938\u0939\u0940 \u092a\u0939\u091a\u093e\u0928\u0964"

    invoke-static {p1, v5, v2, v4, v2}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41900000    # 18.0f

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1, p1, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    :cond_0
    sget-object p1, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p1}, Lsweet/tts/VoiceCatalog;->getLANGUAGES()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 26
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 27
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41a00000    # 20.0f

    .line 28
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 29
    sget-object v2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v2, v3}, Lsweet/tts/Prefs;->isLanguageEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 30
    invoke-virtual {v4}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v5

    const/16 v6, 0x20

    invoke-virtual {v4, v2, v6, v5, v6}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 31
    new-instance v2, Lsweet/tts/LanguageSwitchingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v3, p0}, Lsweet/tts/LanguageSwitchingActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lsweet/tts/LanguageSwitchingActivity;)V

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 39
    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 42
    :cond_1
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 43
    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 44
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lsweet/tts/LanguageSwitchingActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
