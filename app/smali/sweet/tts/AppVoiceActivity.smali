.class public final Lsweet/tts/AppVoiceActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AppVoiceActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/AppVoiceActivity$AppVoiceFragment;,
        Lsweet/tts/AppVoiceActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppVoiceActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppVoiceActivity.kt\nsweet/tts/AppVoiceActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00082\u00020\u0001:\u0002\u0008\tB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lsweet/tts/AppVoiceActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "AppVoiceFragment",
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
.field private static final CONTAINER_ID:I

.field public static final Companion:Lsweet/tts/AppVoiceActivity$Companion;

.field public static final EXTRA_PACKAGE:Ljava/lang/String; = "package_name"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/AppVoiceActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsweet/tts/AppVoiceActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsweet/tts/AppVoiceActivity;->Companion:Lsweet/tts/AppVoiceActivity$Companion;

    .line 42
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lsweet/tts/AppVoiceActivity;->CONTAINER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lsweet/tts/AppVoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p0

    check-cast p1, Lsweet/tts/AppVoiceActivity;

    invoke-virtual {p0}, Lsweet/tts/AppVoiceActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lsweet/tts/AppVoiceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lsweet/tts/AppVoiceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, p1

    .line 24
    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lsweet/tts/AppVoiceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    new-instance v2, Landroid/widget/LinearLayout;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 27
    invoke-static {v3, v1}, Lsweet/tts/UiHelpersKt;->centeredHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 28
    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v4, "\u0907\u0938 \u0910\u092a \u092e\u0947\u0902 \u0939\u0930 \u092d\u093e\u0937\u093e \u0915\u0947 \u0932\u093f\u090f \u0905\u0932\u0917 \u0906\u0935\u093e\u091c\u093c \u091a\u0941\u0928\u093f\u090f\u0964 Same as global default \u0915\u093e \u092e\u0924\u0932\u092c \u0939\u0948 \u0915\u093f \u092c\u093e\u0915\u0940 \u091c\u0917\u0939 \u0935\u093e\u0932\u0940 \u0906\u0935\u093e\u091c\u093c \u0939\u0940 \u0932\u0917\u0947\u0917\u0940\u0964"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v4, v6, v5, v6}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 29
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x10

    const/16 v5, 0x20

    invoke-virtual {v4, v5, v0, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 31
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v1, Lsweet/tts/AppVoiceActivity;->CONTAINER_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 32
    check-cast v0, Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lsweet/tts/AppVoiceActivity;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lsweet/tts/AppVoiceActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 36
    sget-object v0, Lsweet/tts/AppVoiceActivity$AppVoiceFragment;->Companion:Lsweet/tts/AppVoiceActivity$AppVoiceFragment$Companion;

    invoke-virtual {v0, p1}, Lsweet/tts/AppVoiceActivity$AppVoiceFragment$Companion;->newInstance(Ljava/lang/String;)Lsweet/tts/AppVoiceActivity$AppVoiceFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
