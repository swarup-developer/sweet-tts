.class public final Lsweet/tts/RoutingVoiceBackend;
.super Ljava/lang/Object;
.source "RoutingVoiceBackend.kt"

# interfaces
.implements Lsweet/tts/VoiceBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/RoutingVoiceBackend$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoutingVoiceBackend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoutingVoiceBackend.kt\nsweet/tts/RoutingVoiceBackend\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,151:1\n1#2:152\n295#3,2:153\n*S KotlinDebug\n*F\n+ 1 RoutingVoiceBackend.kt\nsweet/tts/RoutingVoiceBackend\n*L\n84#1:153,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 &2\u00020\u0001:\u0001&B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0002J\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0002J:\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0016J\u001c\u0010!\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010#\u001a\u00020\u001aH\u0016J\u0008\u0010$\u001a\u00020\u001aH\u0016J\u0008\u0010%\u001a\u00020\u0015H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lsweet/tts/RoutingVoiceBackend;",
        "Lsweet/tts/VoiceBackend;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "vocalizer",
        "Lsweet/tts/VocalizerVoiceBackend;",
        "eloquence",
        "Lsweet/tts/EloquenceVoiceBackend;",
        "google",
        "Lsweet/tts/GoogleVoiceBackend;",
        "external",
        "Lsweet/tts/ExternalEngineBackend;",
        "preferredVoiceName",
        "",
        "lang",
        "appPackage",
        "chosenVoiceName",
        "normalVoiceNameFor",
        "refreshGoogle",
        "",
        "timeoutMs",
        "",
        "backendFor",
        "speak",
        "",
        "text",
        "callback",
        "Landroid/speech/tts/SynthesisCallback;",
        "callerRate",
        "",
        "callerPitch",
        "resolveVoiceName",
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
.field public static final Companion:Lsweet/tts/RoutingVoiceBackend$Companion;

.field private static volatile shared:Lsweet/tts/RoutingVoiceBackend;


# instance fields
.field private final eloquence:Lsweet/tts/EloquenceVoiceBackend;

.field private final external:Lsweet/tts/ExternalEngineBackend;

.field private final google:Lsweet/tts/GoogleVoiceBackend;

.field private volatile stopRequested:Z

.field private final vocalizer:Lsweet/tts/VocalizerVoiceBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/RoutingVoiceBackend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsweet/tts/RoutingVoiceBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsweet/tts/RoutingVoiceBackend;->Companion:Lsweet/tts/RoutingVoiceBackend$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lsweet/tts/VocalizerVoiceBackend;

    invoke-direct {v0, p1}, Lsweet/tts/VocalizerVoiceBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsweet/tts/RoutingVoiceBackend;->vocalizer:Lsweet/tts/VocalizerVoiceBackend;

    .line 36
    new-instance v0, Lsweet/tts/EloquenceVoiceBackend;

    invoke-direct {v0, p1}, Lsweet/tts/EloquenceVoiceBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsweet/tts/RoutingVoiceBackend;->eloquence:Lsweet/tts/EloquenceVoiceBackend;

    .line 37
    new-instance v0, Lsweet/tts/GoogleVoiceBackend;

    invoke-direct {v0, p1}, Lsweet/tts/GoogleVoiceBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsweet/tts/RoutingVoiceBackend;->google:Lsweet/tts/GoogleVoiceBackend;

    .line 39
    new-instance v0, Lsweet/tts/ExternalEngineBackend;

    invoke-direct {v0, p1}, Lsweet/tts/ExternalEngineBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsweet/tts/RoutingVoiceBackend;->external:Lsweet/tts/ExternalEngineBackend;

    .line 47
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p0}, Lsweet/tts/VoiceCatalog;->ensureEloquenceVoiceRegistered()V

    .line 48
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p0}, Lsweet/tts/VoiceCatalog;->ensureExternalEnginesRegistered()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lsweet/tts/RoutingVoiceBackend;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getShared$cp()Lsweet/tts/RoutingVoiceBackend;
    .locals 1

    .line 19
    sget-object v0, Lsweet/tts/RoutingVoiceBackend;->shared:Lsweet/tts/RoutingVoiceBackend;

    return-object v0
.end method

.method public static final synthetic access$setShared$cp(Lsweet/tts/RoutingVoiceBackend;)V
    .locals 0

    .line 19
    sput-object p0, Lsweet/tts/RoutingVoiceBackend;->shared:Lsweet/tts/RoutingVoiceBackend;

    return-void
.end method

