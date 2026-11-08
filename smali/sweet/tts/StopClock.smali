.class public final Lsweet/tts/StopClock;
.super Ljava/lang/Object;
.source "Watchdog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lsweet/tts/StopClock;",
        "",
        "<init>",
        "()V",
        "lastFailMs",
        "",
        "noteFail",
        "",
        "sinceFailMs",
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
.field public static final INSTANCE:Lsweet/tts/StopClock;

.field private static volatile lastFailMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsweet/tts/StopClock;

    invoke-direct {v0}, Lsweet/tts/StopClock;-><init>()V

    sput-object v0, Lsweet/tts/StopClock;->INSTANCE:Lsweet/tts/StopClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final noteFail()V
    .locals 2

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lsweet/tts/StopClock;->lastFailMs:J

    return-void
.end method

.method public final sinceFailMs()J
    .locals 4

    .line 31
    sget-wide v0, Lsweet/tts/StopClock;->lastFailMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lsweet/tts/StopClock;->lastFailMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
