.class public final Lsweet/tts/EloquenceVoice$Slider;
.super Ljava/lang/Object;
.source "EloquenceVoice.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/EloquenceVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Slider"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lsweet/tts/EloquenceVoice$Slider;",
        "",
        "param",
        "",
        "title",
        "",
        "<init>",
        "(ILjava/lang/String;)V",
        "getParam",
        "()I",
        "getTitle",
        "()Ljava/lang/String;",
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
.field private final param:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsweet/tts/EloquenceVoice$Slider;->param:I

    iput-object p2, p0, Lsweet/tts/EloquenceVoice$Slider;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getParam()I
    .locals 0

    .line 18
    iget p0, p0, Lsweet/tts/EloquenceVoice$Slider;->param:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lsweet/tts/EloquenceVoice$Slider;->title:Ljava/lang/String;

    return-object p0
.end method
