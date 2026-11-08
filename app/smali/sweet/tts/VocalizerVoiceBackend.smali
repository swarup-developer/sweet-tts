.class public final Lsweet/tts/VocalizerVoiceBackend;
.super Ljava/lang/Object;
.source "VocalizerVoiceBackend.kt"

# interfaces
.implements Lsweet/tts/VoiceBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/VocalizerVoiceBackend$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVocalizerVoiceBackend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VocalizerVoiceBackend.kt\nsweet/tts/VocalizerVoiceBackend\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,412:1\n295#2,2:413\n774#2:415\n865#2,2:416\n295#2,2:419\n295#2,2:421\n1#3:418\n*S KotlinDebug\n*F\n+ 1 VocalizerVoiceBackend.kt\nsweet/tts/VocalizerVoiceBackend\n*L\n169#1:413,2\n174#1:415\n174#1:416,2\n179#1:419,2\n182#1:421,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 =2\u00020\u0001:\u0001=B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J*\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000fH\u0002J\u0008\u0010\u001e\u001a\u00020\u0018H\u0002J\u0018\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u000fH\u0002J\u0008\u0010\"\u001a\u00020\rH\u0002J\u0006\u0010#\u001a\u00020\u000fJ\u000e\u0010$\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u0011J\u0006\u0010*\u001a\u00020\u000fJ\u001c\u0010+\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\u000f2\u0008\u0010,\u001a\u0004\u0018\u00010\u000fH\u0002J\u001c\u0010-\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0008\u0010,\u001a\u0004\u0018\u00010\u000fH\u0016J\u0018\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J:\u00105\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010/\u001a\u0002002\u0006\u00106\u001a\u00020\u00112\u0006\u00107\u001a\u00020\u00112\u0008\u0010,\u001a\u0004\u0018\u00010\u000fH\u0016J:\u00108\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010/\u001a\u0002002\u0006\u00106\u001a\u00020\u00112\u0006\u00107\u001a\u00020\u00112\u0008\u0010,\u001a\u0004\u0018\u00010\u000fH\u0002J\u0008\u0010:\u001a\u00020\u0018H\u0016J\u0008\u0010;\u001a\u00020\u0018H\u0016J\u0008\u0010<\u001a\u00020\rH\u0016R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010%\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u000e\u00103\u001a\u000204X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lsweet/tts/VocalizerVoiceBackend;",
        "Lsweet/tts/VoiceBackend;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "appContext",
        "engine",
        "Lcom/nuance/android/vocalizer/VocalizerEngine;",
        "voices",
        "",
        "Lcom/nuance/android/vocalizer/VocalizerVoice;",
        "ready",
        "",
        "lastLoadedVoiceName",
        "",
        "noAudioStreak",
        "",
        "recoveryStep",
        "recoveryReason",
        "lastFailureWasLoad",
        "firstFailureMs",
        "",
        "noteSpeechOk",
        "",
        "noteNoAudio",
        "text",
        "lang",
        "elapsedMs",
        "what",
        "recoverIfNeeded",
        "runRecovery",
        "step",
        "reason",
        "reinitEngine",
        "debugBreak",
        "debugRecover",
        "debugFailLoads",
        "getDebugFailLoads",
        "()I",
        "setDebugFailLoads",
        "(I)V",
        "rescanVoices",
        "findVoice",
        "appPackage",
        "resolveVoiceName",
        "writeAudio",
        "callback",
        "Landroid/speech/tts/SynthesisCallback;",
        "bytes",
        "",
        "speakLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "speak",
        "callerRate",
        "callerPitch",
        "speakLocked",
        "stopRequested",
        "stop",
        "beginUtterance",
        "wasStopped",
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
.field private static final ABSOLUTE_TIMEOUT_MS:J = 0x1d4c0L

.field public static final Companion:Lsweet/tts/VocalizerVoiceBackend$Companion;

.field private static volatile instance:Lsweet/tts/VocalizerVoiceBackend;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private volatile debugFailLoads:I

.field private engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

.field private firstFailureMs:J

.field private lastFailureWasLoad:Z

.field private lastLoadedVoiceName:Ljava/lang/String;

.field private noAudioStreak:I

.field private ready:Z

.field private recoveryReason:Ljava/lang/String;

.field private recoveryStep:I

.field private final speakLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile stopRequested:Z

