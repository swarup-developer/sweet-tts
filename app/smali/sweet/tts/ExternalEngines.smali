.class public final Lsweet/tts/ExternalEngines;
.super Ljava/lang/Object;
.source "ExternalEngines.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/ExternalEngines$Engine;,
        Lsweet/tts/ExternalEngines$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExternalEngines.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExternalEngines.kt\nsweet/tts/ExternalEngines\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n1#2:96\n1374#3:97\n1460#3,2:98\n1563#3:100\n1634#3,3:101\n1462#3,3:104\n1374#3:107\n1460#3,2:108\n1563#3:110\n1634#3,3:111\n1462#3,3:114\n*S KotlinDebug\n*F\n+ 1 ExternalEngines.kt\nsweet/tts/ExternalEngines\n*L\n84#1:97\n84#1:98,2\n85#1:100\n85#1:101,3\n84#1:104,3\n36#1:107\n36#1:108,2\n36#1:110\n36#1:111,3\n36#1:114,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\"#B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u000bJ\u000e\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000bJ\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u0012J\u000e\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u000bJ\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u0005R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R&\u0010\t\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r0\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0013\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00120\u000c0\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0015X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lsweet/tts/ExternalEngines;",
        "",
        "<init>",
        "()V",
        "ENGINES",
        "",
        "Lsweet/tts/ExternalEngines$Engine;",
        "getENGINES",
        "()Ljava/util/List;",
        "byVoice",
        "",
        "",
        "Lkotlin/Pair;",
        "Lsweet/tts/ExternalEngines$Entry;",
        "entryFor",
        "voiceName",
        "engineFor",
        "isExternalVoice",
        "",
        "installedCache",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "failedUntil",
        "INSTALLED_TTL_MS",
        "FAILED_COOLDOWN_MS",
        "isInstalled",
        "pkg",
        "isAvailable",
        "markFailed",
        "",
        "wholeEngine",
        "clearFailed",
        "catalogVoices",
        "Lcom/nuance/android/vocalizer/VocalizerVoice;",
        "Entry",
        "Engine",
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
.field private static final ENGINES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsweet/tts/ExternalEngines$Engine;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAILED_COOLDOWN_MS:J = 0xea60L

.field private static final INSTALLED_TTL_MS:J = 0x1388L

.field public static final INSTANCE:Lsweet/tts/ExternalEngines;

