.class public final Lsweet/tts/ExternalEngines$Engine;
.super Ljava/lang/Object;
.source "ExternalEngines.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/ExternalEngines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Engine"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lsweet/tts/ExternalEngines$Engine;",
        "",
        "key",
        "",
        "label",
        "pkg",
        "tier",
        "",
        "entries",
        "",
        "Lsweet/tts/ExternalEngines$Entry;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V",
        "getKey",
        "()Ljava/lang/String;",
        "getLabel",
        "getPkg",
        "getTier",
        "()I",
        "getEntries",
        "()Ljava/util/List;",
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
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsweet/tts/ExternalEngines$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final tier:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lsweet/tts/ExternalEngines$Entry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entries"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/ExternalEngines$Engine;->key:Ljava/lang/String;

    iput-object p2, p0, Lsweet/tts/ExternalEngines$Engine;->label:Ljava/lang/String;

    iput-object p3, p0, Lsweet/tts/ExternalEngines$Engine;->pkg:Ljava/lang/String;

    iput p4, p0, Lsweet/tts/ExternalEngines$Engine;->tier:I

    iput-object p5, p0, Lsweet/tts/ExternalEngines$Engine;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsweet/tts/ExternalEngines$Entry;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lsweet/tts/ExternalEngines$Engine;->entries:Ljava/util/List;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lsweet/tts/ExternalEngines$Engine;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lsweet/tts/ExternalEngines$Engine;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lsweet/tts/ExternalEngines$Engine;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method public final getTier()I
    .locals 0

    .line 21
    iget p0, p0, Lsweet/tts/ExternalEngines$Engine;->tier:I

    return p0
.end method
