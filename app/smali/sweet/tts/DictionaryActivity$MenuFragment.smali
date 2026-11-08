.class public final Lsweet/tts/DictionaryActivity$MenuFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "DictionaryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/DictionaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuFragment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lsweet/tts/DictionaryActivity$MenuFragment;",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "<init>",
        "()V",
        "onCreatePreferences",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "rootKey",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method static final onCreatePreferences$lambda$1$lambda$0(Lsweet/tts/DictionaryActivity$MenuFragment;Landroid/content/Context;Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lsweet/tts/DictionaryEntriesActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Lsweet/tts/DictionaryActivity$MenuFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method static final onCreatePreferences$lambda$3$lambda$2(Lsweet/tts/DictionaryActivity$MenuFragment;Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object p1, Lsweet/tts/ImportExport;->INSTANCE:Lsweet/tts/ImportExport;

    invoke-virtual {p0}, Lsweet/tts/DictionaryActivity$MenuFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1, p0}, Lsweet/tts/ImportExport;->exportDictionary(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method static final onCreatePreferences$lambda$5$lambda$4(Lsweet/tts/DictionaryActivity$MenuFragment;Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object p1, Lsweet/tts/ImportExport;->INSTANCE:Lsweet/tts/ImportExport;

    invoke-virtual {p0}, Lsweet/tts/DictionaryActivity$MenuFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1, p0}, Lsweet/tts/ImportExport;->importDictionary(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    .line 47
    invoke-virtual {p0}, Lsweet/tts/DictionaryActivity$MenuFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "requireContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lsweet/tts/DictionaryActivity$MenuFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v0, "createPreferenceScreen(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v1, "Dictionary"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v2, "\u0915\u093f\u0938\u0940 \u0936\u092c\u094d\u0926 \u0915\u0940 \u091c\u0917\u0939 \u0926\u0942\u0938\u0930\u093e \u0936\u092c\u094d\u0926 \u092c\u094b\u0932\u0935\u093e\u0928\u093e, \u091c\u0948\u0938\u0947 \u0917\u0932\u0924 \u0909\u091a\u094d\u091a\u093e\u0930\u0923 \u0920\u0940\u0915 \u0915\u0930\u0928\u093e\u0964 \u0930\u093f\u092a\u094d\u0932\u0947\u0938\u092e\u0947\u0902\u091f \u0916\u093e\u0932\u0940 \u091b\u094b\u0921\u093c\u0947\u0902\u0917\u0947 \u0924\u094b \u0935\u0939 \u0936\u092c\u094d\u0926 \u092c\u094b\u0932\u093e \u0939\u0940 \u0928\u0939\u0940\u0902 \u091c\u093e\u090f\u0917\u093e\u0964"

    const-string v3, "Add or edit find/replace entries"

    invoke-virtual {v1, v2, v3}, Lsweet/tts/Desc;->pick(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    new-instance v1, Lsweet/tts/DictionaryActivity$MenuFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lsweet/tts/DictionaryActivity$MenuFragment$$ExternalSyntheticLambda0;-><init>(Lsweet/tts/DictionaryActivity$MenuFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 50
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 58
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 59
    const-string v1, "Backup Dictionary"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v2, "\u0921\u093f\u0915\u094d\u0936\u0928\u0930\u0940 \u0915\u094b \u092b\u093e\u0907\u0932 \u092e\u0947\u0902 \u0938\u0947\u0935 \u0915\u0930\u0924\u093e \u0939\u0948\u0964"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v1, Lsweet/tts/DictionaryActivity$MenuFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lsweet/tts/DictionaryActivity$MenuFragment$$ExternalSyntheticLambda1;-><init>(Lsweet/tts/DictionaryActivity$MenuFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 58
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 66
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 67
    const-string p1, "Restore Dictionary"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    sget-object p1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v1, "\u092a\u0939\u0932\u0947 \u0938\u0947\u0935 \u0915\u0940 \u0939\u0941\u0908 \u0921\u093f\u0915\u094d\u0936\u0928\u0930\u0940 \u0915\u0940 \u092b\u093e\u0907\u0932 \u0935\u093e\u092a\u0938 \u0932\u093e\u0924\u093e \u0939\u0948\u0964"

    invoke-static {p1, v1, v3, v4, v3}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    new-instance p1, Lsweet/tts/DictionaryActivity$MenuFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lsweet/tts/DictionaryActivity$MenuFragment$$ExternalSyntheticLambda2;-><init>(Lsweet/tts/DictionaryActivity$MenuFragment;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 75
    invoke-virtual {p0, p2}, Lsweet/tts/DictionaryActivity$MenuFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method
