.class public final Lcom/nuance/android/vocalizer/VocalizerVoice;
.super Ljava/lang/Object;
.source "VocalizerVoice.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/nuance/android/vocalizer/VocalizerVoice;",
        "",
        "<init>",
        "()V",
        "mVoiceName",
        "",
        "mLanguage",
        "mLanguageTLW",
        "mLanguageVersion",
        "mLangId",
        "",
        "mSampleRate",
        "mVoiceAge",
        "mVoiceType",
        "mVoiceOperatingPoint",
        "mVoiceVersion",
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
.field public mLangId:I

.field public mLanguage:Ljava/lang/String;

.field public mLanguageTLW:Ljava/lang/String;

.field public mLanguageVersion:Ljava/lang/String;

.field public mSampleRate:I

.field public mVoiceAge:Ljava/lang/String;

.field public mVoiceName:Ljava/lang/String;

.field public mVoiceOperatingPoint:Ljava/lang/String;

.field public mVoiceType:Ljava/lang/String;

.field public mVoiceVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mLanguage:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mLanguageTLW:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mLanguageVersion:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceAge:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceType:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceOperatingPoint:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceVersion:Ljava/lang/String;

    return-void
.end method
