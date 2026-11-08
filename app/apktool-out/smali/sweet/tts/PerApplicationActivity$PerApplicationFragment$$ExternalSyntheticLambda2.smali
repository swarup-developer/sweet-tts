.class public final synthetic Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lsweet/tts/PerApplicationActivity$PerApplicationFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lsweet/tts/PerApplicationActivity$PerApplicationFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda2;->f$3:Lsweet/tts/PerApplicationActivity$PerApplicationFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda2;->f$3:Lsweet/tts/PerApplicationActivity$PerApplicationFragment;

    check-cast p1, Lsweet/tts/LongPressPreference;

    invoke-static {v0, v1, v2, p0, p1}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment;->onCreatePreferences$lambda$5(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lsweet/tts/PerApplicationActivity$PerApplicationFragment;Lsweet/tts/LongPressPreference;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
