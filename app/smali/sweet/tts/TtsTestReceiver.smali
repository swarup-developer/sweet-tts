.class public final Lsweet/tts/TtsTestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TtsTestReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTtsTestReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TtsTestReceiver.kt\nsweet/tts/TtsTestReceiver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,255:1\n1#2:256\n774#3:257\n865#3,2:258\n1056#3:260\n*S KotlinDebug\n*F\n+ 1 TtsTestReceiver.kt\nsweet/tts/TtsTestReceiver\n*L\n142#1:257\n142#1:258,2\n236#1:260\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J:\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\rH\u0002J\u0018\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\rH\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "Lsweet/tts/TtsTestReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "renderToFile",
        "appContext",
        "text",
        "",
        "name",
        "ratePercent",
        "",
        "engine",
        "lang",
        "listVoices",
        "enginePackage",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final listVoices(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 229
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 230
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-direct {v0, p0, v1, p2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method static final listVoices$lambda$7(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;I)V
    .locals 9

    .line 231
    const-string v0, "TTS_TEST"

    if-eqz p2, :cond_0

    .line 232
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "LIST_VOICES init FAILED engine="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    return-void

    .line 236
    :cond_0
    iget-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p2

    :cond_2
    check-cast p2, Ljava/lang/Iterable;

    .line 260
    new-instance v2, Lsweet/tts/TtsTestReceiver$listVoices$lambda$7$$inlined$sortedBy$1;

    invoke-direct {v2}, Lsweet/tts/TtsTestReceiver$listVoices$lambda$7$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p2

    .line 237
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LIST_VOICES engine="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " count="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/speech/tts/Voice;

    .line 239
    invoke-virtual {p2}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p2}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v4

    invoke-virtual {p2}, Landroid/speech/tts/Voice;->getLatency()I

    move-result v5

    invoke-virtual {p2}, Landroid/speech/tts/Voice;->isNetworkConnectionRequired()Z

    move-result v6

    invoke-virtual {p2}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object p2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "VOICE locale="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " name="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " quality="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " latency="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " network="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " features="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    :cond_3
    :try_start_0
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getDefaultVoice()Landroid/speech/tts/Voice;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    move-object p0, v1

    :goto_2
    iget-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroid/speech/tts/TextToSpeech;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeech;->getDefaultVoice()Landroid/speech/tts/Voice;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, v1

    :goto_3
    iget-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getAvailableLanguages()Ljava/util/Set;

    move-result-object v2

    goto :goto_4

    :cond_6
    move-object v2, v1

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LIST_VOICES defaultVoice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " ("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ") availableLanguages="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    .line 244
    new-array p0, p0, [Ljava/lang/String;

    const-string p2, "en-US"

    const/4 v2, 0x0

    aput-object p2, p0, v2

    const-string p2, "en-GB"

    const/4 v2, 0x1

    aput-object p2, p0, v2

    const-string p2, "en-IN"

    const/4 v2, 0x2

    aput-object p2, p0, v2

    const-string p2, "hi-IN"

    const/4 v2, 0x3

    aput-object p2, p0, v2

    const-string p2, "hi"

    const/4 v2, 0x4

    aput-object p2, p0, v2

    const-string p2, "ur-IN"

    const/4 v2, 0x5

    aput-object p2, p0, v2

    const-string p2, "ur-PK"

    const/4 v2, 0x6

    aput-object p2, p0, v2

    const-string p2, "ur"

    const/4 v2, 0x7

    aput-object p2, p0, v2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 245
    invoke-static {p2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 246
    iget-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/speech/tts/TextToSpeech;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_6

    :cond_7
    move-object v2, v1

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LIST_VOICES isLanguageAvailable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, " = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 249
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "LIST_VOICES extra queries failed: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_8
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_9
    return-void
.end method

.method static final onReceive$lambda$2(Lcom/nuance/android/vocalizer/VocalizerVoice;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object p0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method static final onReceive$lambda$3(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/content/Intent;I)V
    .locals 11

    .line 170
    const-string v0, "\""

    const-string v1, " text=\""

    const-string v2, "TTS_TEST"

    if-eqz p6, :cond_0

    .line 171
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "init FAILED engine="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    return-void

    .line 175
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "test_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    iget-object v4, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    new-instance v5, Lsweet/tts/TtsTestReceiver$onReceive$5$1;

    move-object v6, p0

    move-object v9, p1

    move-object v10, p2

    move-wide v7, p3

    invoke-direct/range {v5 .. v10}, Lsweet/tts/TtsTestReceiver$onReceive$5$1;-><init>(Ljava/lang/String;JLjava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v5, Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 195
    :cond_1
    const-string p3, "rate"

    const/16 p4, 0x64

    move-object/from16 v4, p5

    invoke-virtual {v4, p3, p4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    .line 196
    iget-object p4, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p4, Landroid/speech/tts/TextToSpeech;

    if-eqz p4, :cond_2

    int-to-float v4, p3

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-virtual {p4, v4}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 197
    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v4, "REQUEST engine="

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p4, " rate="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_3

    check-cast p1, Ljava/lang/CharSequence;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private final renderToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 203
    move-object p0, p2

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "TTS_TEST"

    const-string p1, "RENDER no text"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 204
    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 205
    new-instance p0, Landroid/speech/tts/TextToSpeech;

    new-instance v0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda3;

    move-object v5, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method static final renderToFile$lambda$5(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 206
    const-string v0, "TTS_TEST"

    if-eqz p5, :cond_0

    const-string p1, "RENDER init FAILED"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    return-void

    .line 207
    :cond_0
    new-instance p5, Ljava/io/File;

    sget-object v1, Lsweet/tts/ImportExport;->INSTANCE:Lsweet/tts/ImportExport;

    invoke-virtual {v1}, Lsweet/tts/ImportExport;->folder$app()Ljava/io/File;

    move-result-object v1

    const-string v2, "render"

    invoke-direct {p5, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->mkdirs()Z

    .line 208
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".wav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    iget-object p5, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p5, Landroid/speech/tts/TextToSpeech;

    if-eqz p5, :cond_1

    int-to-float p2, p2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p2, v2

    invoke-virtual {p5, p2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    :cond_1
    if-eqz p3, :cond_2

    .line 210
    iget-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroid/speech/tts/TextToSpeech;

    if-eqz p2, :cond_2

    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 211
    :cond_2
    iget-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroid/speech/tts/TextToSpeech;

    if-eqz p2, :cond_3

    new-instance p3, Lsweet/tts/TtsTestReceiver$renderToFile$1$1;

    invoke-direct {p3, p1, v1, p0}, Lsweet/tts/TtsTestReceiver$renderToFile$1$1;-><init>(Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast p3, Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {p2, p3}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 216
    :cond_3
    iget-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroid/speech/tts/TextToSpeech;

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    check-cast p4, Ljava/lang/CharSequence;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v2, "render_"

    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p3, v1, p1}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_4
    if-nez p3, :cond_5

    goto :goto_0

    .line 217
    :cond_5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_6

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RENDER synthesizeToFile rc="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/speech/tts/TextToSpeech;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intent"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sweet.tts.TEST_LIST_VOICES"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "engine"

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v6, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.tts"

    :cond_0
    invoke-direct {p0, v0, v1}, Lsweet/tts/TtsTestReceiver;->listVoices(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 27
    :cond_1
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "sweet.tts.TEST_SHAKE"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    sget-object v0, Lsweet/tts/OtpRepeat;->INSTANCE:Lsweet/tts/OtpRepeat;

    invoke-virtual {v0}, Lsweet/tts/OtpRepeat;->onShakeDetected()V

    return-void

    .line 33
    :cond_2
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "sweet.tts.TEST_DETAILED_LOG"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 37
    const-string v0, "state"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x360802

    if-eq v1, v2, :cond_4

    const v2, 0x68ac462

    if-eq v1, v2, :cond_3

    goto/16 :goto_5

    :cond_3
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 38
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v0}, Lsweet/tts/DetailedLog;->start()V

    return-void

    .line 37
    :cond_4
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_5

    .line 39
    :cond_5
    sget-object v0, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v0}, Lsweet/tts/DetailedLog;->stop()V

    return-void

    .line 43
    :cond_6
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "sweet.tts.TEST_SET_VOICE"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "lang"

    const-string v5, "TTS_TEST"

    if-eqz v1, :cond_8

    .line 48
    invoke-virtual {v6, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, "voice"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 51
    sget-object v2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v2, v0, v1}, Lsweet/tts/Prefs;->setVoiceFor(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TEST_SET_VOICE lang="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " voice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_7
    const-string v0, "TEST_SET_VOICE missing lang/voice extra"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_8
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v7, "sweet.tts.TEST_SET_PUNCT"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 60
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    const-string v1, "level"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "none"

    :cond_9
    invoke-virtual {v0, v1}, Lsweet/tts/Prefs;->setPunctuationLevel(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_a
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v7, "sweet.tts.TEST_LOG_TEXT"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "on"

    const-string v8, "getApplicationContext(...)"

    const/4 v9, 0x0

    if-eqz v1, :cond_b

    .line 68
    sget-object v1, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsweet/tts/LogText;->setDebugOn(Landroid/content/Context;Z)V

    return-void

    .line 71
    :cond_b
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v10, "sweet.tts.TEST_RENDER"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v10, "sweet.tts"

    const-string v11, "text"

    if-eqz v1, :cond_f

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, ""

    .line 77
    :cond_c
    const-string v1, "name"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    const-string v1, "render"

    :cond_d
    move-object v5, v1

    const-string v1, "rate"

    const/16 v7, 0x64

    invoke-virtual {v6, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 78
    invoke-virtual {v6, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    move-object v7, v10

    goto :goto_0

    :cond_e
    move-object v7, v2

    :goto_0
    invoke-virtual {v6, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v4, v0

    move v6, v1

    .line 76
    invoke-direct/range {v2 .. v8}, Lsweet/tts/TtsTestReceiver;->renderToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_f
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sweet.tts.TEST_BREAKER"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 83
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    const-string v1, "off"

    invoke-virtual {v6, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lsweet/tts/Prefs;->setDebugNoBreaker(Z)V

    return-void

    .line 86
    :cond_10
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sweet.tts.TEST_STALE_ABORT"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "no Vocalizer backend yet"

    if-eqz v1, :cond_13

    .line 90
    sget-object v0, Lsweet/tts/VocalizerVoiceBackend;->Companion:Lsweet/tts/VocalizerVoiceBackend$Companion;

    invoke-virtual {v0}, Lsweet/tts/VocalizerVoiceBackend$Companion;->getInstance()Lsweet/tts/VocalizerVoiceBackend;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lsweet/tts/VocalizerVoiceBackend;->debugBreak()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_1

    :cond_11
    move-object v3, v0

    .line 91
    :cond_12
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TEST_STALE_ABORT: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 94
    :cond_13
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v8, "sweet.tts.TEST_RECOVER"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x1

    if-eqz v1, :cond_16

    .line 96
    sget-object v0, Lsweet/tts/VocalizerVoiceBackend;->Companion:Lsweet/tts/VocalizerVoiceBackend$Companion;

    invoke-virtual {v0}, Lsweet/tts/VocalizerVoiceBackend$Companion;->getInstance()Lsweet/tts/VocalizerVoiceBackend;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "step"

    invoke-virtual {v6, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsweet/tts/VocalizerVoiceBackend;->debugRecover(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_2

    :cond_14
    move-object v3, v0

    .line 97
    :cond_15
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TEST_RECOVER: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_16
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v12, "sweet.tts.TEST_FAST_STOP"

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 102
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    const-wide/16 v1, 0x0

    goto :goto_3

    :cond_17
    const-wide v1, 0x7fffffffffffffffL

    :goto_3
    invoke-virtual {v0, v1, v2}, Lsweet/tts/Prefs;->setEloqFastStopOffUntil(J)V

    .line 103
    sget-object v0, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v0}, Lsweet/tts/EloquenceHub;->fastStopAllowed()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TEST_FAST_STOP on="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_18
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v7, "sweet.tts.TEST_FAIL_LOAD"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 109
    sget-object v0, Lsweet/tts/VocalizerVoiceBackend;->Companion:Lsweet/tts/VocalizerVoiceBackend$Companion;

    invoke-virtual {v0}, Lsweet/tts/VocalizerVoiceBackend$Companion;->getInstance()Lsweet/tts/VocalizerVoiceBackend;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 110
    const-string v1, "count"

    const/4 v2, 0x3

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsweet/tts/VocalizerVoiceBackend;->setDebugFailLoads(I)V

    :cond_19
    if-nez v0, :cond_1a

    goto :goto_4

    .line 111
    :cond_1a
    invoke-virtual {v0}, Lsweet/tts/VocalizerVoiceBackend;->getDebugFailLoads()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "next "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loads fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TEST_FAIL_LOAD: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_1b
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v7, "sweet.tts.TEST_ABORT_ENGINE"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 118
    :try_start_0
    sget-object v0, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {v0}, Lsweet/tts/EloquenceHub;->engine()Lorg/eloqium/tts/engine/EloqiumEngine;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lorg/eloqium/tts/engine/EloqiumEngine;->emergencyStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1c
    :goto_5
    return-void

    .line 121
    :cond_1d
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v7, "sweet.tts.TEST_SET_RATE_CAP"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 127
    const-string v0, "cap"

    const/16 v1, 0xc8

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 128
    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1, v0}, Lsweet/tts/Prefs;->setVocalizerRateCap(I)V

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TEST_SET_RATE_CAP cap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_1e
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v7, "sweet.tts.TEST_EXTERNAL"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 136
    const-string v0, "skip"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1, v0}, Lsweet/tts/Prefs;->setDebugSkipInternal(Ljava/lang/String;)V

    .line 137
    :cond_1f
    const-string v0, "rebuild"

    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_22

    .line 138
    sget-object v0, Lsweet/tts/VocalizerVoiceBackend;->Companion:Lsweet/tts/VocalizerVoiceBackend$Companion;

    invoke-virtual {v0}, Lsweet/tts/VocalizerVoiceBackend$Companion;->getInstance()Lsweet/tts/VocalizerVoiceBackend;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0, v1}, Lsweet/tts/VocalizerVoiceBackend;->debugRecover(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_6

    :cond_20
    move-object v3, v0

    .line 139
    :cond_21
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TEST_EXTERNAL rebuild: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_22
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0}, Lsweet/tts/Prefs;->debugSkipInternal()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lsweet/tts/ExternalVoices;->INSTANCE:Lsweet/tts/ExternalVoices;

    invoke-virtual {v2}, Lsweet/tts/ExternalVoices;->getLastScan()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TEST_EXTERNAL skip=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v0}, Lsweet/tts/VoiceCatalog;->getVoices()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 257
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 258
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 142
    iget-object v4, v4, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    const-string v6, "Google "

    const/4 v7, 0x0

    invoke-static {v4, v6, v9, v1, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 258
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 259
    :cond_24
    check-cast v2, Ljava/util/List;

    .line 257
    move-object v6, v2

    check-cast v6, Ljava/lang/Iterable;

    .line 142
    new-instance v12, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda1;-><init>()V

    const/16 v13, 0x1f

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TEST_EXTERNAL Vocalizer voices: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_25
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sweet.tts.TEST_SET_LANG_ENABLED"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 150
    invoke-virtual {v6, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "enabled"

    invoke-virtual {v6, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_26

    .line 153
    sget-object v2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v2, v0, v1}, Lsweet/tts/Prefs;->setLanguageEnabled(Ljava/lang/String;Z)V

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TEST_SET_LANG_ENABLED lang="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " enabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 156
    :cond_26
    const-string v0, "TEST_SET_LANG_ENABLED missing lang extra"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :cond_27
    invoke-virtual {v6, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2a

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_28

    goto :goto_9

    .line 165
    :cond_28
    invoke-virtual {v6, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    goto :goto_8

    :cond_29
    move-object v10, v2

    .line 166
    :goto_8
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 168
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 169
    new-instance v8, Landroid/speech/tts/TextToSpeech;

    new-instance v0, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda2;

    move-object v2, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v6}, Lsweet/tts/TtsTestReceiver$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/content/Intent;)V

    invoke-direct {v8, v7, v0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v8, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void

    .line 162
    :cond_2a
    :goto_9
    const-string v0, "no text extra provided"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
