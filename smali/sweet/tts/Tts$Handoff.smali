.class final Lsweet/tts/Tts$Handoff;
.super Ljava/lang/Object;
.source "Tts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/Tts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Handoff"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lsweet/tts/Tts$Handoff;",
        "",
        "<init>",
        "()V",
        "prevGoogle",
        "",
        "getPrevGoogle",
        "()Ljava/lang/Boolean;",
        "setPrevGoogle",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
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
.field private prevGoogle:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPrevGoogle()Ljava/lang/Boolean;
    .locals 0

    .line 374
    iget-object p0, p0, Lsweet/tts/Tts$Handoff;->prevGoogle:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setPrevGoogle(Ljava/lang/Boolean;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lsweet/tts/Tts$Handoff;->prevGoogle:Ljava/lang/Boolean;

    return-void
.end method
