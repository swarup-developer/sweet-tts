.class public final Lorg/eloqium/tts/engine/SpeechRateMapper;
.super Ljava/lang/Object;
.source "SpeechRateMapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0018\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ@\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0015H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/eloqium/tts/engine/SpeechRateMapper;",
        "",
        "<init>",
        "()V",
        "NORMAL_SPEED",
        "",
        "MIN_SPEED",
        "MAX_SPEED_NORMAL",
        "MAX_SPEED_UNLOCKED",
        "mapRelativeRate",
        "relative",
        "unlocked",
        "",
        "mapLegacyToRelative",
        "legacyValue",
        "mapSliderRate",
        "sliderValue",
        "mapAndroidRate",
        "requestRate",
        "interpolate",
        "minIn",
        "",
        "maxIn",
        "inVal",
        "midIn",
        "minOut",
        "maxOut",
        "midOut",
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
.field public static final INSTANCE:Lorg/eloqium/tts/engine/SpeechRateMapper;

.field public static final MAX_SPEED_NORMAL:I = 0x96

.field public static final MAX_SPEED_UNLOCKED:I = 0xfa

.field public static final MIN_SPEED:I = 0x28

.field public static final NORMAL_SPEED:I = 0x39


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eloqium/tts/engine/SpeechRateMapper;

    invoke-direct {v0}, Lorg/eloqium/tts/engine/SpeechRateMapper;-><init>()V

    sput-object v0, Lorg/eloqium/tts/engine/SpeechRateMapper;->INSTANCE:Lorg/eloqium/tts/engine/SpeechRateMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final interpolate(FFFFFFF)I
    .locals 0

    cmpg-float p0, p3, p4

    if-nez p0, :cond_0

    float-to-int p0, p7

    return p0

    .line 82
    :cond_0
    invoke-static {p3, p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    cmpl-float p3, p0, p4

    if-ltz p3, :cond_1

    sub-float/2addr p0, p4

    sub-float/2addr p2, p4

    div-float/2addr p0, p2

    sub-float p1, p6, p7

    goto :goto_0

    :cond_1
    sub-float/2addr p0, p4

    sub-float/2addr p4, p1

    div-float/2addr p0, p4

    sub-float p1, p7, p5

    :goto_0
    mul-float/2addr p1, p0

    add-float/2addr p7, p1

    .line 90
    invoke-static {p7}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 p1, 0x28

    float-to-int p2, p6

    invoke-static {p0, p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    return p0
.end method

.method public static synthetic mapAndroidRate$default(Lorg/eloqium/tts/engine/SpeechRateMapper;IZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eloqium/tts/engine/SpeechRateMapper;->mapAndroidRate(IZ)I

    move-result p0

    return p0
.end method

.method public static synthetic mapRelativeRate$default(Lorg/eloqium/tts/engine/SpeechRateMapper;IZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eloqium/tts/engine/SpeechRateMapper;->mapRelativeRate(IZ)I

    move-result p0

    return p0
.end method

.method public static synthetic mapSliderRate$default(Lorg/eloqium/tts/engine/SpeechRateMapper;IZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 41
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eloqium/tts/engine/SpeechRateMapper;->mapSliderRate(IZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final mapAndroidRate(IZ)I
    .locals 8

    if-eqz p2, :cond_0

    const/high16 p2, 0x437a0000    # 250.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x43160000    # 150.0f

    :goto_0
    move v6, p2

    int-to-float v3, p1

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v7, 0x42640000    # 57.0f

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x44160000    # 600.0f

    const/high16 v4, 0x42c80000    # 100.0f

    move-object v0, p0

    .line 61
    invoke-direct/range {v0 .. v7}, Lorg/eloqium/tts/engine/SpeechRateMapper;->interpolate(FFFFFFF)I

    move-result p0

    return p0
.end method

.method public final mapLegacyToRelative(I)I
    .locals 2

    const/4 p0, 0x0

    const/16 v0, 0x64

    .line 39
    invoke-static {p1, p0, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    add-int/lit8 p0, p0, -0x32

    int-to-double p0, p0

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    const/16 p1, -0xa

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    return p0
.end method

.method public final mapRelativeRate(IZ)I
    .locals 6

    const/16 p0, -0xa

    const/16 v0, 0xa

    .line 28
    invoke-static {p1, p0, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    const/16 p1, 0x39

    if-nez p0, :cond_0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    const/16 p2, 0xfa

    goto :goto_0

    :cond_1
    const/16 p2, 0x96

    :goto_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    if-lez p0, :cond_2

    add-int/lit8 v2, p2, -0x39

    int-to-double v2, v2

    int-to-double v4, p0

    div-double/2addr v4, v0

    mul-double/2addr v2, v4

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    int-to-double v2, p0

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4031000000000000L    # 17.0

    mul-double/2addr v0, v2

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    :goto_1
    long-to-int p0, v0

    add-int/2addr p0, p1

    const/16 p1, 0x28

    .line 35
    invoke-static {p0, p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    return p0
.end method

.method public final mapSliderRate(IZ)I
    .locals 8

    if-eqz p2, :cond_0

    const/high16 p2, 0x437a0000    # 250.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x43160000    # 150.0f

    :goto_0
    move v6, p2

    int-to-float v3, p1

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v7, 0x42640000    # 57.0f

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v4, 0x42480000    # 50.0f

    move-object v0, p0

    .line 43
    invoke-direct/range {v0 .. v7}, Lorg/eloqium/tts/engine/SpeechRateMapper;->interpolate(FFFFFFF)I

    move-result p0

    return p0
.end method
