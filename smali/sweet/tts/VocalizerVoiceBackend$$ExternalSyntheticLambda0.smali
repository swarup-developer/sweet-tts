.class public final synthetic Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$3:Landroid/speech/tts/SynthesisCallback;

.field public final synthetic f$4:I

.field public final synthetic f$5:Lsweet/tts/VocalizerVoiceBackend;

.field public final synthetic f$6:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic f$7:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$8:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/speech/tts/SynthesisCallback;ILsweet/tts/VocalizerVoiceBackend;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$3:Landroid/speech/tts/SynthesisCallback;

    iput p5, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$4:I

    iput-object p6, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$5:Lsweet/tts/VocalizerVoiceBackend;

    iput-object p7, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$6:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p8, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$7:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p9, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$8:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget-object v0, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$3:Landroid/speech/tts/SynthesisCallback;

    iget v4, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$4:I

    iget-object v5, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$5:Lsweet/tts/VocalizerVoiceBackend;

    iget-object v6, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$6:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v7, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$7:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v8, p0, Lsweet/tts/VocalizerVoiceBackend$$ExternalSyntheticLambda0;->f$8:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v9, p1

    check-cast v9, [S

    invoke-static/range {v0 .. v9}, Lsweet/tts/VocalizerVoiceBackend;->speakLocked$lambda$10(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/speech/tts/SynthesisCallback;ILsweet/tts/VocalizerVoiceBackend;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$BooleanRef;[S)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
