.class public final Lsweet/tts/Tts;
.super Landroid/speech/tts/TextToSpeechService;
.source "Tts.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/Tts$ChainedCallback;,
        Lsweet/tts/Tts$Companion;,
        Lsweet/tts/Tts$Handoff;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tts.kt\nsweet/tts/Tts\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,690:1\n1#2:691\n1#2:706\n1563#3:692\n1634#3,3:693\n1761#3,3:696\n1761#3,3:699\n1869#3,2:702\n1491#3:707\n1516#3,3:708\n1519#3,3:718\n1788#3,4:721\n1563#3:725\n1634#3,2:726\n1761#3,3:728\n1636#3:731\n72#4,2:704\n382#5,7:711\n*S KotlinDebug\n*F\n+ 1 Tts.kt\nsweet/tts/Tts\n*L\n138#1:706\n72#1:692\n72#1:693,3\n77#1:696,3\n80#1:699,3\n125#1:702,2\n310#1:707\n310#1:708,3\n310#1:718,3\n311#1:721,4\n451#1:725\n451#1:726,2\n453#1:728,3\n451#1:731\n138#1:704,2\n310#1:711,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 C2\u00020\u0001:\u0003CDEB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nH\u0002J\u0008\u0010\u0010\u001a\u00020\u0007H\u0016J&\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0014J\u0013\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0016H\u0014\u00a2\u0006\u0002\u0010\u0017J&\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0014J\u000e\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016J\u0012\u0010\u001c\u001a\u00020\u00122\u0008\u0010\u001d\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u001e\u001a\u00020\u00122\u0008\u0010\u001d\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\u001f\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\nH\u0002J\u0008\u0010%\u001a\u00020\u0007H\u0014J\u001c\u0010&\u001a\u00020\u00072\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0014J\u0010\u0010/\u001a\u00020\n2\u0006\u0010\'\u001a\u00020(H\u0002J\u0018\u00100\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0002J2\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u0010\'\u001a\u00020(2\u0008\u00107\u001a\u0004\u0018\u00010\n2\u0006\u00108\u001a\u000209H\u0002J\u0010\u0010:\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u000cH\u0002J2\u0010<\u001a\u0008\u0012\u0004\u0012\u0002040\t2\u0006\u0010=\u001a\u00020\n2\u0008\u00107\u001a\u0004\u0018\u00010\n2\u0010\u0008\u0002\u0010>\u001a\n\u0012\u0004\u0012\u000204\u0018\u00010\tH\u0002J\u001e\u0010?\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010@2\u0006\u0010=\u001a\u00020\nH\u0002J&\u0010A\u001a\u0008\u0012\u0004\u0012\u0002040\t2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u0002040\t2\u0008\u00107\u001a\u0004\u0018\u00010\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\n0.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006F"
    }
    d2 = {
        "Lsweet/tts/Tts;",
        "Landroid/speech/tts/TextToSpeechService;",
        "<init>",
        "()V",
        "voice",
        "Lsweet/tts/VoiceBackend;",
        "onDestroy",
        "",
        "supported",
        "",
        "",
        "ABSOLUTE_BACKGROUND_CLASSIFY_TIMEOUT_MS",
        "",
        "localeFor",
        "Ljava/util/Locale;",
        "lang",
        "onCreate",
        "onIsLanguageAvailable",
        "",
        "country",
        "variant",
        "onGetLanguage",
        "",
        "()[Ljava/lang/String;",
        "onLoadLanguage",
        "onGetVoices",
        "",
        "Landroid/speech/tts/Voice;",
        "onIsValidVoiceName",
        "voiceName",
        "onLoadVoice",
        "onGetDefaultVoiceNameFor",
        "activeRunDesc",
        "activeRunStartMs",
        "stopAtMs",
        "logStop",
        "msg",
        "onStop",
        "onSynthesizeText",
        "request",
        "Landroid/speech/tts/SynthesisRequest;",
        "callback",
        "Landroid/speech/tts/SynthesisCallback;",
        "lastReader",
        "lastReqKey",
        "readerCache",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "readerOf",
        "synthesize",
        "ENGINE_SWITCH_GAP_MS",
        "speakRun",
        "run",
        "Lsweet/tts/Lang$TextRun;",
        "chained",
        "Lsweet/tts/Tts$ChainedCallback;",
        "appPackage",
        "handoff",
        "Lsweet/tts/Tts$Handoff;",
        "pauseInterruptibly",
        "totalMs",
        "buildRuns",
        "text",
        "precomputedRawRuns",
        "firstSentenceSplit",
        "Lkotlin/Pair;",
        "mergeByResolvedVoice",
        "runs",
        "Companion",
        "Handoff",
        "ChainedCallback",
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
.field public static final Companion:Lsweet/tts/Tts$Companion;

.field private static volatile serviceCreations:I


# instance fields
.field private final ABSOLUTE_BACKGROUND_CLASSIFY_TIMEOUT_MS:J

.field private final ENGINE_SWITCH_GAP_MS:J

.field private volatile activeRunDesc:Ljava/lang/String;

.field private volatile activeRunStartMs:J

.field private lastReader:Ljava/lang/String;

.field private lastReqKey:Ljava/lang/String;

.field private final readerCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile stopAtMs:J

.field private final supported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private voice:Lsweet/tts/VoiceBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/Tts$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsweet/tts/Tts$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsweet/tts/Tts;->Companion:Lsweet/tts/Tts$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 16
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;-><init>()V

    const/16 v0, 0xa

    .line 30
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hi"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mr"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ta"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "te"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ml"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "kn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pa"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bn"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "en"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsweet/tts/Tts;->supported:Ljava/util/List;

    const-wide/32 v0, 0xea60

    .line 34
    iput-wide v0, p0, Lsweet/tts/Tts;->ABSOLUTE_BACKGROUND_CLASSIFY_TIMEOUT_MS:J

    .line 89
    const-string v0, "none"

    iput-object v0, p0, Lsweet/tts/Tts;->activeRunDesc:Ljava/lang/String;

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lsweet/tts/Tts;->lastReader:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lsweet/tts/Tts;->lastReqKey:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lsweet/tts/Tts;->readerCache:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v0, 0x96

    .line 381
    iput-wide v0, p0, Lsweet/tts/Tts;->ENGINE_SWITCH_GAP_MS:J

    return-void
.end method

.method private final buildRuns(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lsweet/tts/Lang$TextRun;",
            ">;)",
            "Ljava/util/List<",
            "Lsweet/tts/Lang$TextRun;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 442
    sget-object p3, Lsweet/tts/Lang;->INSTANCE:Lsweet/tts/Lang;

    invoke-virtual {p3, p1}, Lsweet/tts/Lang;->segmentRuns(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 446
    :cond_0
    invoke-direct {p0, p3, p2}, Lsweet/tts/Tts;->mergeByResolvedVoice(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 451
    check-cast p1, Ljava/lang/Iterable;

    .line 725
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Ljava/util/Collection;

    .line 726
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 727
    check-cast v0, Lsweet/tts/Lang$TextRun;

    .line 452
    iget-object v1, p0, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "voice"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v0}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Lsweet/tts/VoiceBackend;->resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 453
    sget-object v3, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    const-string v4, "en"

    invoke-virtual {v3, v4}, Lsweet/tts/VoiceCatalog;->voicesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 728
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 729
    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 453
    iget-object v4, v4, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 454
    :goto_2
    invoke-virtual {v0}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_5

    .line 455
    sget-object v5, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v5}, Lsweet/tts/Prefs;->croreLakhEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    invoke-virtual {v5, v4}, Lsweet/tts/NumberProcessing;->rewriteCroreLakh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 456
    :cond_5
    sget-object v5, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v5}, Lsweet/tts/Prefs;->croreLakhEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    invoke-virtual {v5, v4}, Lsweet/tts/NumberProcessing;->rewriteDeferredLongNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 459
    :cond_6
    :goto_3
    sget-object v5, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    invoke-virtual {v5, v4}, Lsweet/tts/NumberProcessing;->expandReservedMobile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 461
    sget-object v5, Lsweet/tts/EmojiDictionary;->INSTANCE:Lsweet/tts/EmojiDictionary;

    invoke-virtual {v0}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6, v1}, Lsweet/tts/EmojiDictionary;->rewrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 464
    sget-object v5, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {v5, v1}, Lsweet/tts/ExternalEngines;->isExternalVoice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 466
    sget-object v5, Lsweet/tts/PunctuationReader;->INSTANCE:Lsweet/tts/PunctuationReader;

    invoke-virtual {v0}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6, v1}, Lsweet/tts/PunctuationReader;->rewrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_7

    .line 470
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 471
    sget-object v3, Lsweet/tts/TextFixes;->INSTANCE:Lsweet/tts/TextFixes;

    invoke-virtual {v3, v4}, Lsweet/tts/TextFixes;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    sget-object v4, Lsweet/tts/EnglishHomographs;->INSTANCE:Lsweet/tts/EnglishHomographs;

    invoke-virtual {v4, v3}, Lsweet/tts/EnglishHomographs;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 473
    sget-object v3, Lsweet/tts/LangPerf;->INSTANCE:Lsweet/tts/LangPerf;

    invoke-virtual {v3}, Lsweet/tts/LangPerf;->getFixNs()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 475
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 476
    sget-object v3, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    sget-object v7, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v0}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lsweet/tts/Dictionary;->targetKeyFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lsweet/tts/Dictionary;->rewrite(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 477
    sget-object v3, Lsweet/tts/LangPerf;->INSTANCE:Lsweet/tts/LangPerf;

    invoke-virtual {v3}, Lsweet/tts/LangPerf;->getDictNs()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 479
    :cond_8
    sget-object v3, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v0}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v0}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v7, v4}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_9
    const-string v7, ""

    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "run ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] resolvedVoice="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Stage"

    invoke-virtual {v3, v5, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x2

    invoke-static {v0, v4, v2, v1, v2}, Lsweet/tts/Lang$TextRun;->copy$default(Lsweet/tts/Lang$TextRun;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lsweet/tts/Lang$TextRun;

    move-result-object v0

    .line 727
    :cond_a
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 731
    :cond_b
    check-cast p3, Ljava/util/List;

    return-object p3
.end method

.method static synthetic buildRuns$default(Lsweet/tts/Tts;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 441
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lsweet/tts/Tts;->buildRuns(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final firstSentenceSplit(Ljava/lang/String;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 492
    new-instance p0, Lkotlin/text/Regex;

    const-string v0, "(?:\u0964|\u0965|[!?]|(?<!\\d)\\.(?=\\s|$))+\\s*"

    invoke-direct {p0, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v3

    .line 493
    :cond_0
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/ranges/IntRange;->getLast()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 494
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p0, v0, :cond_1

    return-object v3

    .line 495
    :cond_1
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    move-object p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    move-object p1, p0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 498
    :cond_2
    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v3
.end method

.method private final localeFor(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/16 v0, 0xc4c

    const-string v1, "IN"

    if-eq p0, v0, :cond_10

    const/16 v0, 0xcee

    if-eq p0, v0, :cond_e

    const/16 v0, 0xd01

    if-eq p0, v0, :cond_c

    const/16 v0, 0xd63

    if-eq p0, v0, :cond_a

    const/16 v0, 0xd9f

    if-eq p0, v0, :cond_8

    const/16 v0, 0xda5

    if-eq p0, v0, :cond_6

    const/16 v0, 0xdf1

    if-eq p0, v0, :cond_4

    const/16 v0, 0xe6d

    if-eq p0, v0, :cond_2

    const/16 v0, 0xe71

    if-eq p0, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p0, "te"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 40
    :cond_1
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 36
    :cond_2
    const-string p0, "ta"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 39
    :cond_3
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 36
    :cond_4
    const-string p0, "pa"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 44
    :cond_5
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 36
    :cond_6
    const-string p0, "mr"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 38
    :cond_7
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 36
    :cond_8
    const-string p0, "ml"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    .line 42
    :cond_9
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 36
    :cond_a
    const-string p0, "kn"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    .line 43
    :cond_b
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 36
    :cond_c
    const-string p0, "hi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    .line 37
    :cond_d
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 36
    :cond_e
    const-string p0, "gu"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    .line 41
    :cond_f
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 36
    :cond_10
    const-string p0, "bn"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 46
    :goto_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p1, "US"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 45
    :cond_11
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private final logStop(Ljava/lang/String;)V
    .locals 1

    .line 94
    sget-object p0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    const-string v0, "Stop"

    invoke-virtual {p0, v0, p1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object p0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {p0, v0, p1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final mergeByResolvedVoice(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsweet/tts/Lang$TextRun;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lsweet/tts/Lang$TextRun;",
            ">;"
        }
    .end annotation

    .line 506
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p1

    .line 507
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 508
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsweet/tts/Lang$TextRun;

    .line 509
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsweet/tts/Lang$TextRun;

    if-eqz v3, :cond_4

    .line 514
    iget-object v4, p0, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    const/4 v5, 0x0

    const-string v6, "voice"

    if-nez v4, :cond_1

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    :cond_1
    invoke-virtual {v3}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, p2}, Lsweet/tts/VoiceBackend;->resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 515
    iget-object v4, p0, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v4, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    :cond_2
    invoke-virtual {v3}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, p2}, Lsweet/tts/VoiceBackend;->resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v7, :cond_3

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v5, v7

    :goto_1
    invoke-virtual {v2}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p2}, Lsweet/tts/VoiceBackend;->resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 517
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    new-instance v5, Lsweet/tts/Lang$TextRun;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v2, v3}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 519
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method static final onCreate$lambda$0(Landroid/content/Context;)V
    .locals 1

    .line 60
    sget-object v0, Lsweet/tts/SharedScriptLid;->INSTANCE:Lsweet/tts/SharedScriptLid;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lsweet/tts/SharedScriptLid;->preload(Landroid/content/Context;)V

    return-void
.end method

.method static final onSynthesizeText$lambda$5(Ljava/lang/StackTraceElement;)Ljava/lang/CharSequence;
    .locals 4

    .line 122
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getClassName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x2e

    invoke-static {v0, v3, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final pauseInterruptibly(J)V
    .locals 2

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 430
    iget-object v0, p0, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v0, :cond_0

    const-string v0, "voice"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x19

    .line 431
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 432
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr p1, v0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method private final readerOf(Landroid/speech/tts/SynthesisRequest;)Ljava/lang/String;
    .locals 13

    const-string v0, "uid"

    .line 138
    iget-object v1, p0, Lsweet/tts/Tts;->readerCache:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getCallerUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 704
    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lsweet/tts/Tts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getCallerUid()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string p0, "+"

    move-object v5, p0

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getCallerUid()I

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getCallerUid()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 705
    :cond_1
    :goto_0
    invoke-interface {v1, v2, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    move-object v3, p0

    goto :goto_1

    :cond_2
    move-object v3, p1

    .line 138
    :cond_3
    :goto_1
    const-string p0, "getOrPut(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    return-object v3
.end method

.method private final speakRun(Lsweet/tts/Lang$TextRun;Lsweet/tts/Tts$ChainedCallback;Landroid/speech/tts/SynthesisRequest;Ljava/lang/String;Lsweet/tts/Tts$Handoff;)V
    .locals 12

    .line 384
    iget-object v0, p0, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    const-string v1, "voice"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-interface {v0}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "run skipped, stop already requested: lang="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lsweet/tts/Tts;->logStop(Ljava/lang/String;)V

    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {p1}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v10, p4

    invoke-interface {v0, v3, v10}, Lsweet/tts/VoiceBackend;->resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_4

    .line 387
    const-string v4, "Google "

    const/4 v5, 0x2

    invoke-static {v3, v4, v0, v5, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {v4, v3}, Lsweet/tts/ExternalEngines;->isExternalVoice(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 388
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lsweet/tts/Tts$Handoff;->getPrevGoogle()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 389
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 393
    iget-wide v5, p0, Lsweet/tts/Tts;->ENGINE_SWITCH_GAP_MS:J

    if-eqz v0, :cond_5

    .line 391
    new-instance v7, Lsweet/tts/Tts$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0}, Lsweet/tts/Tts$$ExternalSyntheticLambda6;-><init>(Lsweet/tts/Tts;)V

    invoke-virtual {p2, v5, v6, v7}, Lsweet/tts/Tts$ChainedCallback;->awaitPlaybackDrain(JLkotlin/jvm/functions/Function0;)J

    move-result-wide v5

    goto :goto_0

    .line 393
    :cond_5
    invoke-direct {p0, v5, v6}, Lsweet/tts/Tts;->pauseInterruptibly(J)V

    .line 394
    iget-wide v5, p0, Lsweet/tts/Tts;->ENGINE_SWITCH_GAP_MS:J

    .line 396
    :goto_0
    sget-object v7, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v8, "Google"

    const-string v9, "streamed"

    if-eqz v4, :cond_6

    move-object v4, v8

    goto :goto_1

    :cond_6
    move-object v4, v9

    :goto_1
    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move-object v8, v9

    .line 397
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "engine switch "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " -> "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " (voice="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "): waited "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms before speaking"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 396
    const-string v5, "Handoff"

    invoke-virtual {v7, v5, v4}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_8
    iget-object v4, p0, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v4, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_9
    invoke-interface {v4}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result v4

    const-string v11, " voice="

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "run skipped, stop arrived during hand-off wait: lang="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lsweet/tts/Tts;->logStop(Ljava/lang/String;)V

    return-void

    .line 402
    :cond_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v4, p5

    invoke-virtual {v4, v0}, Lsweet/tts/Tts$Handoff;->setPrevGoogle(Ljava/lang/Boolean;)V

    .line 403
    invoke-virtual {p1}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 405
    invoke-virtual {p2}, Lsweet/tts/Tts$ChainedCallback;->done()I

    return-void

    .line 408
    :cond_b
    invoke-virtual {p1}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x28

    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lang="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " text="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsweet/tts/Tts;->activeRunDesc:Ljava/lang/String;

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lsweet/tts/Tts;->activeRunStartMs:J

    .line 411
    :try_start_0
    iget-object v0, p0, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v0, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    goto :goto_3

    :cond_c
    move-object v4, v0

    :goto_3
    invoke-virtual {p1}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v6

    move-object v7, p2

    check-cast v7, Landroid/speech/tts/SynthesisCallback;

    invoke-virtual {p3}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v8

    invoke-virtual {p3}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v9

    invoke-interface/range {v4 .. v10}, Lsweet/tts/VoiceBackend;->speak(Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 415
    invoke-virtual {p1}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "run failed: lang="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AllInOneTTS"

    invoke-static {v4, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual {p1}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FAILED (exception, run skipped) lang="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Speak"

    invoke-virtual {v0, v7, v4}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {p1}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v7, p2}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 420
    iget-object p2, p0, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez p2, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    move-object v2, p2

    :goto_5
    invoke-interface {v2}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-wide v0, p0, Lsweet/tts/Tts;->stopAtMs:J

    const-wide/16 v6, 0x0

    cmp-long p2, v0, v6

    if-lez p2, :cond_f

    .line 421
    iget-wide v0, p0, Lsweet/tts/Tts;->stopAtMs:J

    sub-long v0, v4, v0

    .line 422
    invoke-virtual {p1}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object p1

    .line 423
    iget-wide v6, p0, Lsweet/tts/Tts;->activeRunStartMs:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x64

    cmp-long p2, v0, v6

    if-lez p2, :cond_e

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, " -- SLOW TO STOP (kept playing "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "ms after swipe)"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_e
    const-string p2, ""

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "run ended after stop: voice="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " stopToReturn="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "ms ranTotal="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 422
    invoke-direct {p0, p1}, Lsweet/tts/Tts;->logStop(Ljava/lang/String;)V

    .line 425
    :cond_f
    const-string p1, "none"

    iput-object p1, p0, Lsweet/tts/Tts;->activeRunDesc:Ljava/lang/String;

    return-void
.end method

.method static final speakRun$lambda$18(Lsweet/tts/Tts;)Z
    .locals 0

    .line 391
    iget-object p0, p0, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez p0, :cond_0

    const-string p0, "voice"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result p0

    return p0
.end method

.method private final synthesize(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V
    .locals 46

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    .line 145
    const-string v8, " run(s)"

    const-string v9, "Quick Start Reading: rest of message -> "

    const-string v10, "Quick Start Reading: background classification FAILED, rest of message not spoken"

    const-string v11, "AllInOneTTS"

    .line 0
    const-string v0, "Quick Start Reading: speaking first sentence ("

    const-string v12, "Quick Start Reading: first sentence -> "

    const-string v2, "nfkc="

    const-string v3, "after long-number rewrite: "

    const-string v4, "after OTP rewrite: "

    const-string v5, "after mobile-number reserve: "

    const-string v6, "blank text: done() returned "

    .line 145
    iget-object v13, v1, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    const-string v14, "voice"

    if-nez v13, :cond_0

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_0
    invoke-interface {v13}, Lsweet/tts/VoiceBackend;->beginUtterance()V

    move-object/from16 v16, v14

    .line 146
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 147
    sget-object v17, Lsweet/tts/LangPerf;->INSTANCE:Lsweet/tts/LangPerf;

    invoke-virtual/range {v17 .. v17}, Lsweet/tts/LangPerf;->reset()V

    .line 150
    sget-object v15, Lsweet/tts/PlaySample;->INSTANCE:Lsweet/tts/PlaySample;

    move-object/from16 v18, v8

    invoke-virtual/range {p1 .. p1}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v8

    invoke-virtual {v15, v8}, Lsweet/tts/PlaySample;->setLastCallerRate(I)V

    .line 151
    sget-object v8, Lsweet/tts/PlaySample;->INSTANCE:Lsweet/tts/PlaySample;

    invoke-virtual/range {p1 .. p1}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v15

    invoke-virtual {v8, v15}, Lsweet/tts/PlaySample;->setLastCallerPitch(I)V

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/speech/tts/SynthesisRequest;->getCharSequenceText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    const-string v15, ""

    if-nez v8, :cond_2

    move-object v8, v15

    move-object/from16 v19, v8

    goto :goto_1

    :cond_2
    move-object/from16 v19, v15

    .line 153
    :goto_1
    move-object v15, v8

    check-cast v15, Ljava/lang/CharSequence;

    move-object/from16 v20, v9

    sget-object v9, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v15, v9}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v9

    move-object v15, v10

    move-object/from16 v30, v11

    .line 154
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    move-object/from16 v21, v15

    .line 155
    sget-object v15, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    move-object/from16 v22, v0

    sget-object v0, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v0, v8}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v12

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v24, v3

    const-string v3, "raw: "

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Stage"

    invoke-virtual {v15, v3, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct/range {p0 .. p1}, Lsweet/tts/Tts;->readerOf(Landroid/speech/tts/SynthesisRequest;)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v12, v1, Lsweet/tts/Tts;->lastReader:Ljava/lang/String;

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const-string v15, " + "

    const/16 v25, 0x2b

    move/from16 v26, v12

    const/16 v27, 0x0

    const/4 v12, 0x1

    if-nez v26, :cond_3

    .line 159
    iput-object v0, v1, Lsweet/tts/Tts;->lastReader:Ljava/lang/String;

    .line 160
    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/CharSequence;

    new-array v0, v12, [C

    aput-char v25, v0, v27

    const/16 v35, 0x6

    const/16 v36, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v36}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Iterable;

    move-object/from16 v32, v15

    check-cast v32, Ljava/lang/CharSequence;

    new-instance v37, Lsweet/tts/Tts$$ExternalSyntheticLambda1;

    invoke-direct/range {v37 .. v37}, Lsweet/tts/Tts$$ExternalSyntheticLambda1;-><init>()V

    const/16 v38, 0x1e

    const/16 v39, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v31 .. v39}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    sget-object v12, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    move-object/from16 v28, v15

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v29, v2

    const-string v2, "now "

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v31, v10

    const-string v10, "Reader"

    invoke-virtual {v12, v10, v15}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v11, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object/from16 v29, v2

    move-wide/from16 v31, v10

    move-object/from16 v28, v15

    .line 164
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/speech/tts/SynthesisRequest;->getVoiceName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "-"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " voiceName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v2, v1, Lsweet/tts/Tts;->lastReqKey:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 166
    iput-object v0, v1, Lsweet/tts/Tts;->lastReqKey:Ljava/lang/String;

    .line 167
    sget-object v2, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "request language now "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "Req"

    invoke-virtual {v2, v10, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_4
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    sget-object v2, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v2, v9}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "after NFKC: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_5
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v9

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 177
    invoke-direct/range {p0 .. p1}, Lsweet/tts/Tts;->readerOf(Landroid/speech/tts/SynthesisRequest;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    new-array v11, v1, [C

    aput-char v25, v11, v27

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Iterable;

    move-object/from16 v19, v28

    check-cast v19, Ljava/lang/CharSequence;

    new-instance v24, Lsweet/tts/Tts$$ExternalSyntheticLambda2;

    invoke-direct/range {v24 .. v24}, Lsweet/tts/Tts$$ExternalSyntheticLambda2;-><init>()V

    const/16 v25, 0x1e

    const/16 v26, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v18 .. v26}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/speech/tts/SynthesisRequest;->getParams()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/Iterable;

    const-string v1, ","

    move-object/from16 v19, v1

    check-cast v19, Ljava/lang/CharSequence;

    const/16 v25, 0x3e

    const/16 v26, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v18 .. v26}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    :cond_6
    const/4 v1, 0x0

    .line 179
    :goto_3
    sget-object v2, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    instance-of v4, v7, Lsweet/tts/ProgressCallback;

    if-eqz v4, :cond_7

    move-object v4, v7

    check-cast v4, Lsweet/tts/ProgressCallback;

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lsweet/tts/ProgressCallback;->getRealClass()Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "blank text ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " chars) from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", params=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> done()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Speak"

    invoke-virtual {v2, v1, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_1
    invoke-interface {v7}, Landroid/speech/tts/SynthesisCallback;->done()I

    move-result v0

    .line 182
    sget-object v2, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    .line 184
    sget-object v2, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "blank text: done() threw "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v2, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 193
    :cond_9
    :try_start_2
    sget-object v0, Lsweet/tts/ForegroundApp;->INSTANCE:Lsweet/tts/ForegroundApp;

    invoke-virtual {v1}, Lsweet/tts/Tts;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "getApplicationContext(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lsweet/tts/ForegroundApp;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 200
    sget-object v0, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    invoke-virtual {v0, v9}, Lsweet/tts/NumberProcessing;->reserveMobile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    .line 201
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 202
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    sget-object v12, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v12, v0}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_a
    sget-object v2, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    invoke-virtual {v2, v0, v6}, Lsweet/tts/NumberProcessing;->rewriteOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v12, v6

    .line 206
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 207
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    sget-object v15, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v15, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v25, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move-object/from16 v25, v12

    .line 208
    :goto_6
    sget-object v0, Lsweet/tts/NumberProcessing;->INSTANCE:Lsweet/tts/NumberProcessing;

    invoke-virtual {v0, v2}, Lsweet/tts/NumberProcessing;->rewriteLongNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v33, v5

    .line 209
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 211
    invoke-static {v13, v14, v4, v5}, Lsweet/tts/Tts;->synthesize$ms(JJ)J

    move-result-wide v35

    const-wide/16 v37, 0x3

    cmp-long v6, v35, v37

    if-ltz v6, :cond_c

    sget-object v6, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    const-string v12, "Time"

    move-object v15, v0

    move-object/from16 v28, v3

    move-wide/from16 v0, v31

    move-object/from16 v31, v2

    invoke-static {v13, v14, v0, v1}, Lsweet/tts/Tts;->synthesize$ms(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v10, v11}, Lsweet/tts/Tts;->synthesize$ms(JJ)J

    move-result-wide v0

    invoke-static {v10, v11, v7, v8}, Lsweet/tts/Tts;->synthesize$ms(JJ)J

    move-result-wide v10

    move-wide/from16 v35, v13

    move-wide/from16 v13, v33

    invoke-static {v7, v8, v13, v14}, Lsweet/tts/Tts;->synthesize$ms(JJ)J

    move-result-wide v7

    invoke-static {v13, v14, v4, v5}, Lsweet/tts/Tts;->synthesize$ms(JJ)J

    move-result-wide v13

    move-wide/from16 v32, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v29

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms foregroundApp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms mobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms otp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms longNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v12, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    goto :goto_7

    :cond_c
    move-object/from16 v28, v3

    move-wide/from16 v32, v4

    move-wide/from16 v35, v13

    move-object v15, v0

    move-object v0, v2

    .line 212
    :goto_7
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    sget-object v1, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v1, v15}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v28

    invoke-virtual {v0, v2, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_d
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0}, Lsweet/tts/Prefs;->quickStartReadingEnabled()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    const-string v7, "Tts"

    if-eqz v0, :cond_24

    :try_start_4
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0}, Lsweet/tts/Prefs;->seamlessReadingModeEnabled()Z

    move-result v0

    if-nez v0, :cond_24

    move-object/from16 v1, p0

    .line 224
    invoke-direct {v1, v15}, Lsweet/tts/Tts;->firstSentenceSplit(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 226
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v3, v25

    move-wide/from16 v10, v32

    .line 227
    invoke-static/range {v1 .. v6}, Lsweet/tts/Tts;->buildRuns$default(Lsweet/tts/Tts;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v5, v3

    .line 228
    move-object v3, v4

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    .line 231
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v8, v23

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " run(s), speaking now while the rest classifies in the background"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    sget-object v6, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual {v6, v7, v3}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v3, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    sget-object v6, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v6, v2}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v8, v22

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") while classifying the rest in the background"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v8, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lsweet/tts/Tts$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, v0, v5}, Lsweet/tts/Tts$$ExternalSyntheticLambda3;-><init>(Lsweet/tts/Tts;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 239
    new-instance v0, Ljava/lang/Thread;

    move-object v2, v8

    check-cast v2, Ljava/lang/Runnable;

    const-string v3, "QuickStartClassify"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    new-instance v3, Lsweet/tts/Tts$ChainedCallback;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v12, p2

    :try_start_5
    invoke-direct {v3, v12}, Lsweet/tts/Tts$ChainedCallback;-><init>(Landroid/speech/tts/SynthesisCallback;)V

    .line 242
    new-instance v6, Lsweet/tts/Tts$Handoff;

    invoke-direct {v6}, Lsweet/tts/Tts$Handoff;-><init>()V

    .line 244
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v2, :cond_12

    :try_start_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsweet/tts/Lang$TextRun;

    .line 247
    iget-object v4, v1, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v4, :cond_f

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_f
    invoke-interface {v4}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_8
    const/16 v27, 0x1

    goto :goto_9

    :cond_10
    move-object/from16 v4, p1

    .line 248
    invoke-direct/range {v1 .. v6}, Lsweet/tts/Tts;->speakRun(Lsweet/tts/Lang$TextRun;Lsweet/tts/Tts$ChainedCallback;Landroid/speech/tts/SynthesisRequest;Ljava/lang/String;Lsweet/tts/Tts$Handoff;)V

    .line 250
    iget-object v2, v1, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v2, :cond_11

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_11
    invoke-interface {v2}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v2, :cond_e

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v11, v12

    goto/16 :goto_28

    :cond_12
    :goto_9
    if-nez v27, :cond_1e

    .line 256
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_16

    .line 259
    iget-object v2, v1, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v2, :cond_13

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_13
    invoke-interface {v2}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    const/16 v27, 0x1

    goto :goto_b

    .line 261
    :cond_14
    :try_start_8
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x32

    invoke-virtual {v8, v13, v14, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-object v0, v2

    goto :goto_a

    .line 263
    :catch_1
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    sub-long/2addr v13, v9

    move-object v4, v3

    :try_start_a
    iget-wide v2, v1, Lsweet/tts/Tts;->ABSOLUTE_BACKGROUND_CLASSIFY_TIMEOUT_MS:J

    cmp-long v2, v13, v2

    if-gtz v2, :cond_15

    move-object v3, v4

    goto :goto_a

    .line 264
    :cond_15
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v2, "background classification"

    invoke-direct {v0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_b
    move-object v4, v3

    if-nez v0, :cond_17

    .line 267
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_d

    :cond_17
    :goto_c
    move-object/from16 v13, v30

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v4, v3

    .line 269
    :goto_d
    :try_start_b
    const-string v2, "Quick Start Reading: background classification of the rest of the message failed/timed out"

    .line 270
    check-cast v0, Ljava/lang/Throwable;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    move-object/from16 v13, v30

    .line 269
    :try_start_c
    invoke-static {v13, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    move-object/from16 v15, v21

    invoke-virtual {v0, v7, v15}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v0, v7, v15}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 277
    :goto_e
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 278
    sget-object v2, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v8, v18

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v2, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsweet/tts/Lang$TextRun;

    .line 282
    iget-object v3, v1, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v3, :cond_19

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_19
    invoke-interface {v3}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object v3, v4

    :goto_10
    const/16 v26, 0x1

    goto :goto_11

    :cond_1a
    move-object v3, v4

    move-object/from16 v4, p1

    .line 283
    invoke-direct/range {v1 .. v6}, Lsweet/tts/Tts;->speakRun(Lsweet/tts/Lang$TextRun;Lsweet/tts/Tts$ChainedCallback;Landroid/speech/tts/SynthesisRequest;Ljava/lang/String;Lsweet/tts/Tts$Handoff;)V

    move-object v8, v1

    .line 284
    iget-object v1, v8, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v1, :cond_1b

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1b
    invoke-interface {v1}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_10

    :cond_1c
    move-object v4, v3

    move-object v1, v8

    goto :goto_f

    :cond_1d
    move-object v3, v4

    move/from16 v26, v27

    :goto_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v27, v26

    goto :goto_12

    :cond_1e
    move-object/from16 v13, v30

    const/4 v1, 0x1

    .line 287
    invoke-virtual {v8, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :goto_12
    if-eqz v27, :cond_1f

    goto :goto_14

    .line 291
    :cond_1f
    invoke-virtual {v3}, Lsweet/tts/Tts$ChainedCallback;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {v3}, Lsweet/tts/Tts$ChainedCallback;->getSawDone()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_13

    :cond_20
    invoke-interface {v12}, Landroid/speech/tts/SynthesisCallback;->error()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_14

    :cond_21
    :goto_13
    invoke-interface {v12}, Landroid/speech/tts/SynthesisCallback;->done()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    :goto_14
    return-void

    :catch_4
    move-exception v0

    goto :goto_15

    :cond_22
    move-object/from16 v12, p2

    move-object v8, v1

    move-object/from16 v13, v30

    goto :goto_17

    :cond_23
    move-object/from16 v12, p2

    move-object v8, v1

    goto :goto_16

    :catch_5
    move-exception v0

    move-object/from16 v12, p2

    :goto_15
    move-object/from16 v13, v30

    goto/16 :goto_27

    :cond_24
    move-object/from16 v8, p0

    move-object/from16 v12, p2

    :goto_16
    move-object/from16 v5, v25

    move-object/from16 v13, v30

    move-wide/from16 v10, v32

    .line 299
    :goto_17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 300
    sget-object v2, Lsweet/tts/Lang;->INSTANCE:Lsweet/tts/Lang;

    invoke-virtual {v2, v15}, Lsweet/tts/Lang;->segmentRuns(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 301
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 302
    invoke-direct {v8, v15, v5, v2}, Lsweet/tts/Tts;->buildRuns(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v18, v15

    .line 303
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 308
    sget-object v20, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual/range {v20 .. v20}, Lsweet/tts/Prefs;->seamlessReadingModeEnabled()Z

    move-result v20
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    if-eqz v20, :cond_34

    :try_start_d
    move-object/from16 v20, v6

    check-cast v20, Ljava/util/Collection;

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_34

    .line 309
    move-object/from16 v20, v6

    check-cast v20, Ljava/lang/Iterable;

    .line 707
    new-instance v21, Ljava/util/LinkedHashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v22, v2

    move-object/from16 v2, v21

    check-cast v2, Ljava/util/Map;

    .line 708
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_18
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_26

    move-object/from16 v21, v6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 709
    move-object/from16 v23, v6

    check-cast v23, Lsweet/tts/Lang$TextRun;

    .line 310
    invoke-virtual/range {v23 .. v23}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v12

    .line 711
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-nez v23, :cond_25

    .line 710
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v23

    check-cast v8, Ljava/util/List;

    .line 714
    invoke-interface {v2, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v23, v8

    .line 710
    :cond_25
    move-object/from16 v8, v23

    check-cast v8, Ljava/util/List;

    .line 718
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object/from16 v6, v21

    goto :goto_18

    :cond_26
    move-object/from16 v21, v6

    .line 311
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_27

    move-wide/from16 v29, v14

    const/4 v6, 0x0

    goto/16 :goto_21

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_28

    move-wide/from16 v29, v14

    goto/16 :goto_21

    :cond_28
    move-object v8, v6

    check-cast v8, Ljava/util/Map$Entry;

    .line 691
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 311
    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move/from16 v12, v27

    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    move-object/from16 v23, v2

    const-string v2, "\\s+"

    if-eqz v20, :cond_2c

    :try_start_e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lsweet/tts/Lang$TextRun;

    invoke-virtual/range {v20 .. v20}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object v20

    check-cast v20, Ljava/lang/CharSequence;

    invoke-static/range {v20 .. v20}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v24, v6

    move-object/from16 v6, v20

    check-cast v6, Ljava/lang/CharSequence;

    move-object/from16 v20, v8

    new-instance v8, Lkotlin/text/Regex;

    invoke-direct {v8, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move/from16 v2, v27

    invoke-virtual {v8, v6, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 721
    instance-of v2, v6, Ljava/util/Collection;

    if-eqz v2, :cond_29

    move-object v2, v6

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x0

    goto :goto_1b

    .line 723
    :cond_29
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :cond_2a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 311
    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_2a

    add-int/lit8 v6, v6, 0x1

    if-gez v6, :cond_2a

    .line 723
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_1a

    :cond_2b
    move v2, v6

    :goto_1b
    add-int/2addr v12, v2

    move-object/from16 v8, v20

    move-object/from16 v2, v23

    move-object/from16 v6, v24

    const/16 v27, 0x0

    goto :goto_19

    :cond_2c
    move-object/from16 v24, v6

    .line 311
    :goto_1c
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v20, v8

    check-cast v20, Ljava/util/Map$Entry;

    .line 691
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 311
    check-cast v20, Ljava/lang/Iterable;

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v24, v6

    const/4 v6, 0x0

    :goto_1d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_30

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lsweet/tts/Lang$TextRun;

    invoke-virtual/range {v25 .. v25}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object v25

    check-cast v25, Ljava/lang/CharSequence;

    invoke-static/range {v25 .. v25}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v28, v8

    move-object/from16 v8, v25

    check-cast v8, Ljava/lang/CharSequence;

    move-wide/from16 v29, v14

    new-instance v14, Lkotlin/text/Regex;

    invoke-direct {v14, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v14, v8, v15}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 721
    instance-of v14, v8, Ljava/util/Collection;

    if-eqz v14, :cond_2d

    move-object v14, v8

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2d

    move v14, v15

    goto :goto_1f

    .line 723
    :cond_2d
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v14, v15

    :cond_2e
    :goto_1e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 311
    check-cast v25, Ljava/lang/CharSequence;

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    move-result v25

    if-lez v25, :cond_2e

    add-int/lit8 v14, v14, 0x1

    if-gez v14, :cond_2e

    .line 723
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_1e

    :cond_2f
    :goto_1f
    add-int/2addr v6, v14

    move-object/from16 v8, v28

    move-wide/from16 v14, v29

    goto :goto_1d

    :cond_30
    move-object/from16 v28, v8

    move-wide/from16 v29, v14

    const/4 v15, 0x0

    if-ge v12, v6, :cond_31

    move v12, v6

    move-object/from16 v6, v28

    goto :goto_20

    :cond_31
    move-object/from16 v6, v24

    .line 311
    :goto_20
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_33

    :goto_21
    check-cast v6, Ljava/util/Map$Entry;

    if-eqz v6, :cond_32

    .line 312
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_32

    goto :goto_22

    :cond_32
    invoke-static/range {v21 .. v21}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsweet/tts/Lang$TextRun;

    invoke-virtual {v2}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v2

    .line 313
    :goto_22
    new-instance v6, Lsweet/tts/Lang$TextRun;

    move-object/from16 v37, v21

    check-cast v37, Ljava/lang/Iterable;

    move-object/from16 v38, v19

    check-cast v38, Ljava/lang/CharSequence;

    new-instance v43, Lsweet/tts/Tts$$ExternalSyntheticLambda4;

    invoke-direct/range {v43 .. v43}, Lsweet/tts/Tts$$ExternalSyntheticLambda4;-><init>()V

    const/16 v44, 0x1e

    const/16 v45, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-static/range {v37 .. v45}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v2}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_23

    :cond_33
    move-wide/from16 v14, v29

    goto/16 :goto_1c

    :catch_6
    move-exception v0

    move-object/from16 v11, p2

    goto/16 :goto_29

    :cond_34
    move-object/from16 v22, v2

    move-object/from16 v21, v6

    move-wide/from16 v29, v14

    move-object/from16 v6, v21

    .line 315
    :goto_23
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sget-object v12, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v12, v9}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v15

    .line 317
    sget-object v20, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual/range {v20 .. v20}, Lsweet/tts/Prefs;->seamlessReadingModeEnabled()Z

    move-result v20

    if-eqz v20, :cond_35

    const-string v19, " [Seamless Reading Mode]"

    :cond_35
    move-object/from16 v20, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v21, v0

    const-string v0, "Segmented into "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " run(s), merged to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callerRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callerPitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v1, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    invoke-virtual {v1, v7, v0}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v1, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v1, v7, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    move-object/from16 v37, v20

    check-cast v37, Ljava/lang/Iterable;

    const-string v1, " | "

    move-object/from16 v38, v1

    check-cast v38, Ljava/lang/CharSequence;

    new-instance v43, Lsweet/tts/Tts$$ExternalSyntheticLambda5;

    invoke-direct/range {v43 .. v43}, Lsweet/tts/Tts$$ExternalSyntheticLambda5;-><init>()V

    const/16 v44, 0x1e

    const/16 v45, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-static/range {v37 .. v45}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runs="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v0, v35

    .line 326
    invoke-static {v0, v1, v10, v11}, Lsweet/tts/Tts;->synthesize$ms(JJ)J

    move-result-wide v6

    move-wide/from16 v8, v21

    .line 327
    invoke-static {v8, v9, v3, v4}, Lsweet/tts/Tts;->synthesize$ms(JJ)J

    move-result-wide v8

    move-wide/from16 v10, v29

    .line 328
    invoke-static {v3, v4, v10, v11}, Lsweet/tts/Tts;->synthesize$ms(JJ)J

    move-result-wide v22

    .line 339
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_3e

    .line 340
    invoke-static/range {v20 .. v20}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsweet/tts/Lang$TextRun;

    move-object/from16 v12, p0

    .line 341
    iget-object v3, v12, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v3, :cond_36

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_36
    invoke-interface {v3}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result v3

    if-eqz v3, :cond_37

    const-string v2, "single run skipped, stop arrived before speaking"

    invoke-direct {v12, v2}, Lsweet/tts/Tts;->logStop(Ljava/lang/String;)V

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-wide/from16 v26, v0

    move-wide/from16 v24, v10

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-static/range {v16 .. v29}, Lsweet/tts/Tts;->synthesize$logPerf(Ljava/lang/String;Ljava/util/List;JJJJJLsweet/tts/Tts$ChainedCallback;Z)V

    return-void

    :cond_37
    move-wide/from16 v26, v0

    move-wide/from16 v24, v10

    move-wide v9, v8

    move-wide v7, v6

    .line 342
    iget-object v0, v12, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v0, :cond_38

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_38
    if-eqz v2, :cond_39

    invoke-virtual {v2}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3a

    :cond_39
    move-object/from16 v1, v18

    :cond_3a
    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3c

    :cond_3b
    const-string v2, "en"

    :cond_3c
    invoke-virtual/range {p1 .. p1}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v4

    move-object v3, v5

    invoke-virtual/range {p1 .. p1}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    move-object v6, v3

    move-object/from16 v3, p2

    :try_start_f
    invoke-interface/range {v0 .. v6}, Lsweet/tts/VoiceBackend;->speak(Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    move-object v11, v3

    .line 343
    :try_start_10
    iget-object v0, v12, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v0, :cond_3d

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v15, 0x0

    goto :goto_24

    :cond_3d
    move-object v15, v0

    :goto_24
    invoke-interface {v15}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result v29

    const/16 v28, 0x0

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-static/range {v16 .. v29}, Lsweet/tts/Tts;->synthesize$logPerf(Ljava/lang/String;Ljava/util/List;JJJJJLsweet/tts/Tts$ChainedCallback;Z)V

    return-void

    :catch_7
    move-exception v0

    move-object v11, v3

    goto/16 :goto_29

    :cond_3e
    move-object/from16 v12, p0

    move-wide/from16 v26, v0

    move-wide/from16 v24, v10

    move-object/from16 v11, p2

    move-wide v9, v8

    move-wide v7, v6

    .line 350
    new-instance v3, Lsweet/tts/Tts$ChainedCallback;

    invoke-direct {v3, v11}, Lsweet/tts/Tts$ChainedCallback;-><init>(Landroid/speech/tts/SynthesisCallback;)V

    .line 351
    new-instance v6, Lsweet/tts/Tts$Handoff;

    invoke-direct {v6}, Lsweet/tts/Tts$Handoff;-><init>()V

    .line 352
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lsweet/tts/Lang$TextRun;

    .line 356
    iget-object v1, v12, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v1, :cond_3f

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_3f
    invoke-interface {v1}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result v1

    if-eqz v1, :cond_40

    const/16 v29, 0x1

    move-object/from16 v28, v3

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-static/range {v16 .. v29}, Lsweet/tts/Tts;->synthesize$logPerf(Ljava/lang/String;Ljava/util/List;JJJJJLsweet/tts/Tts$ChainedCallback;Z)V

    return-void

    :cond_40
    move-object/from16 v4, p1

    move-object v1, v12

    .line 357
    invoke-direct/range {v1 .. v6}, Lsweet/tts/Tts;->speakRun(Lsweet/tts/Lang$TextRun;Lsweet/tts/Tts$ChainedCallback;Landroid/speech/tts/SynthesisRequest;Ljava/lang/String;Lsweet/tts/Tts$Handoff;)V

    move-object/from16 v28, v3

    .line 359
    iget-object v2, v1, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v2, :cond_41

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_41
    invoke-interface {v2}, Lsweet/tts/VoiceBackend;->wasStopped()Z

    move-result v2

    if-eqz v2, :cond_42

    const/16 v29, 0x1

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-static/range {v16 .. v29}, Lsweet/tts/Tts;->synthesize$logPerf(Ljava/lang/String;Ljava/util/List;JJJJJLsweet/tts/Tts$ChainedCallback;Z)V

    return-void

    :cond_42
    move-object v12, v1

    move-object/from16 v3, v28

    goto :goto_25

    :cond_43
    move-object/from16 v28, v3

    const/16 v29, 0x0

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    .line 362
    invoke-static/range {v16 .. v29}, Lsweet/tts/Tts;->synthesize$logPerf(Ljava/lang/String;Ljava/util/List;JJJJJLsweet/tts/Tts$ChainedCallback;Z)V

    .line 363
    invoke-virtual/range {v28 .. v28}, Lsweet/tts/Tts$ChainedCallback;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual/range {v28 .. v28}, Lsweet/tts/Tts$ChainedCallback;->getSawDone()Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_26

    :cond_44
    invoke-interface {v11}, Landroid/speech/tts/SynthesisCallback;->error()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-void

    :cond_45
    :goto_26
    invoke-interface {v11}, Landroid/speech/tts/SynthesisCallback;->done()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    return-void

    :catch_8
    move-exception v0

    goto :goto_29

    :catch_9
    move-exception v0

    :goto_27
    move-object v11, v12

    goto :goto_29

    :catch_a
    move-exception v0

    move-object/from16 v11, p2

    goto :goto_28

    :catch_b
    move-exception v0

    move-object v11, v7

    :goto_28
    move-object/from16 v13, v30

    .line 365
    :goto_29
    const-string v1, "Synthesis failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x3

    .line 366
    invoke-interface {v11, v0}, Landroid/speech/tts/SynthesisCallback;->error(I)V

    return-void
.end method

.method static final synthesize$lambda$10(Lsweet/tts/Tts;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 238
    invoke-static/range {v0 .. v5}, Lsweet/tts/Tts;->buildRuns$default(Lsweet/tts/Tts;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static final synthesize$lambda$15(Lsweet/tts/Lang$TextRun;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method static final synthesize$lambda$16(Lsweet/tts/Lang$TextRun;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {p0}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method static final synthesize$lambda$8(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-static {p0}, Lsweet/tts/LoggingKt;->readerLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method static final synthesize$lambda$9(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-static {p0}, Lsweet/tts/LoggingKt;->readerLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final synthesize$logPerf(Ljava/lang/String;Ljava/util/List;JJJJJLsweet/tts/Tts$ChainedCallback;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lsweet/tts/Lang$TextRun;",
            ">;JJJJJ",
            "Lsweet/tts/Tts$ChainedCallback;",
            "Z)V"
        }
    .end annotation

    move-wide/from16 v0, p10

    .line 330
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    if-eqz p12, :cond_1

    .line 331
    invoke-virtual/range {p12 .. p12}, Lsweet/tts/Tts$ChainedCallback;->getFirstStartAtNs()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    invoke-static {v0, v1, v4, v5}, Lsweet/tts/Tts;->synthesize$ms(JJ)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "n/a"

    :goto_0
    if-nez v4, :cond_2

    :cond_1
    const-string v4, "n/a(single run)"

    .line 332
    :cond_2
    sget-object v5, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v5}, Lsweet/tts/DetailedLog;->getActive()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "ON"

    goto :goto_1

    :cond_3
    const-string v5, "OFF"

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move-wide/from16 v6, p8

    .line 333
    invoke-static {v6, v7, v2, v3}, Lsweet/tts/Tts;->synthesize$ms(JJ)J

    move-result-wide v6

    .line 334
    invoke-static {v0, v1, v2, v3}, Lsweet/tts/Tts;->synthesize$ms(JJ)J

    move-result-wide v0

    sget-object v2, Lsweet/tts/LangPerf;->INSTANCE:Lsweet/tts/LangPerf;

    invoke-virtual {v2}, Lsweet/tts/LangPerf;->summary()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "detailedLog="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " chars="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " runs="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " prep="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "ms segment="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "ms buildRuns="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-wide p1, p6

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "ms toFirstAudio="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " speak="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "ms total="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "ms stopped="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move/from16 p1, p13

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 335
    sget-object p1, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    const-string p2, "Perf"

    invoke-virtual {p1, p2, p0}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object p1, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {p1, p2, p0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final synthesize$ms(JJ)J
    .locals 0

    sub-long/2addr p2, p0

    const-wide/32 p0, 0xf4240

    .line 210
    div-long/2addr p2, p0

    return-wide p2
.end method


# virtual methods
.method public onCreate()V
    .locals 8

    .line 50
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService;->onCreate()V

    .line 53
    sget-object v0, Lsweet/tts/RoutingVoiceBackend;->Companion:Lsweet/tts/RoutingVoiceBackend$Companion;

    invoke-virtual {v0}, Lsweet/tts/RoutingVoiceBackend$Companion;->exists()Z

    move-result v0

    .line 54
    sget-object v1, Lsweet/tts/RoutingVoiceBackend;->Companion:Lsweet/tts/RoutingVoiceBackend$Companion;

    invoke-virtual {p0}, Lsweet/tts/Tts;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getApplicationContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lsweet/tts/RoutingVoiceBackend$Companion;->shared(Landroid/content/Context;)Lsweet/tts/RoutingVoiceBackend;

    move-result-object v1

    check-cast v1, Lsweet/tts/VoiceBackend;

    iput-object v1, p0, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    .line 55
    sget-object v1, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    sget v2, Lsweet/tts/Tts;->serviceCreations:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lsweet/tts/Tts;->serviceCreations:I

    sget v2, Lsweet/tts/Tts;->serviceCreations:I

    const-string v4, "new"

    if-eqz v0, :cond_0

    const-string v5, "reused, nothing initialised again"

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "speech service created (n="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "), backend "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Life"

    invoke-virtual {v1, v5, v2}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v1, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eqz v0, :cond_1

    const-string v4, "reused"

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "service created, pid="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", backend "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lsweet/tts/KeepRunning;->INSTANCE:Lsweet/tts/KeepRunning;

    move-object v1, p0

    check-cast v1, Landroid/app/Service;

    invoke-virtual {v0, v1}, Lsweet/tts/KeepRunning;->onServiceCreated(Landroid/app/Service;)V

    .line 59
    invoke-virtual {p0}, Lsweet/tts/Tts;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 60
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lsweet/tts/Tts$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lsweet/tts/Tts$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "lid-preload"

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 22
    :try_start_0
    iget-object v0, p0, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v0, :cond_0

    const-string v0, "voice"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lsweet/tts/VoiceBackend;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :catchall_0
    sget-object v0, Lsweet/tts/KeepRunning;->INSTANCE:Lsweet/tts/KeepRunning;

    move-object v1, p0

    check-cast v1, Landroid/app/Service;

    invoke-virtual {v0, v1}, Lsweet/tts/KeepRunning;->onServiceDestroyed(Landroid/app/Service;)V

    .line 24
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    const-string v1, "speech service destroyed, backend kept for the next client"

    const-string v2, "Life"

    invoke-virtual {v0, v2, v1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    const-string v1, "service destroyed, backend kept"

    invoke-virtual {v0, v2, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService;->onDestroy()V

    return-void
.end method

.method public onGetDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 83
    const-string p0, "aiotts-hi"

    return-object p0
.end method

.method protected onGetLanguage()[Ljava/lang/String;
    .locals 2

    const/4 p0, 0x3

    .line 66
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "hin"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "IND"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v1, ""

    aput-object v1, p0, v0

    return-object p0
.end method

.method public onGetVoices()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lsweet/tts/Tts;->supported:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 692
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 693
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 694
    check-cast v2, Ljava/lang/String;

    .line 73
    new-instance v3, Landroid/speech/tts/Voice;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "aiotts-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2}, Lsweet/tts/Tts;->localeFor(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v9, v2

    check-cast v9, Ljava/util/Set;

    const/16 v6, 0x12c

    const/16 v7, 0x12c

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/speech/tts/Voice;-><init>(Ljava/lang/String;Ljava/util/Locale;IIZLjava/util/Set;)V

    .line 694
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 695
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 692
    check-cast v1, Ljava/util/Collection;

    .line 74
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onIsValidVoiceName(Ljava/lang/String;)I
    .locals 3

    .line 77
    iget-object p0, p0, Lsweet/tts/Tts;->supported:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 696
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 697
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aiotts-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method protected onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLoadVoice(Ljava/lang/String;)I
    .locals 3

    .line 80
    iget-object p0, p0, Lsweet/tts/Tts;->supported:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 699
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 700
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aiotts-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method protected onStop()V
    .locals 10

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    iput-wide v0, p0, Lsweet/tts/Tts;->stopAtMs:J

    .line 101
    iget-object v2, p0, Lsweet/tts/Tts;->activeRunDesc:Ljava/lang/String;

    .line 102
    const-string v3, "none"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    move-wide v6, v4

    goto :goto_0

    :cond_0
    iget-wide v6, p0, Lsweet/tts/Tts;->activeRunStartMs:J

    sub-long v6, v0, v6

    .line 103
    :goto_0
    sget-object v3, Lsweet/tts/StopClock;->INSTANCE:Lsweet/tts/StopClock;

    invoke-virtual {v3}, Lsweet/tts/StopClock;->sinceFailMs()J

    move-result-wide v8

    .line 104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    cmp-long v4, v4, v8

    if-gtz v4, :cond_1

    const-wide/16 v4, 0x12d

    cmp-long v4, v8, v4

    if-gez v4, :cond_1

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " afterFailMs="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "onStop received; active run="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ranMs="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " thread="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-direct {p0, v2}, Lsweet/tts/Tts;->logStop(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lsweet/tts/Tts;->voice:Lsweet/tts/VoiceBackend;

    if-nez v2, :cond_2

    const-string v2, "voice"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    invoke-interface {v2}, Lsweet/tts/VoiceBackend;->stop()V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x14

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "voice.stop() returned after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms -- SLOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsweet/tts/Tts;->logStop(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 112
    const-string v2, "getStackTrace(...)"

    const-string v3, "Crash"

    .line 0
    const-string v4, "caught in onSynthesizeText, this message skipped: "

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 113
    :cond_0
    sget-object v5, Lsweet/tts/StallWatch;->INSTANCE:Lsweet/tts/StallWatch;

    invoke-virtual {v5}, Lsweet/tts/StallWatch;->begin()V

    .line 114
    new-instance v5, Lsweet/tts/ProgressCallback;

    invoke-direct {v5, v1}, Lsweet/tts/ProgressCallback;-><init>(Landroid/speech/tts/SynthesisCallback;)V

    .line 116
    :try_start_0
    move-object v1, v5

    check-cast v1, Landroid/speech/tts/SynthesisCallback;

    invoke-direct {p0, v0, v1}, Lsweet/tts/Tts;->synthesize(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    :catchall_0
    :cond_1
    :goto_0
    sget-object p0, Lsweet/tts/StallWatch;->INSTANCE:Lsweet/tts/StallWatch;

    invoke-virtual {p0}, Lsweet/tts/StallWatch;->end()V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 120
    :try_start_1
    instance-of v0, p0, Ljava/lang/OutOfMemoryError;

    if-nez v0, :cond_4

    .line 121
    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 122
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->take([Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    const-string v0, " <- "

    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    new-instance v12, Lsweet/tts/Tts$$ExternalSyntheticLambda7;

    invoke-direct {v12}, Lsweet/tts/Tts$$ExternalSyntheticLambda7;-><init>()V

    const/16 v13, 0x1e

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    sget-object v1, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Object;

    const/16 v0, 0x28

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt;->take([Ljava/lang/Object;I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 702
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackTraceElement;

    .line 125
    sget-object v1, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    :cond_3
    const/4 p0, -0x3

    .line 126
    :try_start_2
    invoke-virtual {v5, p0}, Lsweet/tts/ProgressCallback;->error(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 127
    :catchall_2
    :try_start_3
    invoke-virtual {v5}, Lsweet/tts/ProgressCallback;->hasFinished()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v5}, Lsweet/tts/ProgressCallback;->done()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 120
    :cond_4
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object p0, v0

    .line 129
    sget-object v0, Lsweet/tts/StallWatch;->INSTANCE:Lsweet/tts/StallWatch;

    invoke-virtual {v0}, Lsweet/tts/StallWatch;->end()V

    throw p0

    :cond_5
    :goto_2
    return-void
.end method
