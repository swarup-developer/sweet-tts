.class public final synthetic Lsweet/tts/DictionaryActivity$MenuFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lsweet/tts/DictionaryActivity$MenuFragment;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lsweet/tts/DictionaryActivity$MenuFragment;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/DictionaryActivity$MenuFragment$$ExternalSyntheticLambda0;->f$0:Lsweet/tts/DictionaryActivity$MenuFragment;

    iput-object p2, p0, Lsweet/tts/DictionaryActivity$MenuFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lsweet/tts/DictionaryActivity$MenuFragment$$ExternalSyntheticLambda0;->f$0:Lsweet/tts/DictionaryActivity$MenuFragment;

    iget-object p0, p0, Lsweet/tts/DictionaryActivity$MenuFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lsweet/tts/DictionaryActivity$MenuFragment;->onCreatePreferences$lambda$1$lambda$0(Lsweet/tts/DictionaryActivity$MenuFragment;Landroid/content/Context;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
