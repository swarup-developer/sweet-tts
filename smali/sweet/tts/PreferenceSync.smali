.class public final Lsweet/tts/PreferenceSync;
.super Ljava/lang/Object;
.source "PreferenceSync.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreferenceSync.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferenceSync.kt\nsweet/tts/PreferenceSync\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1563#2:57\n1634#2,3:58\n1563#2:62\n1634#2,3:63\n1#3:61\n*S KotlinDebug\n*F\n+ 1 PreferenceSync.kt\nsweet/tts/PreferenceSync\n*L\n28#1:57\n28#1:58,3\n45#1:62\n45#1:63,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lsweet/tts/PreferenceSync;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "updateAll",
        "",
        "context",
        "Landroid/content/Context;",
        "reconnectGoogle",
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
.field public static final INSTANCE:Lsweet/tts/PreferenceSync;

.field private static final TAG:Ljava/lang/String; = "PreferenceSync"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsweet/tts/PreferenceSync;

    invoke-direct {v0}, Lsweet/tts/PreferenceSync;-><init>()V

    sput-object v0, Lsweet/tts/PreferenceSync;->INSTANCE:Lsweet/tts/PreferenceSync;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final updateAll$isKept(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 31
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    const/4 v1, 0x0

    const-string v2, "Google "

    invoke-static {p1, v2, v0, p0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final updateAll(Landroid/content/Context;Z)V
    .locals 7

    const-string p0, "__match_language__"

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 25
    :try_start_0
    sget-object v1, Lsweet/tts/PlaySample;->INSTANCE:Lsweet/tts/PlaySample;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lsweet/tts/PlaySample;->refreshEngines$default(Lsweet/tts/PlaySample;Landroid/content/Context;JILjava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lsweet/tts/PlaySample;->INSTANCE:Lsweet/tts/PlaySample;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "en"

    invoke-virtual {p1, v2, p2}, Lsweet/tts/PlaySample;->resolveVoiceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    :goto_0
    sget-object p1, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p1}, Lsweet/tts/VoiceCatalog;->getVoices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_4

    .line 28
    :cond_1
    sget-object p1, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p1}, Lsweet/tts/VoiceCatalog;->getVoices()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 58
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 59
    check-cast v1, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 28
    iget-object v1, v1, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    .line 59
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :cond_2
    check-cast p2, Ljava/util/List;

    .line 57
    check-cast p2, Ljava/lang/Iterable;

    .line 28
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 33
    sget-object p2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p2}, Lsweet/tts/Prefs;->emojiVoice()Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1, p2}, Lsweet/tts/PreferenceSync;->updateAll$isKept(Ljava/util/Set;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 35
    sget-object p2, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    const-string v1, "emoji"

    sget-object v2, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v2}, Lsweet/tts/VoiceCatalog;->getVoices()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lsweet/tts/VoiceCatalog;->defaultVoiceFor(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/android/vocalizer/VocalizerVoice;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    if-eqz p2, :cond_3

    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1, p2}, Lsweet/tts/Prefs;->setEmojiVoice(Ljava/lang/String;)V

    .line 37
    :cond_3
    sget-object p2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p2}, Lsweet/tts/Prefs;->numberVoice()Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p1, p2}, Lsweet/tts/PreferenceSync;->updateAll$isKept(Ljava/util/Set;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 39
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    const-string p1, "number"

    sget-object p2, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p2}, Lsweet/tts/VoiceCatalog;->getVoices()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsweet/tts/VoiceCatalog;->defaultVoiceFor(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/android/vocalizer/VocalizerVoice;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    if-eqz p0, :cond_4

    sget-object p1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p1, p0}, Lsweet/tts/Prefs;->setNumberVoice(Ljava/lang/String;)V

    .line 42
    :cond_4
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p0}, Lsweet/tts/VoiceCatalog;->getLANGUAGES()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 43
    sget-object p2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p2, p1}, Lsweet/tts/Prefs;->isLanguageEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 44
    sget-object p2, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    sget-object v1, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v1, p1}, Lsweet/tts/VoiceCatalog;->voicesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lsweet/tts/VoiceCatalog;->sortedForDisplay(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 45
    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 63
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 64
    check-cast v3, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 45
    iget-object v3, v3, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    .line 64
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 65
    :cond_6
    check-cast v2, Ljava/util/List;

    .line 62
    check-cast v2, Ljava/lang/Iterable;

    .line 45
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 46
    sget-object v2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v2, p1}, Lsweet/tts/Prefs;->voiceFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 47
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Google "

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v1, v5, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 48
    :cond_7
    sget-object v1, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v1, p1, p2}, Lsweet/tts/VoiceCatalog;->defaultVoiceFor(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/android/vocalizer/VocalizerVoice;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p2, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    if-eqz p2, :cond_5

    sget-object v1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v1, p1, p2}, Lsweet/tts/Prefs;->setVoiceFor(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_8
    :goto_4
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 52
    const-string p1, "PreferenceSync"

    const-string p2, "updateAll failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
