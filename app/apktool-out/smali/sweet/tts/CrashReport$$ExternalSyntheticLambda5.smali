.class public final synthetic Lsweet/tts/CrashReport$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$2:[B

.field public final synthetic f$3:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic f$4:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;[BLkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda5;->f$2:[B

    iput-object p4, p0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda5;->f$3:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p5, p0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda5;->f$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget-object v0, p0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v1, p0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda5;->f$2:[B

    iget-object v3, p0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda5;->f$3:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v4, p0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda5;->f$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static/range {v0 .. v9}, Lsweet/tts/CrashReport;->frame$lambda$0(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;[BLkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;IJII)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
