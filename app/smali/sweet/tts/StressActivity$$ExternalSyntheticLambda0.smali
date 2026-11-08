.class public final synthetic Lsweet/tts/StressActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lsweet/tts/StressActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p0, p1}, Lsweet/tts/StressActivity;->newTts$lambda$8(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/CountDownLatch;I)V

    return-void
.end method