.field private voices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nuance/android/vocalizer/VocalizerVoice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/VocalizerVoiceBackend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsweet/tts/VocalizerVoiceBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsweet/tts/VocalizerVoiceBackend;->Companion:Lsweet/tts/VocalizerVoiceBackend$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lsweet/tts/VocalizerVoiceBackend;->appContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/nuance/android/vocalizer/VocalizerEngine;

    invoke-direct {v0, p1}, Lcom/nuance/android/vocalizer/VocalizerEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsweet/tts/VocalizerVoiceBackend;->voices:Ljava/util/List;

    .line 37
    iget-object v0, p0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    invoke-virtual {v0}, Lcom/nuance/android/vocalizer/VocalizerEngine;->createNativeEngine()V

    .line 38
    new-instance v0, Lsweet/tts/VocalizerAssetManager;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "getAssets(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    invoke-direct {v0, p1, v1}, Lsweet/tts/VocalizerAssetManager;-><init>(Landroid/content/res/AssetManager;Lcom/nuance/android/vocalizer/VocalizerEngine;)V

    invoke-virtual {v0}, Lsweet/tts/VocalizerAssetManager;->initialize()Z

    move-result p1

    .line 39
    const-string v0, "AllInOneTTS"

    if-eqz p1, :cond_0

    .line 40
    iget-object v1, p0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    invoke-virtual {v1}, Lcom/nuance/android/vocalizer/VocalizerEngine;->getAvailableVoiceListNative()[Lcom/nuance/android/vocalizer/VocalizerVoice;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lsweet/tts/VocalizerVoiceBackend;->voices:Ljava/util/List;

    .line 41
    sget-object v1, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    iget-object v2, p0, Lsweet/tts/VocalizerVoiceBackend;->voices:Ljava/util/List;

    invoke-virtual {v1, v2}, Lsweet/tts/VoiceCatalog;->setVocalizerVoices(Ljava/util/List;)V

    .line 42
    iget-object v1, p0, Lsweet/tts/VocalizerVoiceBackend;->voices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 43
    iget-object v3, v2, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    iget-object v4, v2, Lcom/nuance/android/vocalizer/VocalizerVoice;->mLanguage:Ljava/lang/String;

    .line 44
    iget-object v5, v2, Lcom/nuance/android/vocalizer/VocalizerVoice;->mLanguageTLW:Ljava/lang/String;

    iget v2, v2, Lcom/nuance/android/vocalizer/VocalizerVoice;->mSampleRate:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Vocalizer voice found: name="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " language="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tlw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sampleRate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_0
    const-string v1, "Vocalizer initializeNative() returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_1
    iput-boolean p1, p0, Lsweet/tts/VocalizerVoiceBackend;->ready:Z

    .line 55
    sput-object p0, Lsweet/tts/VocalizerVoiceBackend;->instance:Lsweet/tts/VocalizerVoiceBackend;

    .line 62
    const-string p1, ""

    iput-object p1, p0, Lsweet/tts/VocalizerVoiceBackend;->recoveryReason:Ljava/lang/String;

    .line 204
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lsweet/tts/VocalizerVoiceBackend;->speakLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lsweet/tts/VocalizerVoiceBackend;
    .locals 1

    .line 25
    sget-object v0, Lsweet/tts/VocalizerVoiceBackend;->instance:Lsweet/tts/VocalizerVoiceBackend;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lsweet/tts/VocalizerVoiceBackend;)V
    .locals 0

    .line 25
    sput-object p0, Lsweet/tts/VocalizerVoiceBackend;->instance:Lsweet/tts/VocalizerVoiceBackend;

    return-void
.end method

.method static final debugBreak$lambda$0(Lcom/nuance/android/vocalizer/VocalizerEngine;)V
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/nuance/android/vocalizer/VocalizerEngine;->debugRawStop()V

    return-void
.end method

.method static final debugBreak$lambda$1(Lcom/nuance/android/vocalizer/VocalizerEngine;)V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/nuance/android/vocalizer/VocalizerEngine;->debugRawStop()V

    return-void
.end method

