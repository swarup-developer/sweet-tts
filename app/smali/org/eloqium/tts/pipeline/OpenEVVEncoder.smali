.class public final Lorg/eloqium/tts/pipeline/OpenEVVEncoder;
.super Ljava/lang/Object;
.source "OpenEVVEncoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/eloqium/tts/pipeline/OpenEVVEncoder;",
        "",
        "<init>",
        "()V",
        "MAX_BYTE",
        "",
        "encode",
        "",
        "text",
        "",
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
.field public static final INSTANCE:Lorg/eloqium/tts/pipeline/OpenEVVEncoder;

.field private static final MAX_BYTE:I = 0xff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eloqium/tts/pipeline/OpenEVVEncoder;

    invoke-direct {v0}, Lorg/eloqium/tts/pipeline/OpenEVVEncoder;-><init>()V

    sput-object v0, Lorg/eloqium/tts/pipeline/OpenEVVEncoder;->INSTANCE:Lorg/eloqium/tts/pipeline/OpenEVVEncoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/String;)[B
    .locals 4

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-array p0, p0, [B

    .line 14
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    if-gt v3, v2, :cond_0

    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    int-to-byte v2, v2

    goto :goto_1

    :cond_0
    const/16 v2, 0x20

    .line 16
    :goto_1
    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
