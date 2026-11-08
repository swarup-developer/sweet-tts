.class public final Lcom/nuance/android/vocalizer/VocalizerAudioSettings;
.super Ljava/lang/Object;
.source "VocalizerAudioSettings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/android/vocalizer/VocalizerAudioSettings$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0007J\u0006\u0010\u000b\u001a\u00020\u0003R\u0012\u0010\u0008\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/nuance/android/vocalizer/VocalizerAudioSettings;",
        "",
        "rate",
        "",
        "channels",
        "<init>",
        "(II)V",
        "()V",
        "mRate",
        "mChannels",
        "mAudioBufferSize",
        "convertToAudioStreamChannel",
        "Companion",
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
.field public static final Companion:Lcom/nuance/android/vocalizer/VocalizerAudioSettings$Companion;

.field public static final MONO:I = 0x1

.field public static final STEREO:I = 0x2


# instance fields
.field public mAudioBufferSize:I

.field public mChannels:I

.field public mRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nuance/android/vocalizer/VocalizerAudioSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/android/vocalizer/VocalizerAudioSettings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;->Companion:Lcom/nuance/android/vocalizer/VocalizerAudioSettings$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;->mRate:I

    .line 7
    iput p2, p0, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;->mChannels:I

    return-void
.end method


# virtual methods
.method public final convertToAudioStreamChannel()I
    .locals 1

    .line 16
    iget p0, p0, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;->mChannels:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 p0, 0xc

    return p0
.end method
