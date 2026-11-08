.class public final Lsweet/tts/WhatsNew$show$3;
.super Ljava/lang/Object;
.source "WhatsNew.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/WhatsNew;->show(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "sweet/tts/WhatsNew$show$3",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "onItemSelected",
        "",
        "parent",
        "Landroid/widget/AdapterView;",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "id",
        "",
        "onNothingSelected",
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
.field final synthetic $changed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $current:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dialog:Landroid/app/AlertDialog;

.field final synthetic $hideBox:Landroid/widget/CheckBox;

.field final synthetic $label:Landroid/widget/TextView;

.field final synthetic $pointViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/CheckBox;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Landroid/app/AlertDialog;",
            "Landroid/widget/TextView;",
            "Landroid/widget/CheckBox;",
            "Ljava/util/List<",
            "+",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsweet/tts/WhatsNew$show$3;->$current:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lsweet/tts/WhatsNew$show$3;->$changed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lsweet/tts/WhatsNew$show$3;->$dialog:Landroid/app/AlertDialog;

    iput-object p4, p0, Lsweet/tts/WhatsNew$show$3;->$label:Landroid/widget/TextView;

    iput-object p5, p0, Lsweet/tts/WhatsNew$show$3;->$hideBox:Landroid/widget/CheckBox;

    iput-object p6, p0, Lsweet/tts/WhatsNew$show$3;->$pointViews:Ljava/util/List;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 251
    sget-object p1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    invoke-virtual {p1}, Lsweet/tts/Desc;->getLANGS()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object p2, p0, Lsweet/tts/WhatsNew$show$3;->$current:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object p2, p0, Lsweet/tts/WhatsNew$show$3;->$current:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 254
    iget-object p2, p0, Lsweet/tts/WhatsNew$show$3;->$changed:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 255
    sget-object p2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p2, p1}, Lsweet/tts/Prefs;->setDescLanguage(Ljava/lang/String;)V

    .line 256
    iget-object p2, p0, Lsweet/tts/WhatsNew$show$3;->$dialog:Landroid/app/AlertDialog;

    iget-object p3, p0, Lsweet/tts/WhatsNew$show$3;->$label:Landroid/widget/TextView;

    iget-object p4, p0, Lsweet/tts/WhatsNew$show$3;->$hideBox:Landroid/widget/CheckBox;

    iget-object p0, p0, Lsweet/tts/WhatsNew$show$3;->$pointViews:Ljava/util/List;

    invoke-static {p2, p3, p4, p0, p1}, Lsweet/tts/WhatsNew;->access$show$render(Landroid/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/CheckBox;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
