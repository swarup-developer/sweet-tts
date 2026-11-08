.class public final Lsweet/tts/CrashReport;
.super Ljava/lang/Object;
.source "CrashReport.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/CrashReport$Result;,
        Lsweet/tts/CrashReport$Thr;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrashReport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrashReport.kt\nsweet/tts/CrashReport\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,140:1\n295#2,2:141\n1869#2,2:143\n774#2:145\n865#2,2:146\n1869#2,2:148\n*S KotlinDebug\n*F\n+ 1 CrashReport.kt\nsweet/tts/CrashReport\n*L\n117#1:141,2\n126#1:143,2\n127#1:145\n127#1:146,2\n127#1:148,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u0002JF\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2$\u0010\u0010\u001a \u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\r0\u0011H\u0002J \u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000bH\u0002J(\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000bH\u0002J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000bH\u0002J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0007J\u000e\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0007\u00a8\u0006 "
    }
    d2 = {
        "Lsweet/tts/CrashReport;",
        "",
        "<init>",
        "()V",
        "varint",
        "",
        "b",
        "",
        "pos",
        "",
        "limit",
        "",
        "walk",
        "",
        "from",
        "to",
        "f",
        "Lkotlin/Function4;",
        "str",
        "",
        "s",
        "e",
        "frame",
        "index",
        "thread",
        "Lsweet/tts/CrashReport$Thr;",
        "parse",
        "Lsweet/tts/CrashReport$Result;",
        "raw",
        "fallback",
        "Result",
        "Thr",
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
.field public static final INSTANCE:Lsweet/tts/CrashReport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsweet/tts/CrashReport;

    invoke-direct {v0}, Lsweet/tts/CrashReport;-><init>()V

    sput-object v0, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final fallback$lambda$10(Lkotlin/text/MatchResult;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final frame([BIII)Ljava/lang/String;
    .locals 6

    .line 56
    new-instance v1, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 57
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v0, ""

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 58
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 59
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 60
    new-instance v0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda5;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lsweet/tts/CrashReport$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;[BLkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-direct {p0, v3, p2, p3, v0}, Lsweet/tts/CrashReport;->walk([BIILkotlin/jvm/functions/Function4;)V

    .line 68
    iget-object p0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/16 p3, 0x2f

    invoke-static {p0, p3, p1, p2, p1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 69
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-wide p2, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-wide p1, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "pc=0x"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "#"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final frame$lambda$0(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;[BLkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;IJII)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    if-eq p5, v0, :cond_3

    const/4 p0, 0x4

    if-eq p5, p0, :cond_2

    const/4 p0, 0x5

    if-eq p5, p0, :cond_1

    const/4 p0, 0x6

    if-eq p5, p0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    sget-object p0, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    invoke-direct {p0, p2, p8, p9}, Lsweet/tts/CrashReport;->str([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_1
    iput-wide p6, p3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_0

    .line 63
    :cond_2
    sget-object p0, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    invoke-direct {p0, p2, p8, p9}, Lsweet/tts/CrashReport;->str([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_3
    iput-wide p6, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 67
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final parse$lambda$5(Lkotlin/jvm/internal/Ref$ObjectRef;[BLkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/ArrayList;Ljava/util/ArrayList;IJII)Lkotlin/Unit;
    .locals 12

    move/from16 v0, p7

    move/from16 v1, p10

    move/from16 v2, p11

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p0, 0x6

    if-eq v0, p0, :cond_2

    const/16 p0, 0xa

    if-eq v0, p0, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 114
    :pswitch_0
    sget-object p0, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    new-instance p2, Lsweet/tts/CrashReport$$ExternalSyntheticLambda4;

    move-object/from16 p3, p6

    invoke-direct {p2, p3, p1}, Lsweet/tts/CrashReport$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;[B)V

    invoke-direct {p0, p1, v1, v2, p2}, Lsweet/tts/CrashReport;->walk([BIILkotlin/jvm/functions/Function4;)V

    goto/16 :goto_0

    .line 113
    :pswitch_1
    sget-object p0, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    new-instance p2, Lsweet/tts/CrashReport$$ExternalSyntheticLambda3;

    move-object/from16 p3, p5

    invoke-direct {p2, p3, p1}, Lsweet/tts/CrashReport$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;[B)V

    invoke-direct {p0, p1, v1, v2, p2}, Lsweet/tts/CrashReport;->walk([BIILkotlin/jvm/functions/Function4;)V

    goto/16 :goto_0

    .line 112
    :pswitch_2
    sget-object p0, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    invoke-direct {p0, p1, v1, v2}, Lsweet/tts/CrashReport;->str([BII)Ljava/lang/String;

    move-result-object p0

    move-object/from16 p1, p4

    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_0

    .line 96
    :cond_0
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 97
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string p0, ""

    iput-object p0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 98
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 99
    new-instance v9, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    const-wide/16 v10, -0x1

    iput-wide v10, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 100
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 101
    sget-object p2, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    new-instance v3, Lsweet/tts/CrashReport$$ExternalSyntheticLambda2;

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lsweet/tts/CrashReport$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;[BLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    invoke-direct {p2, p1, v1, v2, v3}, Lsweet/tts/CrashReport;->walk([BIILkotlin/jvm/functions/Function4;)V

    .line 110
    iget-wide p1, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-boolean v2, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_1

    iget-wide v2, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " fault address 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "signal "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-wide/from16 p0, p8

    .line 94
    iput-wide p0, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_0

    .line 93
    :cond_3
    sget-object p2, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    invoke-direct {p2, p1, v1, v2}, Lsweet/tts/CrashReport;->str([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 116
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static final parse$lambda$5$lambda$2(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;[BLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$LongRef;IJII)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    if-eq p6, v0, :cond_5

    const/4 p0, 0x2

    if-eq p6, p0, :cond_4

    const/4 p0, 0x4

    if-eq p6, p0, :cond_3

    const/16 p0, 0x8

    if-eq p6, p0, :cond_1

    const/16 p0, 0x9

    if-eq p6, p0, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    iput-wide p7, p5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_1

    :cond_1
    const-wide/16 p0, 0x0

    cmp-long p0, p7, p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 106
    :goto_0
    iput-boolean v0, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_1

    .line 105
    :cond_3
    sget-object p0, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    invoke-direct {p0, p2, p9, p10}, Lsweet/tts/CrashReport;->str([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_1

    .line 104
    :cond_4
    sget-object p0, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    invoke-direct {p0, p2, p9, p10}, Lsweet/tts/CrashReport;->str([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_1

    .line 103
    :cond_5
    iput-wide p7, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 109
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final parse$lambda$5$lambda$3(Ljava/util/ArrayList;[BIJII)Lkotlin/Unit;
    .locals 0

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 113
    sget-object p2, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    invoke-direct {p2, p1, p5, p6}, Lsweet/tts/CrashReport;->str([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final parse$lambda$5$lambda$4(Ljava/util/ArrayList;[BIJII)Lkotlin/Unit;
    .locals 0

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 114
    sget-object p2, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    invoke-direct {p2, p1, p5, p6}, Lsweet/tts/CrashReport;->thread([BII)Lsweet/tts/CrashReport$Thr;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final str([BII)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/String;

    sub-int/2addr p3, p2

    .line 53
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0
.end method

.method private final thread([BII)Lsweet/tts/CrashReport$Thr;
    .locals 7

    .line 73
    new-instance v0, Lsweet/tts/CrashReport$Thr;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lsweet/tts/CrashReport$Thr;-><init>(JLjava/lang/String;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    new-instance v1, Lsweet/tts/CrashReport$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lsweet/tts/CrashReport$$ExternalSyntheticLambda0;-><init>(Lsweet/tts/CrashReport$Thr;[B)V

    invoke-direct {p0, p1, p2, p3, v1}, Lsweet/tts/CrashReport;->walk([BIILkotlin/jvm/functions/Function4;)V

    return-object v0
.end method

.method static final thread$lambda$1(Lsweet/tts/CrashReport$Thr;[BIJII)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lsweet/tts/CrashReport$Thr;->getFrames()Ljava/util/ArrayList;

    move-result-object p2

    sget-object p3, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    invoke-virtual {p0}, Lsweet/tts/CrashReport$Thr;->getFrames()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-direct {p3, p1, p5, p6, p0}, Lsweet/tts/CrashReport;->frame([BIII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_1
    sget-object p2, Lsweet/tts/CrashReport;->INSTANCE:Lsweet/tts/CrashReport;

    invoke-direct {p2, p1, p5, p6}, Lsweet/tts/CrashReport;->str([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsweet/tts/CrashReport$Thr;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0, p3, p4}, Lsweet/tts/CrashReport$Thr;->setId(J)V

    .line 80
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final varint([B[II)J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    move v2, p0

    .line 18
    :goto_0
    aget v3, p2, p0

    if-ge v3, p3, :cond_1

    const/16 v4, 0x3f

    if-gt v2, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 19
    aput v4, p2, p0

    aget-byte v3, p1, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    if-ltz v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "bad varint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic varint$default(Lsweet/tts/CrashReport;[B[IIILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 14
    array-length p3, p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lsweet/tts/CrashReport;->varint([B[II)J

    move-result-wide p0

    return-wide p0
.end method

.method private final walk([BIILkotlin/jvm/functions/Function4;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 28
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 29
    :goto_0
    aget p2, v1, v2

    if-ge p2, p3, :cond_7

    .line 30
    invoke-direct {p0, p1, v1, p3}, Lsweet/tts/CrashReport;->varint([B[II)J

    move-result-wide v3

    const/4 p2, 0x3

    shr-long v5, v3, p2

    long-to-int p2, v5

    const-wide/16 v5, 0x7

    and-long/2addr v3, v5

    long-to-int v3, v3

    if-eqz v3, :cond_6

    if-eq v3, v0, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 p2, 0x5

    if-ne v3, p2, :cond_0

    .line 47
    aget p2, v1, v2

    add-int/lit8 p2, p2, 0x4

    aput p2, v1, v2

    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "bad wire type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_1
    invoke-direct {p0, p1, v1, p3}, Lsweet/tts/CrashReport;->varint([B[II)J

    move-result-wide v3

    .line 37
    aget v5, v1, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-ltz v8, :cond_3

    sub-int v8, p3, v5

    int-to-long v8, v8

    cmp-long v8, v3, v8

    if-lez v8, :cond_2

    goto :goto_1

    :cond_2
    long-to-int v3, v3

    add-int/2addr v3, v5

    .line 44
    aput v3, v1, v2

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, p2, v3, v4, v5}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_3
    :goto_1
    array-length p0, p1

    if-ne p3, p0, :cond_4

    goto :goto_2

    .line 42
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "bad length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_5
    aget p2, v1, v2

    add-int/lit8 p2, p2, 0x8

    aput p2, v1, v2

    goto :goto_0

    .line 33
    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, v1, p3}, Lsweet/tts/CrashReport;->varint([B[II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p4, p2, v3, v5, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public final fallback([B)Lsweet/tts/CrashReport$Result;
    .locals 9

    const-string p0, "raw"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance p0, Lkotlin/text/Regex;

    const-string v0, "[\\x20-\\x7e]{6,}"

    invoke-direct {p0, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    check-cast v0, Ljava/lang/CharSequence;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, p1, v1}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    new-instance p1, Lsweet/tts/CrashReport$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lsweet/tts/CrashReport$$ExternalSyntheticLambda6;-><init>()V

    .line 136
    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    const/16 p1, 0xfa0

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object v0

    const-string p0, " | "

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 137
    new-instance p1, Lsweet/tts/CrashReport$Result;

    const/16 v0, 0x5dc

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lsweet/tts/CrashReport$Result;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method

.method public final parse([B)Lsweet/tts/CrashReport$Result;
    .locals 21

    move-object/from16 v2, p1

    const-string v0, "raw"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v3, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 86
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v8, ""

    iput-object v8, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 87
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v8, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 88
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 89
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 91
    array-length v9, v2

    new-instance v0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda1;

    invoke-direct/range {v0 .. v7}, Lsweet/tts/CrashReport$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;[BLkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v10, 0x0

    move-object/from16 v11, p0

    invoke-direct {v11, v2, v10, v9, v0}, Lsweet/tts/CrashReport;->walk([BIILkotlin/jvm/functions/Function4;)V

    .line 117
    check-cast v7, Ljava/lang/Iterable;

    .line 141
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lsweet/tts/CrashReport$Thr;

    .line 117
    invoke-virtual {v9}, Lsweet/tts/CrashReport$Thr;->getId()J

    move-result-wide v9

    iget-wide v11, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lsweet/tts/CrashReport$Thr;

    if-eqz v2, :cond_8

    .line 118
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v2}, Lsweet/tts/CrashReport$Thr;->getName()Ljava/lang/String;

    move-result-object v4

    iget-wide v9, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 119
    iget-object v11, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_2

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, " | abort: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v8

    .line 120
    :goto_1
    move-object v11, v6

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    move-object v12, v6

    check-cast v12, Ljava/lang/Iterable;

    const-string v6, "; "

    move-object v13, v6

    check-cast v13, Ljava/lang/CharSequence;

    const/16 v19, 0x3e

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v20}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, " | cause: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " | thread "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {v2}, Lsweet/tts/CrashReport$Thr;->getFrames()Ljava/util/ArrayList;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    const/16 v6, 0xc

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/Iterable;

    const-string v5, " <- "

    move-object v9, v5

    check-cast v9, Ljava/lang/CharSequence;

    const/16 v15, 0x3e

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | top frames: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 122
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "build: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v2}, Lsweet/tts/CrashReport$Thr;->getName()Ljava/lang/String;

    move-result-object v0

    iget-wide v9, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v2}, Lsweet/tts/CrashReport$Thr;->getFrames()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "CRASHING THREAD "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frames:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v2}, Lsweet/tts/CrashReport$Thr;->getFrames()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 143
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "    "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 145
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 146
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lsweet/tts/CrashReport$Thr;

    if-eq v7, v2, :cond_5

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 147
    :cond_6
    check-cast v0, Ljava/util/List;

    .line 145
    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0x3c

    .line 127
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 148
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsweet/tts/CrashReport$Thr;

    .line 128
    invoke-virtual {v1}, Lsweet/tts/CrashReport$Thr;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lsweet/tts/CrashReport$Thr;->getId()J

    move-result-wide v9

    invoke-virtual {v1}, Lsweet/tts/CrashReport$Thr;->getFrames()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const/16 v3, 0x8

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/Iterable;

    move-object v12, v5

    check-cast v12, Ljava/lang/CharSequence;

    const/16 v18, 0x3e

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "thread "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 130
    :cond_7
    new-instance v0, Lsweet/tts/CrashReport$Result;

    const/16 v1, 0x9c4

    invoke-static {v6, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    check-cast v8, Ljava/util/List;

    invoke-direct {v0, v1, v8}, Lsweet/tts/CrashReport$Result;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 117
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crashing thread not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
