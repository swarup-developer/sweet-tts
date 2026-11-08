.class public final synthetic Lsweet/tts/Tts$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lsweet/tts/Tts;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lsweet/tts/Tts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/Tts$$ExternalSyntheticLambda3;->f$0:Lsweet/tts/Tts;

    iput-object p2, p0, Lsweet/tts/Tts$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lsweet/tts/Tts$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lsweet/tts/Tts$$ExternalSyntheticLambda3;->f$0:Lsweet/tts/Tts;

    iget-object v1, p0, Lsweet/tts/Tts$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lsweet/tts/Tts$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lsweet/tts/Tts;->synthesize$lambda$10(Lsweet/tts/Tts;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
