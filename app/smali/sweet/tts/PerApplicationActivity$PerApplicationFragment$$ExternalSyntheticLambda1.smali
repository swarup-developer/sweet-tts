.class public final synthetic Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lsweet/tts/PerApplicationActivity$PerApplicationFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lsweet/tts/PerApplicationActivity$PerApplicationFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda1;->f$1:Lsweet/tts/PerApplicationActivity$PerApplicationFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lsweet/tts/PerApplicationActivity$PerApplicationFragment$$ExternalSyntheticLambda1;->f$1:Lsweet/tts/PerApplicationActivity$PerApplicationFragment;

    invoke-static {v0, p0, p1}, Lsweet/tts/PerApplicationActivity$PerApplicationFragment;->onCreatePreferences$lambda$1$lambda$0(Landroid/content/Context;Lsweet/tts/PerApplicationActivity$PerApplicationFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
