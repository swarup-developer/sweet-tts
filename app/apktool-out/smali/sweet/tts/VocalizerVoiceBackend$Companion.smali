.class public final Lsweet/tts/VocalizerVoiceBackend$Companion;
.super Ljava/lang/Object;
.source "VocalizerVoiceBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/VocalizerVoiceBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lsweet/tts/VocalizerVoiceBackend$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Lsweet/tts/VocalizerVoiceBackend;",
        "getInstance",
        "()Lsweet/tts/VocalizerVoiceBackend;",
        "setInstance",
        "(Lsweet/tts/VocalizerVoiceBackend;)V",
        "ABSOLUTE_TIMEOUT_MS",
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

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lsweet/tts/VocalizerVoiceBackend$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lsweet/tts/VocalizerVoiceBackend;
    .locals 0

    .line 404
    invoke-static {}, Lsweet/tts/VocalizerVoiceBackend;->access$getInstance$cp()Lsweet/tts/VocalizerVoiceBackend;

    move-result-object p0

    return-object p0
.end method

.method public final setInstance(Lsweet/tts/VocalizerVoiceBackend;)V
    .locals 0

    .line 404
    invoke-static {p1}, Lsweet/tts/VocalizerVoiceBackend;->access$setInstance$cp(Lsweet/tts/VocalizerVoiceBackend;)V

    return-void
.end method
