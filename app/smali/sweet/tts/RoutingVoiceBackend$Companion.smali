.class public final Lsweet/tts/RoutingVoiceBackend$Companion;
.super Ljava/lang/Object;
.source "RoutingVoiceBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/RoutingVoiceBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoutingVoiceBackend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoutingVoiceBackend.kt\nsweet/tts/RoutingVoiceBackend$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,151:1\n1#2:152\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\tR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lsweet/tts/RoutingVoiceBackend$Companion;",
        "",
        "<init>",
        "()V",
        "shared",
        "Lsweet/tts/RoutingVoiceBackend;",
        "context",
        "Landroid/content/Context;",
        "exists",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lsweet/tts/RoutingVoiceBackend$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final exists()Z
    .locals 0

    .line 32
    invoke-static {}, Lsweet/tts/RoutingVoiceBackend;->access$getShared$cp()Lsweet/tts/RoutingVoiceBackend;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shared(Landroid/content/Context;)Lsweet/tts/RoutingVoiceBackend;
    .locals 2

    .line 28
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lsweet/tts/RoutingVoiceBackend;->access$getShared$cp()Lsweet/tts/RoutingVoiceBackend;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 29
    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lsweet/tts/RoutingVoiceBackend;->access$getShared$cp()Lsweet/tts/RoutingVoiceBackend;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lsweet/tts/RoutingVoiceBackend;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsweet/tts/RoutingVoiceBackend;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lsweet/tts/RoutingVoiceBackend;->Companion:Lsweet/tts/RoutingVoiceBackend$Companion;

    invoke-static {v0}, Lsweet/tts/RoutingVoiceBackend;->access$setShared$cp(Lsweet/tts/RoutingVoiceBackend;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
