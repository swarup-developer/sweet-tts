.class public final Lsweet/tts/AddAppActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AddAppActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/AddAppActivity$AddAppFragment;,
        Lsweet/tts/AddAppActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddAppActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddAppActivity.kt\nsweet/tts/AddAppActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1#2:84\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00082\u00020\u0001:\u0002\u0008\tB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lsweet/tts/AddAppActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "AddAppFragment",
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

.field public static final Companion:Lsweet/tts/AddAppActivity$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/AddAppActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsweet/tts/AddAppActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsweet/tts/AddAppActivity;->Companion:Lsweet/tts/AddAppActivity$Companion;

    .line 35
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lsweet/tts/AddAppActivity;->CONTAINER_ID:I

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
    .locals 5

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const-string p1, "Add Application"

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lsweet/tts/AddAppActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 21
    invoke-static {v1, p1}, Lsweet/tts/UiHelpersKt;->centeredHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 22
    sget-object p1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "\u091c\u093f\u0938 \u0910\u092a \u0915\u0947 \u0932\u093f\u090f \u0905\u0932\u0917 \u0906\u0935\u093e\u091c\u093c \u091a\u093e\u0939\u093f\u090f, \u0909\u0938\u0947 \u091a\u0941\u0928\u093f\u090f\u0964"

    invoke-static {p1, v4, v2, v3, v2}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41900000    # 18.0f

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    const/16 v3, 0x10

    const/16 v4, 0x20

    invoke-virtual {v2, v4, p1, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v1, Lsweet/tts/AddAppActivity;->CONTAINER_ID:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 26
    check-cast p1, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lsweet/tts/AddAppActivity;->setContentView(Landroid/view/View;)V

    .line 29
    invoke-virtual {p0}, Lsweet/tts/AddAppActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 30
    new-instance p1, Lsweet/tts/AddAppActivity$AddAppFragment;

    invoke-direct {p1}, Lsweet/tts/AddAppActivity$AddAppFragment;-><init>()V

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
