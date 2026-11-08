.class public final Lsweet/tts/PerApplicationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PerApplicationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/PerApplicationActivity$Companion;,
        Lsweet/tts/PerApplicationActivity$PerApplicationFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPerApplicationActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PerApplicationActivity.kt\nsweet/tts/PerApplicationActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n1#2:111\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \t2\u00020\u0001:\u0002\t\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0008\u0010\u0008\u001a\u00020\u0005H\u0014\u00a8\u0006\u000b"
    }
    d2 = {
        "Lsweet/tts/PerApplicationActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "Companion",
        "PerApplicationFragment",
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

.field public static final Companion:Lsweet/tts/PerApplicationActivity$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/PerApplicationActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsweet/tts/PerApplicationActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsweet/tts/PerApplicationActivity;->Companion:Lsweet/tts/PerApplicationActivity$Companion;

    .line 38
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lsweet/tts/PerApplicationActivity;->CONTAINER_ID:I

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
    .locals 3

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const-string p1, "Per Application"

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lsweet/tts/PerApplicationActivity;->setTitle(Ljava/lang/CharSequence;)V

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
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v1, Lsweet/tts/PerApplicationActivity;->CONTAINER_ID:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 23
    check-cast p1, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lsweet/tts/PerApplicationActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 30
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 32
    invoke-virtual {p0}, Lsweet/tts/PerApplicationActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 33
    sget v0, Lsweet/tts/PerApplicationActivity;->CONTAINER_ID:I

    new-instance v1, Lsweet/tts/PerApplicationActivity$PerApplicationFragment;

    invoke-direct {v1}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