.method private final findVoice(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/android/vocalizer/VocalizerVoice;
    .locals 5

    .line 166
    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    const-string v1, "emoji"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 174
    :cond_0
    iget-object p0, p0, Lsweet/tts/VocalizerVoiceBackend;->voices:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 416
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 174
    sget-object v4, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v4, v3, p1}, Lsweet/tts/VoiceCatalog;->voiceMatchesLanguage(Lcom/nuance/android/vocalizer/VocalizerVoice;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    :cond_2
    check-cast v0, Ljava/util/List;

    if-eqz p2, :cond_3

    .line 177
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0, p2, p1}, Lsweet/tts/Prefs;->voiceForApp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_6

    .line 179
    move-object p2, v0

    check-cast p2, Ljava/lang/Iterable;

    .line 419
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 179
    iget-object v3, v3, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    check-cast v1, Lcom/nuance/android/vocalizer/VocalizerVoice;

    if-eqz v1, :cond_6

    return-object v1

    .line 181
    :cond_6
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0, p1}, Lsweet/tts/Prefs;->voiceFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 182
    move-object p2, v0

    check-cast p2, Ljava/lang/Iterable;

    .line 421
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 182
    iget-object v3, v3, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v2, v1

    :cond_8
    check-cast v2, Lcom/nuance/android/vocalizer/VocalizerVoice;

    if-nez v2, :cond_9

    .line 183
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p0, p1, v0}, Lsweet/tts/VoiceCatalog;->defaultVoiceFor(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/android/vocalizer/VocalizerVoice;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v2

    .line 168
    :cond_a
    :goto_3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p2}, Lsweet/tts/Prefs;->numberVoice()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_b
    sget-object p2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p2}, Lsweet/tts/Prefs;->emojiVoice()Ljava/lang/String;

    move-result-object p2

    .line 169
    :goto_4
    iget-object v0, p0, Lsweet/tts/VocalizerVoiceBackend;->voices:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 413
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 169
    iget-object v3, v3, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v2, v1

    :cond_d
    check-cast v2, Lcom/nuance/android/vocalizer/VocalizerVoice;

    if-nez v2, :cond_e

    .line 170
    sget-object p2, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    iget-object p0, p0, Lsweet/tts/VocalizerVoiceBackend;->voices:Ljava/util/List;

    invoke-virtual {p2, p1, p0}, Lsweet/tts/VoiceCatalog;->defaultVoiceFor(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/android/vocalizer/VocalizerVoice;

    move-result-object p0

    return-object p0

    :cond_e
    return-object v2
.end method

.method private final noteNoAudio(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    .line 81
    sget-object p1, Lsweet/tts/StopClock;->INSTANCE:Lsweet/tts/StopClock;

    invoke-virtual {p1}, Lsweet/tts/StopClock;->noteFail()V

    .line 82
    iget p1, p0, Lsweet/tts/VocalizerVoiceBackend;->noAudioStreak:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lsweet/tts/VocalizerVoiceBackend;->noAudioStreak:I

    .line 83
    const-string p1, "no audio"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lsweet/tts/VocalizerVoiceBackend;->lastFailureWasLoad:Z

    .line 84
    iget-wide v0, p0, Lsweet/tts/VocalizerVoiceBackend;->firstFailureMs:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsweet/tts/VocalizerVoiceBackend;->firstFailureMs:J

    .line 85
    :cond_0
    iget p1, p0, Lsweet/tts/VocalizerVoiceBackend;->noAudioStreak:I

    iget p0, p0, Lsweet/tts/VocalizerVoiceBackend;->recoveryStep:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, ", "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "x in a row (last request "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "ms, lang="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", recovery step so far "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "); the native engine log in logcat (tag NUANCE) has the engine\'s own error"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 87
    sget-object p1, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    const-string p2, "Health"

    invoke-virtual {p1, p2, p0}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object p1, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {p1, p2, p0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic noteNoAudio$default(Lsweet/tts/VocalizerVoiceBackend;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 80
    const-string p5, "no audio"

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lsweet/tts/VocalizerVoiceBackend;->noteNoAudio(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private final noteSpeechOk()V
    .locals 6

    .line 67
    iget v0, p0, Lsweet/tts/VocalizerVoiceBackend;->recoveryStep:I

    if-lez v0, :cond_0

    .line 68
    iget-object v1, p0, Lsweet/tts/VocalizerVoiceBackend;->recoveryReason:Ljava/lang/String;

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lsweet/tts/VocalizerVoiceBackend;->firstFailureMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "speech works again after recovery step "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s after the first failure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    sget-object v1, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    const-string v2, "Recover"

    invoke-virtual {v1, v2, v0}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v1, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v1, v2, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lsweet/tts/VocalizerVoiceBackend;->noAudioStreak:I

    .line 74
    iput v0, p0, Lsweet/tts/VocalizerVoiceBackend;->recoveryStep:I

    .line 75
    const-string v1, ""

    iput-object v1, p0, Lsweet/tts/VocalizerVoiceBackend;->recoveryReason:Ljava/lang/String;

    .line 76
    iput-boolean v0, p0, Lsweet/tts/VocalizerVoiceBackend;->lastFailureWasLoad:Z

    const-wide/16 v0, 0x0

    .line 77
    iput-wide v0, p0, Lsweet/tts/VocalizerVoiceBackend;->firstFailureMs:J

    return-void
.end method

.method private final recoverIfNeeded()V
    .locals 4

    .line 93
    iget v0, p0, Lsweet/tts/VocalizerVoiceBackend;->noAudioStreak:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 94
    :cond_0
    iget v2, p0, Lsweet/tts/VocalizerVoiceBackend;->recoveryStep:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lsweet/tts/VocalizerVoiceBackend;->recoveryStep:I

    if-ne v2, v3, :cond_1

    .line 96
    iget-boolean v2, p0, Lsweet/tts/VocalizerVoiceBackend;->lastFailureWasLoad:Z

    if-eqz v2, :cond_1

    iput v1, p0, Lsweet/tts/VocalizerVoiceBackend;->recoveryStep:I

    .line 97
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failures in a row"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsweet/tts/VocalizerVoiceBackend;->recoveryReason:Ljava/lang/String;

    const/4 v1, 0x0

    .line 98
    iput v1, p0, Lsweet/tts/VocalizerVoiceBackend;->noAudioStreak:I

    .line 99
    iget v1, p0, Lsweet/tts/VocalizerVoiceBackend;->recoveryStep:I

    invoke-direct {p0, v1, v0}, Lsweet/tts/VocalizerVoiceBackend;->runRecovery(ILjava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private final reinitEngine()Z
    .locals 6

    .line 123
    const-string v0, "Recover"

    iget-object v1, p0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    .line 124
    :try_start_0
    invoke-virtual {v1}, Lcom/nuance/android/vocalizer/VocalizerEngine;->releaseNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "releaseNative threw "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/nuance/android/vocalizer/VocalizerEngine;->destroyNativeEngine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    sget-object v2, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "destroyNativeEngine threw "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_1
    new-instance v0, Lcom/nuance/android/vocalizer/VocalizerEngine;

    iget-object v1, p0, Lsweet/tts/VocalizerVoiceBackend;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nuance/android/vocalizer/VocalizerEngine;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v0}, Lcom/nuance/android/vocalizer/VocalizerEngine;->createNativeEngine()V

    .line 128
    new-instance v1, Lsweet/tts/VocalizerAssetManager;

    iget-object v2, p0, Lsweet/tts/VocalizerVoiceBackend;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "getAssets(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lsweet/tts/VocalizerAssetManager;-><init>(Landroid/content/res/AssetManager;Lcom/nuance/android/vocalizer/VocalizerEngine;)V

    invoke-virtual {v1}, Lsweet/tts/VocalizerAssetManager;->initialize()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lsweet/tts/VocalizerVoiceBackend;->ready:Z

    return v0

    .line 133
    :cond_0
    iput-object v0, p0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    .line 134
    invoke-virtual {v0}, Lcom/nuance/android/vocalizer/VocalizerEngine;->getAvailableVoiceListNative()[Lcom/nuance/android/vocalizer/VocalizerVoice;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsweet/tts/VocalizerVoiceBackend;->voices:Ljava/util/List;

    .line 135
    sget-object v0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    iget-object v1, p0, Lsweet/tts/VocalizerVoiceBackend;->voices:Ljava/util/List;

    invoke-virtual {v0, v1}, Lsweet/tts/VoiceCatalog;->setVocalizerVoices(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lsweet/tts/VocalizerVoiceBackend;->lastLoadedVoiceName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lsweet/tts/VocalizerVoiceBackend;->ready:Z

    return v0
.end method

.method private final runRecovery(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "native engine rebuilt, voices "

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    if-gt p1, v3, :cond_0

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lsweet/tts/VocalizerVoiceBackend;->lastLoadedVoiceName:Ljava/lang/String;

    .line 107
    const-string p0, "voice will be loaded again before the next request"

    goto :goto_0

    .line 110
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lsweet/tts/VocalizerVoiceBackend;->reinitEngine()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lsweet/tts/VocalizerVoiceBackend;->voices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "native engine rebuild FAILED"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "native engine rebuild threw "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 115
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recovery step "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", took "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    const-string p2, "AllInOneTTS"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object p2, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    const-string v0, "Recover"

    invoke-virtual {p2, v0, p1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object p2, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {p2, v0, p1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final speakLocked(Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 216
    invoke-direct {v0}, Lsweet/tts/VocalizerVoiceBackend;->recoverIfNeeded()V

    .line 217
    iget-boolean v5, v0, Lsweet/tts/VocalizerVoiceBackend;->stopRequested:Z

    const-string v10, " text="

    const-string v11, "Speak"

    if-eqz v5, :cond_0

    .line 218
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    sget-object v3, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v3, v1}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "STOPPED before start (Vocalizer) lang="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 221
    :cond_0
    iget-boolean v5, v0, Lsweet/tts/VocalizerVoiceBackend;->ready:Z

    const/4 v12, -0x3

    const-string v13, "AllInOneTTS"

    if-nez v5, :cond_1

    .line 222
    const-string v3, "Vocalizer engine not ready, cannot speak"

    invoke-static {v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    .line 224
    const-string v5, "engine not ready"

    invoke-direct/range {v0 .. v5}, Lsweet/tts/VocalizerVoiceBackend;->noteNoAudio(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 225
    invoke-interface {v6, v12}, Landroid/speech/tts/SynthesisCallback;->error(I)V

    return-void

    :cond_1
    move-object/from16 v1, p6

    .line 228
    invoke-direct {v0, v2, v1}, Lsweet/tts/VocalizerVoiceBackend;->findVoice(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/android/vocalizer/VocalizerVoice;

    move-result-object v14

    if-nez v14, :cond_2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No Vocalizer voice matched for lang="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SKIPPED no voice installed for lang="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (nothing spoken, reported done)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-interface {v6}, Landroid/speech/tts/SynthesisCallback;->done()I

    return-void

    .line 240
    :cond_2
    iget-object v1, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    iget-object v5, v0, Lsweet/tts/VocalizerVoiceBackend;->lastLoadedVoiceName:Ljava/lang/String;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x0

    const-string v8, " lang="

    if-nez v1, :cond_7

    .line 241
    sget-object v1, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    iget-object v9, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    iget-object v5, v0, Lsweet/tts/VocalizerVoiceBackend;->lastLoadedVoiceName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "loading voice="

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " (was "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Voice"

    invoke-virtual {v1, v7, v5}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iput-object v15, v0, Lsweet/tts/VocalizerVoiceBackend;->lastLoadedVoiceName:Ljava/lang/String;

    .line 243
    iget v1, v0, Lsweet/tts/VocalizerVoiceBackend;->debugFailLoads:I

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 244
    iget v5, v0, Lsweet/tts/VocalizerVoiceBackend;->debugFailLoads:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lsweet/tts/VocalizerVoiceBackend;->debugFailLoads:I

    :cond_4
    if-nez v1, :cond_6

    .line 245
    iget-object v1, v0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    invoke-virtual {v1, v14}, Lcom/nuance/android/vocalizer/VocalizerEngine;->loadVoiceNative(Lcom/nuance/android/vocalizer/VocalizerVoice;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 254
    :cond_5
    iget-object v1, v0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    invoke-virtual {v1, v14}, Lcom/nuance/android/vocalizer/VocalizerEngine;->markVoiceLoaded(Lcom/nuance/android/vocalizer/VocalizerVoice;)V

    .line 255
    iget-object v1, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    iput-object v1, v0, Lsweet/tts/VocalizerVoiceBackend;->lastLoadedVoiceName:Ljava/lang/String;

    .line 259
    iget-boolean v1, v0, Lsweet/tts/VocalizerVoiceBackend;->stopRequested:Z

    if-eqz v1, :cond_7

    .line 260
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    iget-object v1, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "STOPPED during voice load (Vocalizer) voice="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_6
    :goto_1
    iget-object v1, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadVoiceNative failed for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v1, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    iget-object v3, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loadVoiceNative FAILED for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "voice "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " could not be loaded"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lsweet/tts/VocalizerVoiceBackend;->noteNoAudio(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const/4 v0, -0x3

    .line 251
    invoke-interface {v6, v0}, Landroid/speech/tts/SynthesisCallback;->error(I)V

    return-void

    :cond_7
    move-object/from16 v12, p1

    move-object v1, v2

    .line 269
    sget-object v2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    iget-object v5, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lsweet/tts/Prefs;->rateFor(Ljava/lang/String;)I

    move-result v2

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    sget-object v7, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v7}, Lsweet/tts/Prefs;->vocalizerRateCap()I

    move-result v7

    const/4 v9, 0x1

    invoke-static {v2, v9, v7}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    .line 270
    sget-object v7, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    move/from16 v16, v5

    iget-object v5, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lsweet/tts/Prefs;->pitchFor(Ljava/lang/String;)I

    move-result v5

    mul-int/2addr v5, v4

    int-to-float v5, v5

    div-float v5, v5, v16

    float-to-int v5, v5

    const/16 v7, 0xc8

    invoke-static {v5, v9, v7}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v5

    .line 271
    sget-object v7, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    iget-object v9, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lsweet/tts/Prefs;->volumeFor(Ljava/lang/String;)I

    move-result v7

    .line 272
    sget-object v9, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    iget-object v15, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    const-string v13, "voice="

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " callerRate="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " callerPitch="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> effectiveRate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " effectivePitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {v9, v11, v3}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v3, v0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    invoke-virtual {v3, v7}, Lcom/nuance/android/vocalizer/VocalizerEngine;->setVolume(I)V

    .line 280
    iget-object v3, v0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    invoke-virtual {v3, v2}, Lcom/nuance/android/vocalizer/VocalizerEngine;->setRate(I)V

    .line 281
    iget-object v2, v0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    invoke-virtual {v2, v5}, Lcom/nuance/android/vocalizer/VocalizerEngine;->setPitch(I)V

    .line 283
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v2, v8

    .line 285
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v8, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 286
    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 287
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v5, v2

    .line 290
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 293
    iget v4, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mSampleRate:I

    if-lez v4, :cond_8

    iget v4, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mSampleRate:I

    mul-int/lit16 v4, v4, 0x3e8

    goto :goto_2

    :cond_8
    const/16 v4, 0x5622

    .line 295
    :goto_2
    iget-object v13, v0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    new-instance v0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;

    move-object/from16 v6, p0

    move-object/from16 v15, p2

    move-object/from16 v19, v10

    move-object v10, v5

    move v5, v4

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v9}, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/speech/tts/SynthesisCallback;ILsweet/tts/VocalizerVoiceBackend;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    move-object v3, v0

    move-object v0, v6

    move-object v1, v8

    move-object v8, v4

    invoke-virtual {v13, v3}, Lcom/nuance/android/vocalizer/VocalizerEngine;->setOnSamples(Lkotlin/jvm/functions/Function1;)V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 343
    invoke-static {v0, v5, v12}, Lsweet/tts/VocalizerVoiceBackend;->speakLocked$speakOne(Lsweet/tts/VocalizerVoiceBackend;ILjava/lang/String;)V

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    .line 346
    iget-object v5, v0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nuance/android/vocalizer/VocalizerEngine;->setOnSamples(Lkotlin/jvm/functions/Function1;)V

    .line 347
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const-string v13, " elapsedMs="

    if-eqz v2, :cond_9

    iget-boolean v2, v0, Lsweet/tts/VocalizerVoiceBackend;->stopRequested:Z

    if-nez v2, :cond_9

    .line 348
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    iget-object v1, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "STOPPED (framework refused audio) voice="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    iget-object v1, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    sget-object v2, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v2, v12}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "STOPPED (framework refused audio, synthesis cut short) voice="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v5, v19

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    move-object/from16 v5, v19

    .line 352
    iget-boolean v2, v0, Lsweet/tts/VocalizerVoiceBackend;->stopRequested:Z

    if-eqz v2, :cond_b

    iget-boolean v2, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v2, :cond_a

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_b

    .line 353
    :cond_a
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    iget-object v1, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    sget-object v2, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v2, v12}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "INTERRUPTED voice="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    iget-object v1, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    sget-object v2, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v2, v12}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 355
    :cond_b
    iget-boolean v2, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_c

    .line 356
    sget-object v0, Lsweet/tts/StopClock;->INSTANCE:Lsweet/tts/StopClock;

    invoke-virtual {v0}, Lsweet/tts/StopClock;->noteFail()V

    .line 357
    iget-object v0, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    sget-object v1, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v1, v12}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "PRODUCTION SPEAK FAILED (callback exception) for voice="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v18

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    iget-object v1, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    sget-object v2, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v2, v12}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FAILED (callback exception) voice="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    iget-object v1, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    sget-object v2, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v2, v12}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    .line 360
    :try_start_0
    invoke-interface {v8, v0}, Landroid/speech/tts/SynthesisCallback;->error(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_c
    move-object/from16 v9, v18

    .line 361
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const-string v6, "callback.done() threw"

    if-nez v2, :cond_d

    invoke-static {v12}, Lsweet/tts/WatchdogKt;->hasSpeakableChars(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 363
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    iget-object v1, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    sget-object v2, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v2, v12}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SKIPPED (nothing to speak) voice="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    iget-object v1, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    sget-object v2, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v2, v12}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/speech/tts/SynthesisCallback;->done()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v9, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 366
    :cond_d
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object/from16 v19, v5

    const/4 v5, 0x0

    move-object v1, v12

    move-object v2, v15

    move-object/from16 v8, v19

    .line 367
    invoke-static/range {v0 .. v7}, Lsweet/tts/VocalizerVoiceBackend;->noteNoAudio$default(Lsweet/tts/VocalizerVoiceBackend;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;)V

    .line 368
    iget-object v0, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    sget-object v5, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v5, v1}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PRODUCTION SPEAK FAILED (no audio received) for voice="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    iget-object v5, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    sget-object v6, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v6, v1}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "FAILED (no audio received) voice="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    iget-object v5, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    sget-object v6, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v6, v1}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    const/4 v1, -0x3

    .line 371
    :try_start_2
    invoke-interface {v0, v1}, Landroid/speech/tts/SynthesisCallback;->error(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :cond_e
    move-object/from16 v0, p3

    move-object v8, v5

    move-object v1, v12

    move-object v2, v15

    .line 373
    invoke-direct/range {p0 .. p0}, Lsweet/tts/VocalizerVoiceBackend;->noteSpeechOk()V

    .line 374
    iget-object v5, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sget-object v12, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v12, v1}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v0, "PRODUCTION SPEAK OK: voice="

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " bytes="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    iget-object v6, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    move-wide v15, v3

    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sget-object v7, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v7, v1}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    move-wide/from16 v17, v15

    const-string v15, "OK voice="

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    iget-object v3, v14, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sget-object v4, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v4, v1}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v3, v17

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :try_start_3
    invoke-interface/range {p3 .. p3}, Landroid/speech/tts/SynthesisCallback;->done()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v1, p4

    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catchall_2
    :goto_3
    return-void
.end method

.method static final speakLocked$lambda$10(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/speech/tts/SynthesisCallback;ILsweet/tts/VocalizerVoiceBackend;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$BooleanRef;[S)Lkotlin/Unit;
    .locals 10

    move-object/from16 v1, p9

    const-string v2, "samples"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    monitor-enter p0

    const/4 v2, 0x1

    .line 298
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_4

    .line 300
    iget-boolean v3, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v3, :cond_1

    .line 301
    invoke-interface {p3, p4, v5, v2}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    .line 302
    :goto_0
    iput-boolean v2, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 305
    array-length p2, v1

    mul-int/2addr p2, v5

    new-array v3, p2, [B

    .line 306
    array-length v5, v1

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_2

    .line 307
    aget-short v7, v1, v6

    mul-int/lit8 v8, v6, 0x2

    and-int/lit16 v9, v7, 0xff

    int-to-byte v9, v9

    .line 308
    aput-byte v9, v3, v8

    add-int/lit8 v8, v8, 0x1

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 309
    aput-byte v7, v3, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 311
    :cond_2
    invoke-direct {p5, p3, v3}, Lsweet/tts/VocalizerVoiceBackend;->writeAudio(Landroid/speech/tts/SynthesisCallback;[B)Z

    move-result v3

    int-to-long p2, p2

    move-object/from16 v1, p6

    .line 312
    invoke-virtual {v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-object/from16 p2, p7

    .line 313
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    if-nez v3, :cond_4

    .line 315
    invoke-virtual {p1, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 317
    iget-object p1, p5, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    invoke-virtual {p1}, Lcom/nuance/android/vocalizer/VocalizerEngine;->getSynthGen()J

    move-result-wide p1

    .line 318
    new-instance p3, Ljava/lang/Thread;

    new-instance v1, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda4;

    invoke-direct {v1, p5, p1, p2}, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda4;-><init>(Lsweet/tts/VocalizerVoiceBackend;J)V

    const-string p1, "VocalizerAbort"

    invoke-direct {p3, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 323
    :try_start_1
    const-string p2, "AllInOneTTS"

    const-string p3, "onSamples: framework callback threw"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 p1, p8

    .line 324
    iput-boolean v2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 326
    :cond_4
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 296
    monitor-exit p0

    .line 327
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 296
    monitor-exit p0

    throw p1
.end method

.method static final speakLocked$lambda$10$lambda$9$lambda$8(Lsweet/tts/VocalizerVoiceBackend;J)V
    .locals 0

    .line 318
    iget-object p0, p0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/android/vocalizer/VocalizerEngine;->requestAbort(J)Z

    return-void
.end method

.method private static final speakLocked$speakOne(Lsweet/tts/VocalizerVoiceBackend;ILjava/lang/String;)V
    .locals 3

    .line 333
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 334
    iget-object v1, p0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    new-instance v2, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, p2, p1, v2}, Lcom/nuance/android/vocalizer/VocalizerEngine;->speakOnSynthThread(Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V

    .line 337
    iget-boolean p1, p0, Lsweet/tts/VocalizerVoiceBackend;->stopRequested:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    invoke-virtual {p0}, Lcom/nuance/android/vocalizer/VocalizerEngine;->stop()V

    :cond_0
    const-wide/32 p0, 0x1d4c0

    .line 338
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method static final speakLocked$speakOne$lambda$11(Ljava/util/concurrent/CountDownLatch;)Lkotlin/Unit;
    .locals 0

    .line 334
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final writeAudio(Landroid/speech/tts/SynthesisCallback;[B)Z
    .locals 4

    .line 192
    invoke-interface {p1}, Landroid/speech/tts/SynthesisCallback;->getMaxBufferSize()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    .line 194
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 195
    array-length v2, p2

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 196
    invoke-interface {p1, p2, v1, v2}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I

    move-result v3

    if-eqz v3, :cond_0

    return v0

    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public beginUtterance()V
    .locals 1

    const/4 v0, 0x0

    .line 398
    iput-boolean v0, p0, Lsweet/tts/VocalizerVoiceBackend;->stopRequested:Z

    return-void
.end method

.method public final debugBreak()Ljava/lang/String;
    .locals 3

    .line 145
    iget-object p0, p0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    .line 146
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda2;-><init>(Lcom/nuance/android/vocalizer/VocalizerEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 147
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda3;-><init>(Lcom/nuance/android/vocalizer/VocalizerEngine;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 150
    const-string p0, "two unguarded native stops sent from two threads"

    return-object p0
.end method

.method public final debugRecover(I)Ljava/lang/String;
    .locals 1

    .line 153
    const-string v0, "by hand"

    invoke-direct {p0, p1, v0}, Lsweet/tts/VocalizerVoiceBackend;->runRecovery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDebugFailLoads()I
    .locals 0

    .line 156
    iget p0, p0, Lsweet/tts/VocalizerVoiceBackend;->debugFailLoads:I

    return p0
.end method

.method public final rescanVoices()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    .line 159
    const-string v1, "voice folder check"

    invoke-direct {p0, v0, v1}, Lsweet/tts/VocalizerVoiceBackend;->runRecovery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, p1, p2}, Lsweet/tts/VocalizerVoiceBackend;->findVoice(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/android/vocalizer/VocalizerVoice;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setDebugFailLoads(I)V
    .locals 0

    .line 156
    iput p1, p0, Lsweet/tts/VocalizerVoiceBackend;->debugFailLoads:I

    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lang"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lsweet/tts/VocalizerVoiceBackend;->speakLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 209
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lsweet/tts/VocalizerVoiceBackend;->speakLocked(Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object p0, p0, Lsweet/tts/VocalizerVoiceBackend;->speakLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object p0, p0, Lsweet/tts/VocalizerVoiceBackend;->speakLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public stop()V
    .locals 4

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lsweet/tts/VocalizerVoiceBackend;->stopRequested:Z

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 388
    iget-object p0, p0, Lsweet/tts/VocalizerVoiceBackend;->engine:Lcom/nuance/android/vocalizer/VocalizerEngine;

    invoke-virtual {p0}, Lcom/nuance/android/vocalizer/VocalizerEngine;->stop()V

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x14

    cmp-long p0, v2, v0

    if-ltz p0, :cond_0

    .line 391
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Vocalizer stop(): engine.stop() took "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "ms -- SLOW"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 392
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    const-string v1, "Stop"

    invoke-virtual {v0, v1, p0}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v0, v1, p0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public wasStopped()Z
    .locals 0

    .line 401
    iget-boolean p0, p0, Lsweet/tts/VocalizerVoiceBackend;->stopRequested:Z

    return p0
.end method