.method private final backendFor(Ljava/lang/String;Ljava/lang/String;)Lsweet/tts/VoiceBackend;
    .locals 3

    .line 90
    invoke-direct {p0, p1, p2}, Lsweet/tts/RoutingVoiceBackend;->preferredVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    const-string p2, "ETI Eloquence"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lsweet/tts/EloquenceHub;->INSTANCE:Lsweet/tts/EloquenceHub;

    invoke-virtual {p1}, Lsweet/tts/EloquenceHub;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lsweet/tts/RoutingVoiceBackend;->eloquence:Lsweet/tts/EloquenceVoiceBackend;

    check-cast p0, Lsweet/tts/VoiceBackend;

    return-object p0

    :cond_0
    iget-object p0, p0, Lsweet/tts/RoutingVoiceBackend;->vocalizer:Lsweet/tts/VocalizerVoiceBackend;

    check-cast p0, Lsweet/tts/VoiceBackend;

    return-object p0

    .line 95
    :cond_1
    sget-object p2, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {p2, p1}, Lsweet/tts/ExternalEngines;->isExternalVoice(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lsweet/tts/RoutingVoiceBackend;->external:Lsweet/tts/ExternalEngineBackend;

    check-cast p0, Lsweet/tts/VoiceBackend;

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 96
    const-string v1, "Google "

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p2, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lsweet/tts/RoutingVoiceBackend;->google:Lsweet/tts/GoogleVoiceBackend;

    check-cast p0, Lsweet/tts/VoiceBackend;

    return-object p0

    .line 97
    :cond_3
    iget-object p0, p0, Lsweet/tts/RoutingVoiceBackend;->vocalizer:Lsweet/tts/VocalizerVoiceBackend;

    check-cast p0, Lsweet/tts/VoiceBackend;

    return-object p0
.end method

.method private final chosenVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 67
    const-string p0, "number"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0}, Lsweet/tts/Prefs;->numberVoice()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    const-string p0, "emoji"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0}, Lsweet/tts/Prefs;->emojiVoice()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p2, :cond_3

    .line 75
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0, p2, p1}, Lsweet/tts/Prefs;->voiceForApp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0, p1}, Lsweet/tts/Prefs;->voiceFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    .line 76
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p0, p1}, Lsweet/tts/VoiceCatalog;->preferredDefaultVoiceNameIfPresent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    .line 77
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    sget-object p2, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    sget-object v0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v0, p1}, Lsweet/tts/VoiceCatalog;->voicesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lsweet/tts/VoiceCatalog;->sortedForDisplay(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsweet/tts/VoiceCatalog;->defaultVoiceFor(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/android/vocalizer/VocalizerVoice;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    :cond_5
    return-object p0
.end method

.method private final normalVoiceNameFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 83
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p0, p1}, Lsweet/tts/VoiceCatalog;->preferredDefaultVoiceNameIfPresent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    .line 84
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    sget-object v0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v0, p1}, Lsweet/tts/VoiceCatalog;->voicesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsweet/tts/VoiceCatalog;->sortedForDisplay(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 153
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 84
    sget-object v2, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    iget-object v1, v1, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lsweet/tts/ExternalEngines;->isExternalVoice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    check-cast p1, Lcom/nuance/android/vocalizer/VocalizerVoice;

    if-eqz p1, :cond_2

    iget-object p0, p1, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v0

    :cond_3
    return-object p0
.end method

.method private final preferredVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 57
    invoke-direct {p0, p1, p2}, Lsweet/tts/RoutingVoiceBackend;->chosenVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 60
    sget-object v0, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {v0, p2}, Lsweet/tts/ExternalEngines;->isExternalVoice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {v0, p2}, Lsweet/tts/ExternalEngines;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lsweet/tts/RoutingVoiceBackend;->normalVoiceNameFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method


# virtual methods
.method public beginUtterance()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lsweet/tts/RoutingVoiceBackend;->stopRequested:Z

    .line 143
    iget-object v0, p0, Lsweet/tts/RoutingVoiceBackend;->vocalizer:Lsweet/tts/VocalizerVoiceBackend;

    invoke-virtual {v0}, Lsweet/tts/VocalizerVoiceBackend;->beginUtterance()V

    .line 144
    iget-object v0, p0, Lsweet/tts/RoutingVoiceBackend;->eloquence:Lsweet/tts/EloquenceVoiceBackend;

    invoke-virtual {v0}, Lsweet/tts/EloquenceVoiceBackend;->beginUtterance()V

    .line 145
    iget-object v0, p0, Lsweet/tts/RoutingVoiceBackend;->google:Lsweet/tts/GoogleVoiceBackend;

    invoke-virtual {v0}, Lsweet/tts/GoogleVoiceBackend;->beginUtterance()V

    .line 146
    iget-object p0, p0, Lsweet/tts/RoutingVoiceBackend;->external:Lsweet/tts/ExternalEngineBackend;

    invoke-virtual {p0}, Lsweet/tts/ExternalEngineBackend;->beginUtterance()V

    return-void
.end method

.method public final refreshGoogle(J)Z
    .locals 0

    .line 87
    iget-object p0, p0, Lsweet/tts/RoutingVoiceBackend;->google:Lsweet/tts/GoogleVoiceBackend;

    invoke-virtual {p0, p1, p2}, Lsweet/tts/GoogleVoiceBackend;->reconnectAndWait(J)Z

    move-result p0

    return p0
.end method

.method public resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p1, p2}, Lsweet/tts/RoutingVoiceBackend;->preferredVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    sget-object v1, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {v1, v0}, Lsweet/tts/ExternalEngines;->isExternalVoice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 121
    :cond_0
    invoke-direct {p0, p1, p2}, Lsweet/tts/RoutingVoiceBackend;->backendFor(Ljava/lang/String;Ljava/lang/String;)Lsweet/tts/VoiceBackend;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lsweet/tts/VoiceBackend;->resolveVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;)V
    .locals 8

    const-string v1, "text"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lang"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, p2, p6}, Lsweet/tts/RoutingVoiceBackend;->backendFor(Ljava/lang/String;Ljava/lang/String;)Lsweet/tts/VoiceBackend;

    move-result-object v1

    .line 103
    iget-object v4, p0, Lsweet/tts/RoutingVoiceBackend;->external:Lsweet/tts/ExternalEngineBackend;

    if-ne v1, v4, :cond_4

    .line 104
    invoke-direct {p0, p2, p6}, Lsweet/tts/RoutingVoiceBackend;->preferredVoiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v1, p0, Lsweet/tts/RoutingVoiceBackend;->external:Lsweet/tts/ExternalEngineBackend;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lsweet/tts/ExternalEngineBackend;->speakVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;II)Z

    move-result v1

    move-object v3, v2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :cond_1
    if-eqz v3, :cond_2

    .line 108
    sget-object v1, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {v1, v3}, Lsweet/tts/ExternalEngines;->isAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lsweet/tts/ExternalEngines;->markFailed(Ljava/lang/String;Z)V

    .line 109
    :cond_2
    invoke-virtual {p0}, Lsweet/tts/RoutingVoiceBackend;->wasStopped()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    return-void

    .line 110
    :cond_3
    invoke-direct {p0, p2, p6}, Lsweet/tts/RoutingVoiceBackend;->backendFor(Ljava/lang/String;Ljava/lang/String;)Lsweet/tts/VoiceBackend;

    move-result-object v1

    .line 111
    iget-object v0, p0, Lsweet/tts/RoutingVoiceBackend;->external:Lsweet/tts/ExternalEngineBackend;

    if-ne v1, v0, :cond_4

    :try_start_0
    invoke-interface {p3}, Landroid/speech/tts/SynthesisCallback;->done()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_4
    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v0, v1

    move-object v1, p1

    .line 113
    invoke-interface/range {v0 .. v6}, Lsweet/tts/VoiceBackend;->speak(Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;IILjava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 5

    .line 131
    const-string v0, "Stop"

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsweet/tts/RoutingVoiceBackend;->stopRequested:Z

    .line 135
    :try_start_0
    iget-object v1, p0, Lsweet/tts/RoutingVoiceBackend;->google:Lsweet/tts/GoogleVoiceBackend;

    invoke-virtual {v1}, Lsweet/tts/GoogleVoiceBackend;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "google.stop failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    :try_start_1
    iget-object v1, p0, Lsweet/tts/RoutingVoiceBackend;->eloquence:Lsweet/tts/EloquenceVoiceBackend;

    invoke-virtual {v1}, Lsweet/tts/EloquenceVoiceBackend;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    sget-object v2, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "eloquence.stop failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_1
    :try_start_2
    iget-object v1, p0, Lsweet/tts/RoutingVoiceBackend;->vocalizer:Lsweet/tts/VocalizerVoiceBackend;

    invoke-virtual {v1}, Lsweet/tts/VocalizerVoiceBackend;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    sget-object v2, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vocalizer.stop failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_2
    :try_start_3
    iget-object p0, p0, Lsweet/tts/RoutingVoiceBackend;->external:Lsweet/tts/ExternalEngineBackend;

    invoke-virtual {p0}, Lsweet/tts/ExternalEngineBackend;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    sget-object v1, Lsweet/tts/DiagnosticLog;->INSTANCE:Lsweet/tts/DiagnosticLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "external.stop failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lsweet/tts/DiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public wasStopped()Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lsweet/tts/RoutingVoiceBackend;->stopRequested:Z

    return p0
.end method