.field private static final byVoice:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Lsweet/tts/ExternalEngines$Engine;",
            "Lsweet/tts/ExternalEngines$Entry;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final failedUntil:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final installedCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lsweet/tts/ExternalEngines;

    invoke-direct {v0}, Lsweet/tts/ExternalEngines;-><init>()V

    sput-object v0, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    .line 24
    sget-object v0, Lsweet/tts/Edition;->INSTANCE:Lsweet/tts/Edition;

    invoke-virtual {v0}, Lsweet/tts/Edition;->getPLUS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 25
    new-array v1, v0, [Lsweet/tts/ExternalEngines$Engine;

    new-instance v2, Lsweet/tts/ExternalEngines$Engine;

    .line 26
    new-instance v3, Lsweet/tts/ExternalEngines$Entry;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "US"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "IBM Eloquence"

    const-string v9, "en"

    const-string v10, "English"

    invoke-direct {v3, v5, v9, v10, v4}, Lsweet/tts/ExternalEngines$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 25
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v3, "ibm"

    const-string v4, "IBM Eloquence"

    const-string v5, "com.karan.eloquence"

    const/4 v6, 0x4

    invoke-direct/range {v2 .. v7}, Lsweet/tts/ExternalEngines$Engine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 28
    new-instance v11, Lsweet/tts/ExternalEngines$Engine;

    const/4 v2, 0x3

    .line 29
    new-array v2, v2, [Lsweet/tts/ExternalEngines$Entry;

    new-instance v4, Lsweet/tts/ExternalEngines$Entry;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "SpeechFlow English"

    invoke-direct {v4, v6, v9, v10, v5}, Lsweet/tts/ExternalEngines$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v2, v3

    .line 30
    new-instance v3, Lsweet/tts/ExternalEngines$Entry;

    new-instance v4, Ljava/util/Locale;

    const-string v5, "hi"

    const-string v6, "IN"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "SpeechFlow Hindi"

    const-string v8, "Hindi"

    invoke-direct {v3, v7, v5, v8, v4}, Lsweet/tts/ExternalEngines$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 31
    new-instance v3, Lsweet/tts/ExternalEngines$Entry;

    new-instance v5, Ljava/util/Locale;

    const-string v7, "ur"

    invoke-direct {v5, v7, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "SpeechFlow Urdu"

    const-string v8, "Urdu"

    invoke-direct {v3, v6, v7, v8, v5}, Lsweet/tts/ExternalEngines$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v2, v0

    .line 28
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const-string v12, "speechflow"

    const-string v13, "SpeechFlow"

    const-string v14, "in.visionHacks.eloquencePlus"

    const/4 v15, 0x5

    invoke-direct/range {v11 .. v16}, Lsweet/tts/ExternalEngines$Engine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    aput-object v11, v1, v4

    .line 24
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    sput-object v0, Lsweet/tts/ExternalEngines;->ENGINES:Ljava/util/List;

    .line 36
    check-cast v0, Ljava/lang/Iterable;

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 108
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 109
    check-cast v2, Lsweet/tts/ExternalEngines$Engine;

    .line 36
    invoke-virtual {v2}, Lsweet/tts/ExternalEngines$Engine;->getEntries()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 110
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 111
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 112
    check-cast v5, Lsweet/tts/ExternalEngines$Entry;

    .line 36
    invoke-virtual {v5}, Lsweet/tts/ExternalEngines$Entry;->getVoiceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 112
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    :cond_1
    check-cast v4, Ljava/util/List;

    .line 110
    check-cast v4, Ljava/lang/Iterable;

    .line 114
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 116
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 107
    check-cast v1, Ljava/lang/Iterable;

    .line 36
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsweet/tts/ExternalEngines;->byVoice:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lsweet/tts/ExternalEngines;->installedCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lsweet/tts/ExternalEngines;->failedUntil:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final catalogVoices()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nuance/android/vocalizer/VocalizerVoice;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object p0, Lsweet/tts/ExternalEngines;->ENGINES:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 98
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    check-cast v1, Lsweet/tts/ExternalEngines$Engine;

    .line 85
    invoke-virtual {v1}, Lsweet/tts/ExternalEngines$Engine;->getEntries()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 101
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 102
    check-cast v3, Lsweet/tts/ExternalEngines$Entry;

    .line 86
    new-instance v4, Lcom/nuance/android/vocalizer/VocalizerVoice;

    invoke-direct {v4}, Lcom/nuance/android/vocalizer/VocalizerVoice;-><init>()V

    .line 87
    invoke-virtual {v3}, Lsweet/tts/ExternalEngines$Entry;->getVoiceName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    .line 88
    invoke-virtual {v3}, Lsweet/tts/ExternalEngines$Entry;->getLanguageLabel()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/nuance/android/vocalizer/VocalizerVoice;->mLanguage:Ljava/lang/String;

    .line 89
    sget-object v5, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v3}, Lsweet/tts/ExternalEngines$Entry;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lsweet/tts/VoiceCatalog;->tlwPrefixFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/nuance/android/vocalizer/VocalizerVoice;->mLanguageTLW:Ljava/lang/String;

    const/4 v3, 0x0

    .line 90
    iput v3, v4, Lcom/nuance/android/vocalizer/VocalizerVoice;->mSampleRate:I

    .line 102
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 100
    check-cast v2, Ljava/lang/Iterable;

    .line 104
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 106
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final clearFailed(Ljava/lang/String;)V
    .locals 2

    const-string v0, "voiceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1}, Lsweet/tts/ExternalEngines;->engineFor(Ljava/lang/String;)Lsweet/tts/ExternalEngines$Engine;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 79
    :cond_0
    sget-object v0, Lsweet/tts/ExternalEngines;->failedUntil:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lsweet/tts/ExternalEngines$Engine;->getPkg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "voice:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final engineFor(Ljava/lang/String;)Lsweet/tts/ExternalEngines$Engine;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 39
    sget-object v0, Lsweet/tts/ExternalEngines;->byVoice:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsweet/tts/ExternalEngines$Engine;

    :cond_0
    return-object p0
.end method

.method public final entryFor(Ljava/lang/String;)Lsweet/tts/ExternalEngines$Entry;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 38
    sget-object v0, Lsweet/tts/ExternalEngines;->byVoice:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsweet/tts/ExternalEngines$Entry;

    :cond_0
    return-object p0
.end method

.method public final getENGINES()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsweet/tts/ExternalEngines$Engine;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object p0, Lsweet/tts/ExternalEngines;->ENGINES:Ljava/util/List;

    return-object p0
.end method

.method public final isAvailable(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "voiceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Lsweet/tts/ExternalEngines;->engineFor(Ljava/lang/String;)Lsweet/tts/ExternalEngines$Engine;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 62
    :cond_0
    invoke-virtual {v0}, Lsweet/tts/ExternalEngines$Engine;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsweet/tts/ExternalEngines;->isInstalled(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    .line 63
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 64
    sget-object p0, Lsweet/tts/ExternalEngines;->failedUntil:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lsweet/tts/ExternalEngines$Engine;->getPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_0

    :cond_2
    move-wide v6, v4

    :goto_0
    cmp-long v0, v6, v2

    if-lez v0, :cond_3

    return v1

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "voice:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_4
    cmp-long p0, v4, v2

    if-gtz p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public final isExternalVoice(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 40
    sget-object p0, Lsweet/tts/ExternalEngines;->byVoice:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInstalled(Ljava/lang/String;)Z
    .locals 6

    const-string p0, "pkg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    sget-object p0, Lsweet/tts/ExternalEngines;->installedCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-eqz p0, :cond_0

    .line 96
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 54
    :try_start_0
    sget-object v2, Lsweet/tts/App;->Companion:Lsweet/tts/App$Companion;

    invoke-virtual {v2}, Lsweet/tts/App$Companion;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-boolean p0, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :catchall_0
    sget-object v2, Lsweet/tts/ExternalEngines;->installedCache:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v2, Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p0
.end method

.method public final markFailed(Ljava/lang/String;Z)V
    .locals 6

    const-string v0, "voiceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lsweet/tts/ExternalEngines;->engineFor(Ljava/lang/String;)Lsweet/tts/ExternalEngines$Engine;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 72
    :cond_0
    sget-object v0, Lsweet/tts/ExternalEngines;->failedUntil:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lsweet/tts/ExternalEngines$Engine;->getPkg()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "voice:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lsweet/tts/ExternalEngines$Engine;->getLabel()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {p0}, Lsweet/tts/ExternalEngines$Engine;->getPkg()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") cannot be used now: the language\'s normal voice is used for the next 60 s"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "External"

    invoke-virtual {v0, p1, p0}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
