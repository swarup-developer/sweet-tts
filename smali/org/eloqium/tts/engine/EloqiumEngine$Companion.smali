.class public final Lorg/eloqium/tts/engine/EloqiumEngine$Companion;
.super Ljava/lang/Object;
.source "EloqiumEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eloqium/tts/engine/EloqiumEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEloqiumEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EloqiumEngine.kt\norg/eloqium/tts/engine/EloqiumEngine$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n1#2:166\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/eloqium/tts/engine/EloqiumEngine$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "open",
        "Lorg/eloqium/tts/engine/EloqiumEngine;",
        "language",
        "",
        "initialSampleRateHz",
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
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/eloqium/tts/engine/EloqiumEngine$Companion;-><init>()V

    return-void
.end method

.method public static synthetic open$default(Lorg/eloqium/tts/engine/EloqiumEngine$Companion;IIILjava/lang/Object;)Lorg/eloqium/tts/engine/EloqiumEngine;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x2b11

    .line 23
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eloqium/tts/engine/EloqiumEngine$Companion;->open(II)Lorg/eloqium/tts/engine/EloqiumEngine;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final open(II)Lorg/eloqium/tts/engine/EloqiumEngine;
    .locals 6

    .line 24
    sget-object p0, Lorg/eloqium/tts/engine/NativeEngine;->INSTANCE:Lorg/eloqium/tts/engine/NativeEngine;

    invoke-virtual {p0}, Lorg/eloqium/tts/engine/NativeEngine;->getLoaded()Z

    move-result p0

    const-string v0, "EloqiumEngine"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 25
    sget-object p0, Lorg/eloqium/tts/engine/NativeEngine;->INSTANCE:Lorg/eloqium/tts/engine/NativeEngine;

    invoke-virtual {p0}, Lorg/eloqium/tts/engine/NativeEngine;->getLoadError()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "Native library not loaded"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 28
    :cond_0
    invoke-static {p1}, Lorg/eloqium/tts/engine/NativeEngine;->create(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_1

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Failed to create native engine for language 0x%08x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 33
    :cond_1
    new-instance p0, Lorg/eloqium/tts/engine/EloqiumEngine;

    invoke-direct {p0, v2, v3, p1, v1}, Lorg/eloqium/tts/engine/EloqiumEngine;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, p2}, Lorg/eloqium/tts/engine/EloqiumEngine;->access$configure(Lorg/eloqium/tts/engine/EloqiumEngine;I)V

    return-object p0
.end method
