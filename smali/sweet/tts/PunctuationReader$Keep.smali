.class final Lsweet/tts/PunctuationReader$Keep;
.super Ljava/lang/Object;
.source "PunctuationReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/PunctuationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Keep"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lsweet/tts/PunctuationReader$Keep;",
        "",
        "en",
        "",
        "hi",
        "ur",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getEn",
        "()Ljava/lang/String;",
        "getHi",
        "getUr",
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
.field private final en:Ljava/lang/String;

.field private final hi:Ljava/lang/String;

.field private final ur:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "en"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ur"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/PunctuationReader$Keep;->en:Ljava/lang/String;

    iput-object p2, p0, Lsweet/tts/PunctuationReader$Keep;->hi:Ljava/lang/String;

    iput-object p3, p0, Lsweet/tts/PunctuationReader$Keep;->ur:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getEn()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lsweet/tts/PunctuationReader$Keep;->en:Ljava/lang/String;

    return-object p0
.end method

.method public final getHi()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lsweet/tts/PunctuationReader$Keep;->hi:Ljava/lang/String;

    return-object p0
.end method

.method public final getUr()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lsweet/tts/PunctuationReader$Keep;->ur:Ljava/lang/String;

    return-object p0
.end method
