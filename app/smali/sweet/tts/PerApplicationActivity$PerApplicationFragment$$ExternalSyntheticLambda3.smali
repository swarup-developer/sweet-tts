.class public final synthetic Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lsweet/tts/PerApplicationActivity$PerApplicationFragment;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lsweet/tts/PerApplicationActivity$PerApplicationFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda3;->f$0:Lsweet/tts/PerApplicationActivity$PerApplicationFragment;

    iput-object p2, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda3;->f$0:Lsweet/tts/PerApplicationActivity$PerApplicationFragment;

    iget-object v1, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment;->onCreatePreferences$lambda$7$lambda$6(Lsweet/tts/PerApplicationActivity$PerApplicationFragment;Landroid/content/Context;Ljava/lang/String;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
