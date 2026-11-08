.class public final synthetic Lsweet/tts/CrashReport$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda3;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda3;->f$1:[B

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda3;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lsweet/tts/CrashReport$$ExternalSyntheticLambda3;->f$1:[B

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lsweet/tts/CrashReport;->parse$lambda$5$lambda$3(Ljava/util/ArrayList;[BIJII)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
