.class public final Lcom/nuance/android/vocalizer/VocalizerEngine;
.super Ljava/lang/Object;
.source "VocalizerEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/android/vocalizer/VocalizerEngine$Companion;,
        Lcom/nuance/android/vocalizer/VocalizerEngine$EngineConfiguration;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVocalizerEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VocalizerEngine.kt\ncom/nuance/android/vocalizer/VocalizerEngine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,344:1\n1#2:345\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00de\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0017\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0012\n\u0002\u0008\u0019\u0018\u0000 \u0095\u00012\u00020\u0001:\u0004\u0094\u0001\u0095\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010L\u001a\u00020\u00112\u0006\u0010M\u001a\u00020FH\u0002J\u0012\u0010N\u001a\u0004\u0018\u00010O2\u0006\u0010P\u001a\u00020QH\u0002J\u0010\u0010R\u001a\u00020G2\u0006\u0010S\u001a\u00020\u000eH\u0002J\u0006\u0010T\u001a\u00020GJ\u000e\u0010U\u001a\u00020G2\u0006\u0010V\u001a\u00020\u001cJ$\u0010W\u001a\u00020G2\u0006\u0010X\u001a\u00020Q2\u0006\u0010Y\u001a\u00020\u000e2\u000c\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020G0[J\u0008\u0010\\\u001a\u00020GH\u0002J\u000e\u0010]\u001a\u00020\u00112\u0006\u0010^\u001a\u00020(J\u001a\u0010f\u001a\u00020\u00112\u0006\u0010g\u001a\u00020Q2\u0008\u0008\u0002\u0010^\u001a\u00020(H\u0002J\u0006\u0010h\u001a\u00020GJ\u0006\u0010i\u001a\u00020GJ\t\u0010j\u001a\u00020GH\u0086 J\t\u0010k\u001a\u00020GH\u0086 J\u0014\u0010l\u001a\u0008\u0012\u0004\u0012\u00020\u001c0>H\u0086 \u00a2\u0006\u0002\u0010mJ\t\u0010n\u001a\u00020;H\u0086 J\t\u0010o\u001a\u00020\u000eH\u0086 J\t\u0010p\u001a\u00020\u000eH\u0086 J\t\u0010q\u001a\u00020\u000eH\u0086 J\t\u0010r\u001a\u00020sH\u0086 J\t\u0010t\u001a\u00020\u000eH\u0086 J\t\u0010u\u001a\u00020\u000eH\u0086 J\t\u0010v\u001a\u00020\u000eH\u0086 J\t\u0010w\u001a\u00020\u000eH\u0086 J\u0011\u0010x\u001a\u00020\u00112\u0006\u0010y\u001a\u00020QH\u0086 J\u0011\u0010z\u001a\u00020\u00112\u0006\u0010V\u001a\u00020\u001cH\u0086 J\u0019\u0010{\u001a\u00020)2\u0006\u0010|\u001a\u00020}2\u0006\u0010P\u001a\u00020QH\u0086 J\u0011\u0010~\u001a\u00020G2\u0006\u0010\u007f\u001a\u00020)H\u0086 J\n\u0010\u0080\u0001\u001a\u00020GH\u0086 J\u0013\u0010\u0081\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u000eH\u0086 J\u0013\u0010\u0083\u0001\u001a\u00020G2\u0007\u0010\u0084\u0001\u001a\u00020\u0011H\u0086 J\u0013\u0010\u0085\u0001\u001a\u00020G2\u0007\u0010\u0086\u0001\u001a\u00020\u000eH\u0086 J\u0013\u0010\u0087\u0001\u001a\u00020G2\u0007\u0010\u0088\u0001\u001a\u00020\u000eH\u0086 J\u0013\u0010\u0089\u0001\u001a\u00020G2\u0007\u0010\u008a\u0001\u001a\u00020\u000eH\u0086 J\u0013\u0010\u008b\u0001\u001a\u00020G2\u0007\u0010\u008c\u0001\u001a\u00020\u000eH\u0086 J\u0013\u0010\u008d\u0001\u001a\u00020G2\u0007\u0010\u008a\u0001\u001a\u00020\u000eH\u0086 J\u0013\u0010\u008e\u0001\u001a\u00020G2\u0007\u0010\u008f\u0001\u001a\u00020\u000eH\u0086 J\u0013\u0010\u0090\u0001\u001a\u00020G2\u0007\u0010\u0091\u0001\u001a\u00020\u000eH\u0086 J\u0012\u0010\u0092\u0001\u001a\u00020G2\u0006\u0010X\u001a\u00020QH\u0086 J\n\u0010\u0093\u0001\u001a\u00020GH\u0086 R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020)0\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010+\u001a\u00020(8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00100\u001a\u0008\u0012\u0004\u0012\u00020201X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00103\u001a\u0008\u0012\u0004\u0012\u00020\t01X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00108\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010:\u001a\u0004\u0018\u00010;X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010=\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010>X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010?R\u0012\u0010@\u001a\u00020(8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010D\u001a\u0010\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G\u0018\u00010EX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u001e\u0010`\u001a\u00020(2\u0006\u0010_\u001a\u00020(@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008a\u0010bR\u000e\u0010c\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010d\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010e\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0096\u0001"
    }
    d2 = {
        "Lcom/nuance/android/vocalizer/VocalizerEngine;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "audioOutputVolume",
        "",
        "currentSpeechItem",
        "Lcom/nuance/android/vocalizer/VocalizerSpeechItem;",
        "mAssetManager",
        "Lcom/nuance/android/vocalizer/internal/VocalizerAssetManager;",
        "mAudioBufferPayload",
        "mAudioBytesSent",
        "",
        "mAudioBytesSentCurrentSynthesis",
        "mAudioListenerOnlySamples",
        "",
        "mAudioOutputListener",
        "Lcom/nuance/android/vocalizer/VocalizerAudioOutputListener;",
        "mAudioSettings",
        "Lcom/nuance/android/vocalizer/VocalizerAudioSettings;",
        "mAudioStream",
        "Landroid/media/AudioTrack;",
        "mAudioStreamChannel",
        "mAutoInit",
        "mContext",
        "mCurrentVoice",
        "Lcom/nuance/android/vocalizer/VocalizerVoice;",
        "mCustomAudioSettings",
        "mEngineListener",
        "Lcom/nuance/android/vocalizer/VocalizerEngineListener;",
        "mHandler",
        "Landroid/os/Handler;",
        "mInitThread",
        "Ljava/lang/Thread;",
        "mInitialized",
        "mInternalAudioBufferPayload",
        "mLoadedResources",
        "Ljava/util/Hashtable;",
        "",
        "Lcom/nuance/android/vocalizer/internal/VocalizerResourceInfo;",
        "mMaxAudioBufferSize",
        "mNativeEnginePtr",
        "mNotifyNewVoiceList",
        "mPrevConfiguration",
        "Lcom/nuance/android/vocalizer/VocalizerEngine$EngineConfiguration;",
        "mReloading",
        "mScheduledSpeechMarks",
        "Ljava/util/Vector;",
        "Lcom/nuance/android/vocalizer/VocalizerSpeechMark;",
        "mSpeechItems",
        "mSpeechMarkListener",
        "Lcom/nuance/android/vocalizer/VocalizerSpeechMarkListener;",
        "mState",
        "mStopRequested",
        "mSynthThread",
        "mSynthThreadPriority",
        "mVersion",
        "Lcom/nuance/android/vocalizer/VocalizerVersion;",
        "mVocalizerSamplesRead",
        "mVoiceList",
        "",
        "[Lcom/nuance/android/vocalizer/VocalizerVoice;",
        "mainThreadId",
        "pauseSemaphore",
        "Ljava/util/concurrent/Semaphore;",
        "streamSemaphore",
        "onSamples",
        "Lkotlin/Function1;",
        "",
        "",
        "getOnSamples",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnSamples",
        "(Lkotlin/jvm/functions/Function1;)V",
        "audioSamplesReceived",
        "samples",
        "openAssetFile",
        "Lcom/nuance/android/vocalizer/internal/VocalizerFileInfo;",
        "name",
        "",
        "closeAssetFile",
        "descriptor",
        "markInitialized",
        "markVoiceLoaded",
        "voice",
        "speakOnSynthThread",
        "text",
        "sampleRateHz",
        "onComplete",
        "Lkotlin/Function0;",
        "closeAudioStream",
        "requestAbort",
        "gen",
        "value",
        "synthGen",
        "getSynthGen",
        "()J",
        "abortLock",
        "synthRunning",
        "abortSent",
        "sendAbort",
        "who",
        "debugRawStop",
        "stop",
        "createNativeEngine",
        "destroyNativeEngine",
        "getAvailableVoiceListNative",
        "()[Lcom/nuance/android/vocalizer/VocalizerVoice;",
        "getEngineVersion",
        "getPitch",
        "getRate",
        "getReadMode",
        "getStatInfo",
        "Lcom/nuance/android/vocalizer/internal/VocalizerStatusInfo;",
        "getTextFormat",
        "getTextMode",
        "getVolume",
        "getWaitFactor",
        "initializeNative",
        "pipelineHeaders",
        "loadVoiceNative",
        "nativeLoadResource",
        "data",
        "",
        "nativeUnloadResource",
        "resource",
        "releaseNative",
        "setAudioBufferSize",
        "size",
        "setEnableMarks",
        "enable",
        "setPitch",
        "pitch",
        "setRate",
        "rate",
        "setReadMode",
        "mode",
        "setTextFormat",
        "format",
        "setTextMode",
        "setVolume",
        "volume",
        "setWaitFactor",
        "factor",
        "speakNative",
        "stopSpeechNative",
        "EngineConfiguration",
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
.field public static final Companion:Lcom/nuance/android/vocalizer/VocalizerEngine$Companion;

.field public static final DEFAULT_PITCH:I = 0x64

.field public static final DEFAULT_RATE:I = 0x64

.field public static final DEFAULT_READMODE:I = 0x1

.field public static final DEFAULT_TEXTFORMAT:I = 0x0

.field public static final DEFAULT_TEXTMODE:I = 0x1

.field public static final DEFAULT_VOLUME:I = 0x50

.field public static final DEFAULT_WAIT_FACTOR:I = 0x1

.field public static final READMODE_CHAR:I = 0x2

.field public static final READMODE_SENT:I = 0x1

.field public static final READMODE_WORD:I = 0x3

.field public static final STATE_INITIALIZED:I = 0x2

.field public static final STATE_INIT_ERROR:I = 0x6

.field public static final STATE_PAUSED:I = 0x5

.field public static final STATE_READY:I = 0x4

.field public static final STATE_SPEAKING:I = 0x3

.field public static final STATE_UNINITIALIZED:I = 0x1

.field public static final TEXTFORMAT_NORM:I = 0x0

.field public static final TEXTFORMAT_SSML:I = 0x1

.field public static final TEXTMODE_SMS:I = 0x2

.field public static final TEXTMODE_STANDARD:I = 0x1


# instance fields
.field private final abortLock:Ljava/lang/Object;

.field private abortSent:Z

.field private audioOutputVolume:F

.field private currentSpeechItem:Lcom/nuance/android/vocalizer/VocalizerSpeechItem;

.field private mAssetManager:Lcom/nuance/android/vocalizer/internal/VocalizerAssetManager;

.field private mAudioBufferPayload:F

.field private mAudioBytesSent:I

.field private mAudioBytesSentCurrentSynthesis:I

.field private mAudioListenerOnlySamples:Z

.field private mAudioOutputListener:Lcom/nuance/android/vocalizer/VocalizerAudioOutputListener;

.field private mAudioSettings:Lcom/nuance/android/vocalizer/VocalizerAudioSettings;

.field private mAudioStream:Landroid/media/AudioTrack;

.field private mAudioStreamChannel:I

.field private mAutoInit:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentVoice:Lcom/nuance/android/vocalizer/VocalizerVoice;

.field private mCustomAudioSettings:Lcom/nuance/android/vocalizer/VocalizerAudioSettings;

.field private mEngineListener:Lcom/nuance/android/vocalizer/VocalizerEngineListener;

.field private mHandler:Landroid/os/Handler;

.field private mInitThread:Ljava/lang/Thread;

.field private mInitialized:Z

.field private mInternalAudioBufferPayload:F

.field private mLoadedResources:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Long;",
            "Lcom/nuance/android/vocalizer/internal/VocalizerResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxAudioBufferSize:I

.field public mNativeEnginePtr:J

.field private mNotifyNewVoiceList:Z

.field private mPrevConfiguration:Lcom/nuance/android/vocalizer/VocalizerEngine$EngineConfiguration;

.field private mReloading:Z

.field private mScheduledSpeechMarks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/nuance/android/vocalizer/VocalizerSpeechMark;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeechItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/nuance/android/vocalizer/VocalizerSpeechItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeechMarkListener:Lcom/nuance/android/vocalizer/VocalizerSpeechMarkListener;

.field private mState:I

.field private mStopRequested:Z

.field private volatile mSynthThread:Ljava/lang/Thread;

.field private mSynthThreadPriority:I

.field private mVersion:Lcom/nuance/android/vocalizer/VocalizerVersion;

.field private mVocalizerSamplesRead:I

.field private mVoiceList:[Lcom/nuance/android/vocalizer/VocalizerVoice;

.field public mainThreadId:J

.field private onSamples:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-[S",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private pauseSemaphore:Ljava/util/concurrent/Semaphore;

.field private streamSemaphore:Ljava/util/concurrent/Semaphore;

.field private volatile synthGen:J

.field private synthRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nuance/android/vocalizer/VocalizerEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/android/vocalizer/VocalizerEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/nuance/android/vocalizer/VocalizerEngine;->Companion:Lcom/nuance/android/vocalizer/VocalizerEngine$Companion;

    .line 340
    const-string v0, "NuanceVocalizer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/nuance/android/vocalizer/internal/VocalizerAssetManager;

    sget-object v1, Lsweet/tts/ExternalVoices;->INSTANCE:Lsweet/tts/ExternalVoices;

    check-cast v1, Lcom/nuance/android/vocalizer/VocalizerExternalDataProvider;

    invoke-direct {v0, p1, v1}, Lcom/nuance/android/vocalizer/internal/VocalizerAssetManager;-><init>(Landroid/content/Context;Lcom/nuance/android/vocalizer/VocalizerExternalDataProvider;)V

    iput-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAssetManager:Lcom/nuance/android/vocalizer/internal/VocalizerAssetManager;

    const/high16 v0, 0x40200000    # 2.5f

    .line 41
    iput v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAudioBufferPayload:F

    .line 46
    new-instance v0, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;

    invoke-direct {v0}, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;-><init>()V

    iput-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAudioSettings:Lcom/nuance/android/vocalizer/VocalizerAudioSettings;

    const/4 v0, 0x3

    .line 48
    iput v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAudioStreamChannel:I

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAutoInit:Z

    .line 50
    iput-object p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mContext:Landroid/content/Context;

    .line 56
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :cond_0
    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mHandler:Landroid/os/Handler;

    const/high16 p1, 0x41200000    # 10.0f

    .line 59
    iput p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mInternalAudioBufferPayload:F

    .line 60
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mLoadedResources:Ljava/util/Hashtable;

    const/high16 p1, 0x10000

    .line 61
    iput p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mMaxAudioBufferSize:I

    .line 66
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mScheduledSpeechMarks:Ljava/util/Vector;

    .line 67
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mSpeechItems:Ljava/util/Vector;

    .line 69
    iput v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mState:I

    const/4 p1, 0x5

    .line 73
    iput p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mSynthThreadPriority:I

    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mainThreadId:J

    .line 78
    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->pauseSemaphore:Ljava/util/concurrent/Semaphore;

    .line 79
    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->streamSemaphore:Ljava/util/concurrent/Semaphore;

    .line 84
    iget-object p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAssetManager:Lcom/nuance/android/vocalizer/internal/VocalizerAssetManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nuance/android/vocalizer/internal/VocalizerAssetManager;->initialize()V

    .line 243
    :cond_1
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->abortLock:Ljava/lang/Object;

    return-void
.end method

.method private final audioSamplesReceived([S)Z
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->onSamples:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final closeAssetFile(I)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAssetManager:Lcom/nuance/android/vocalizer/internal/VocalizerAssetManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/android/vocalizer/internal/VocalizerAssetManager;->closeAssetFile(I)V

    :cond_0
    return-void
.end method

.method private final closeAudioStream()V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAudioStream:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 222
    const-string v2, "closeAudioStream: stop() failed"

    check-cast v1, Ljava/lang/Throwable;

    const-string v3, "AllInOneTTS"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAudioStream:Landroid/media/AudioTrack;

    return-void
.end method

.method private final openAssetFile(Ljava/lang/String;)Lcom/nuance/android/vocalizer/internal/VocalizerFileInfo;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAssetManager:Lcom/nuance/android/vocalizer/internal/VocalizerAssetManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/android/vocalizer/internal/VocalizerAssetManager;->openAssetFile(Ljava/lang/String;)Lcom/nuance/android/vocalizer/internal/VocalizerFileInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final sendAbort(Ljava/lang/String;J)Z
    .locals 6

    .line 250
    iget-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->abortLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 251
    :try_start_0
    iget-wide v3, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->synthGen:J

    cmp-long v1, p2, v3

    if-eqz v1, :cond_0

    .line 252
    sget-object v1, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    const-string v3, "Engine"

    iget-wide v4, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->synthGen:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ": abort NOT sent, it was for synthesis "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " and synthesis "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is running now"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit v0

    return v2

    .line 255
    :cond_0
    :try_start_1
    iget-boolean p2, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->synthRunning:Z

    if-nez p2, :cond_1

    .line 256
    sget-object p0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    const-string p2, "Engine"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ": abort NOT sent, nothing is synthesizing (a stale stop would break the engine)"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    monitor-exit v0

    return v2

    .line 259
    :cond_1
    :try_start_2
    iget-boolean p2, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->abortSent:Z

    if-eqz p2, :cond_2

    .line 260
    sget-object p0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    const-string p2, "Engine"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ": abort NOT sent, already sent for this synthesis"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    monitor-exit v0

    return v2

    :cond_2
    const/4 p2, 0x1

    .line 263
    :try_start_3
    iput-boolean p2, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->abortSent:Z

    .line 264
    sget-object p3, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    const-string v1, "Engine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": abort sent to the native engine"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/nuance/android/vocalizer/VocalizerEngine;->stopSpeechNative()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic sendAbort$default(Lcom/nuance/android/vocalizer/VocalizerEngine;Ljava/lang/String;JILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, -0x1

    .line 249
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/android/vocalizer/VocalizerEngine;->sendAbort(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method static final speakOnSynthThread$lambda$5(Lcom/nuance/android/vocalizer/VocalizerEngine;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    const/4 v0, 0x0

    .line 203
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nuance/android/vocalizer/VocalizerEngine;->speakNative(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 205
    iget-object p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->abortLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iput-boolean v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->synthRunning:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    .line 208
    :try_start_2
    iget-object p0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAudioStream:Landroid/media/AudioTrack;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    :catchall_0
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p0

    .line 205
    monitor-exit p1

    throw p0

    :catchall_2
    move-exception p1

    iget-object v1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->abortLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->synthRunning:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    monitor-exit v1

    .line 208
    :try_start_4
    iget-object p0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAudioStream:Landroid/media/AudioTrack;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 209
    :catchall_3
    :cond_1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    throw p1

    :catchall_4
    move-exception p0

    .line 205
    monitor-exit v1

    throw p0
.end method


# virtual methods
.method public final native createNativeEngine()V
.end method

.method public final debugRawStop()V
    .locals 0

    .line 271
    invoke-virtual {p0}, Lcom/nuance/android/vocalizer/VocalizerEngine;->stopSpeechNative()V

    return-void
.end method

.method public final native destroyNativeEngine()V
.end method

.method public final native getAvailableVoiceListNative()[Lcom/nuance/android/vocalizer/VocalizerVoice;
.end method

.method public final native getEngineVersion()Lcom/nuance/android/vocalizer/VocalizerVersion;
.end method

.method public final getOnSamples()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "[S",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->onSamples:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final native getPitch()I
.end method

.method public final native getRate()I
.end method

.method public final native getReadMode()I
.end method

.method public final native getStatInfo()Lcom/nuance/android/vocalizer/internal/VocalizerStatusInfo;
.end method

.method public final getSynthGen()J
    .locals 2

    .line 240
    iget-wide v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->synthGen:J

    return-wide v0
.end method

.method public final native getTextFormat()I
.end method

.method public final native getTextMode()I
.end method

.method public final native getVolume()I
.end method

.method public final native getWaitFactor()I
.end method

.method public final native initializeNative(Ljava/lang/String;)Z
.end method

.method public final native loadVoiceNative(Lcom/nuance/android/vocalizer/VocalizerVoice;)Z
.end method

.method public final markInitialized()V
    .locals 1

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mInitialized:Z

    const/4 v0, 0x2

    .line 124
    iput v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mState:I

    return-void
.end method

.method public final markVoiceLoaded(Lcom/nuance/android/vocalizer/VocalizerVoice;)V
    .locals 1

    const-string v0, "voice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mCurrentVoice:Lcom/nuance/android/vocalizer/VocalizerVoice;

    const/4 p1, 0x4

    .line 129
    iput p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mState:I

    return-void
.end method

.method public final native nativeLoadResource([BLjava/lang/String;)Lcom/nuance/android/vocalizer/internal/VocalizerResourceInfo;
.end method

.method public final native nativeUnloadResource(Lcom/nuance/android/vocalizer/internal/VocalizerResourceInfo;)V
.end method

.method public final native releaseNative()V
.end method

.method public final requestAbort(J)Z
    .locals 1

    .line 238
    const-string v0, "requestAbort (framework refused audio)"

    invoke-direct {p0, v0, p1, p2}, Lcom/nuance/android/vocalizer/VocalizerEngine;->sendAbort(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public final native setAudioBufferSize(I)Z
.end method

.method public final native setEnableMarks(Z)V
.end method

.method public final setOnSamples(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-[S",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->onSamples:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final native setPitch(I)V
.end method

.method public final native setRate(I)V
.end method

.method public final native setReadMode(I)V
.end method

.method public final native setTextFormat(I)V
.end method

.method public final native setTextMode(I)V
.end method

.method public final native setVolume(I)V
.end method

.method public final native setWaitFactor(I)V
.end method

.method public final native speakNative(Ljava/lang/String;)V
.end method

.method public final speakOnSynthThread(Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAudioSettings:Lcom/nuance/android/vocalizer/VocalizerAudioSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;

    invoke-direct {v0}, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;-><init>()V

    iput-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAudioSettings:Lcom/nuance/android/vocalizer/VocalizerAudioSettings;

    .line 144
    :cond_0
    iput p2, v0, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;->mRate:I

    const/4 p2, 0x1

    .line 145
    iput p2, v0, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;->mChannels:I

    .line 148
    iget v1, v0, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;->mRate:I

    invoke-virtual {v0}, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;->convertToAudioStreamChannel()I

    move-result v2

    const/4 v3, 0x2

    .line 147
    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    .line 150
    iget v2, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mMaxAudioBufferSize:I

    iget v4, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAudioBufferPayload:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    int-to-float v6, v1

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 151
    iget v4, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mMaxAudioBufferSize:I

    iget v7, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mInternalAudioBufferPayload:F

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 152
    div-int/lit8 v5, v4, 0x2

    mul-int/2addr v5, v3

    .line 153
    const-string v6, "AllInOneTTS"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "minAudioBufferSize: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " minInternalBufferSize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " hardwareMinBufferSize: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v1, "AllInOneTTS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Internal buffer size: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    div-int/2addr v2, v3

    mul-int/2addr v2, v3

    iput v2, v0, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;->mAudioBufferSize:I

    .line 157
    invoke-virtual {p0, v5}, Lcom/nuance/android/vocalizer/VocalizerEngine;->setAudioBufferSize(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    const-string p0, "AllInOneTTS"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "setAudioBufferSize("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") FAILED -- native rejected the buffer, not proceeding"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAudioStream:Landroid/media/AudioTrack;

    if-eqz v1, :cond_2

    .line 167
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v2

    iget v4, v0, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;->mRate:I

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 170
    invoke-direct {p0}, Lcom/nuance/android/vocalizer/VocalizerEngine;->closeAudioStream()V

    .line 171
    :cond_3
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 172
    iget v2, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAudioStreamChannel:I

    if-ltz v2, :cond_4

    const/4 v4, 0x6

    if-ge v2, v4, :cond_4

    .line 173
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    :cond_4
    const/16 v4, 0xa

    if-ne v2, v4, :cond_5

    const/16 v2, 0xb

    .line 174
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    .line 175
    :cond_5
    invoke-virtual {v1, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 177
    :goto_0
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 178
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 179
    iget v4, v0, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;->mRate:I

    invoke-virtual {v2, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 180
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 181
    invoke-virtual {v0}, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;->convertToAudioStreamChannel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    .line 183
    new-instance v3, Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    iget v6, v0, Lcom/nuance/android/vocalizer/VocalizerAudioSettings;->mAudioBufferSize:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 184
    iget v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->audioOutputVolume:F

    invoke-virtual {v3, v0}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 185
    iput-object v3, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mAudioStream:Landroid/media/AudioTrack;

    move-object v1, v3

    .line 190
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 192
    const-string v1, "AllInOneTTS"

    const-string v2, "speakOnSynthThread: AudioTrack.play() failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    :goto_2
    iget-object v1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->abortLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iput-boolean p2, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->synthRunning:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->abortSent:Z

    iget-wide v2, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->synthGen:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->synthGen:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 201
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/nuance/android/vocalizer/VocalizerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/nuance/android/vocalizer/VocalizerEngine$$ExternalSyntheticLambda0;-><init>(Lcom/nuance/android/vocalizer/VocalizerEngine;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 212
    iget p1, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mSynthThreadPriority:I

    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 213
    iput-object p2, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mSynthThread:Ljava/lang/Thread;

    .line 214
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 200
    monitor-exit v1

    throw p0
.end method

.method public final stop()V
    .locals 7

    .line 274
    iget-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerEngine;->mSynthThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 275
    const-string v2, "stop (screen reader)"

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/nuance/android/vocalizer/VocalizerEngine;->sendAbort$default(Lcom/nuance/android/vocalizer/VocalizerEngine;Ljava/lang/String;JILjava/lang/Object;)Z

    const-wide/16 v2, 0x7d0

    .line 277
    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    const/4 p0, 0x0

    .line 281
    iput-object p0, v1, Lcom/nuance/android/vocalizer/VocalizerEngine;->mSynthThread:Ljava/lang/Thread;

    return-void
.end method

.method public final native stopSpeechNative()V
.end method
