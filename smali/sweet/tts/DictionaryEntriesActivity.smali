.class public final Lsweet/tts/DictionaryEntriesActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DictionaryEntriesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/DictionaryEntriesActivity$Companion;,
        Lsweet/tts/DictionaryEntriesActivity$EditListFragment;,
        Lsweet/tts/DictionaryEntriesActivity$MenuFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDictionaryEntriesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DictionaryEntriesActivity.kt\nsweet/tts/DictionaryEntriesActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,256:1\n1#2:257\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \n2\u00020\u0001:\u0003\n\u000b\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0006\u0010\u0008\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0005\u00a8\u0006\r"
    }
    d2 = {
        "Lsweet/tts/DictionaryEntriesActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "showEditList",
        "refreshEditListIfShowing",
        "Companion",
        "MenuFragment",
        "EditListFragment",
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

.field public static final Companion:Lsweet/tts/DictionaryEntriesActivity$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/DictionaryEntriesActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsweet/tts/DictionaryEntriesActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsweet/tts/DictionaryEntriesActivity;->Companion:Lsweet/tts/DictionaryEntriesActivity$Companion;

    .line 58
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lsweet/tts/DictionaryEntriesActivity;->CONTAINER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 29
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const-string v0, "Dictionary"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lsweet/tts/DictionaryEntriesActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    new-instance v1, Landroid/widget/LinearLayout;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    invoke-static {v2, v0}, Lsweet/tts/UiHelpersKt;->centeredHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 34
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v2, Lsweet/tts/DictionaryEntriesActivity;->CONTAINER_ID:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 35
    check-cast v0, Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lsweet/tts/DictionaryEntriesActivity;->setContentView(Landroid/view/View;)V

    if-nez p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 40
    new-instance p1, Lsweet/tts/DictionaryEntriesActivity$MenuFragment;

    invoke-direct {p1}, Lsweet/tts/DictionaryEntriesActivity$MenuFragment;-><init>()V

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public final refreshEditListIfShowing()V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lsweet/tts/DictionaryEntriesActivity;->CONTAINER_ID:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 54
    instance-of v0, p0, Lsweet/tts/DictionaryEntriesActivity$EditListFragment;

    if-eqz v0, :cond_0

    check-cast p0, Lsweet/tts/DictionaryEntriesActivity$EditListFragment;

    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivity$EditListFragment;->rebuild()V

    :cond_0
    return-void
.end method

.method public final showEditList()V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 47
    sget v0, Lsweet/tts/DictionaryEntriesActivity;->CONTAINER_ID:I

    new-instance v1, Lsweet/tts/DictionaryEntriesActivity$EditListFragment;

    invoke-direct {v1}, Lsweet/tts/DictionaryEntriesActivity$EditListFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
