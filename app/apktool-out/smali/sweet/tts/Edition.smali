.class public final Lsweet/tts/Edition;
.super Ljava/lang/Object;
.source "Edition.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lsweet/tts/Edition;",
        "",
        "<init>",
        "()V",
        "PLUS",
        "",
        "getPLUS",
        "()Z",
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
.field public static final INSTANCE:Lsweet/tts/Edition;

.field private static final PLUS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsweet/tts/Edition;

    invoke-direct {v0}, Lsweet/tts/Edition;-><init>()V

    sput-object v0, Lsweet/tts/Edition;->INSTANCE:Lsweet/tts/Edition;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPLUS()Z
    .locals 0

    .line 6
    sget-boolean p0, Lsweet/tts/Edition;->PLUS:Z

    return p0
.end method
