.class public final synthetic Lsweet/tts/LoggingKt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/app/Application;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/LoggingKt$$ExternalSyntheticLambda10;->f$0:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lsweet/tts/LoggingKt$$ExternalSyntheticLambda10;->f$0:Landroid/app/Application;

    invoke-static {p0}, Lsweet/tts/LoggingKt;->deviceReportLines$lambda$11(Landroid/app/Application;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
