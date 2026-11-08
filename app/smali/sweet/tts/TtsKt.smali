.class public final Lsweet/tts/TtsKt;
.super Ljava/lang/Object;
.source "Tts.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002\"\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "resamplePcm16Mono",
        "",
        "buffer",
        "offset",
        "",
        "length",
        "fromRate",
        "toRate",
        "lastSuppressedNote",
        "",
        "lastForwardNote",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static lastForwardNote:Ljava/lang/String; = ""

.field private static lastSuppressedNote:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final synthetic access$getLastForwardNote$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lsweet/tts/TtsKt;->lastForwardNote:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLastSuppressedNote$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lsweet/tts/TtsKt;->lastSuppressedNote:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$resamplePcm16Mono([BIIII)[B
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lsweet/tts/TtsKt;->resamplePcm16Mono([BIIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setLastForwardNote$p(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lsweet/tts/TtsKt;->lastForwardNote:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLastSuppressedNote$p(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lsweet/tts/TtsKt;->lastSuppressedNote:Ljava/lang/String;

    return-void
.end method

.method private static final resamplePcm16Mono([BIIII)[B
    .locals 11

    .line 660
    div-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    .line 661
    new-array p0, v0, [B

    return-object p0

    .line 662
    :cond_0
    new-array v1, p2, [S

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 665
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-double p0, p4

    int-to-double p3, p3

    div-double/2addr p0, p3

    int-to-double p3, p2

    mul-double/2addr p3, p0

    double-to-int p3, p3

    const/4 p4, 0x1

    .line 669
    invoke-static {p3, p4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p3

    mul-int/lit8 v2, p3, 0x2

    .line 670
    new-array v2, v2, [B

    move v3, v0

    move v4, v3

    :goto_1
    if-ge v3, p3, :cond_2

    int-to-double v5, v3

    div-double/2addr v5, p0

    double-to-int v7, v5

    add-int/lit8 v8, p2, -0x1

    .line 674
    invoke-static {v7, v0, v8}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v7

    add-int/lit8 v9, v7, 0x1

    .line 675
    invoke-static {v9, v8}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v8

    int-to-double v9, v7

    sub-double/2addr v5, v9

    .line 677
    aget-short v7, v1, v7

    .line 678
    aget-short v8, v1, v8

    int-to-double v9, v7

    sub-int/2addr v8, v7

    int-to-double v7, v8

    mul-double/2addr v7, v5

    add-double/2addr v9, v7

    double-to-int v5, v9

    const/16 v6, -0x8000

    const/16 v7, 0x7fff

    .line 679
    invoke-static {v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v5

    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    .line 680
    aput-byte v6, v2, v4

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 681
    aput-byte v5, v2, v6

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method
