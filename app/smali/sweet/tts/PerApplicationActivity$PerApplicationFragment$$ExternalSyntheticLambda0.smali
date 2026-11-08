.class public final synthetic Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lsweet/tts/PerApplicationActivity$PerApplicationFragment;

.field public final synthetic f$2:Lsweet/tts/LongPressPreference;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lsweet/tts/PerApplicationActivity$PerApplicationFragment;Lsweet/tts/LongPressPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda0;->f$1:Lsweet/tts/PerApplicationActivity$PerApplicationFragment;

    iput-object p3, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda0;->f$2:Lsweet/tts/LongPressPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda0;->f$1:Lsweet/tts/PerApplicationActivity$PerApplicationFragment;

    iget-object p0, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda0;->f$2:Lsweet/tts/LongPressPreference;

    invoke-static {v0, v1, p0, p1, p2}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment;->onCreatePreferences$lambda$5$lambda$4(Ljava/lang/String;Lsweet/tts/PerApplicationActivity$PerApplicationFragment;Lsweet/tts/LongPressPreference;Landroid/content/DialogInterface;I)V

    return-void
.end method
