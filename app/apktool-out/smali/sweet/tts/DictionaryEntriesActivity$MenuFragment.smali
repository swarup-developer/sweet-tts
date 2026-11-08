.class public final Lsweet/tts/DictionaryEntriesActivity$MenuFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "DictionaryEntriesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/DictionaryEntriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuFragment"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDictionaryEntriesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DictionaryEntriesActivity.kt\nsweet/tts/DictionaryEntriesActivity$MenuFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,256:1\n1#2:257\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lsweet/tts/DictionaryEntriesActivity$MenuFragment;",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "<init>",
        "()V",
        "onCreatePreferences",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "rootKey",
        "",
        "entryCountSummary",
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

    .line 61
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private final entryCountSummary()Ljava/lang/String;
    .locals 3

    .line 89
    sget-object p0, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {p0}, Lsweet/tts/Dictionary;->allTargets()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsweet/tts/Dictionary$Target;

    sget-object v2, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v1}, Lsweet/tts/Dictionary$Target;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lsweet/tts/Dictionary;->entriesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 90
    const-string p0, "No entries yet"

    return-object p0

    :cond_1
    const/4 p0, 0x1

    if-ne v0, p0, :cond_2

    const-string p0, "y"

    goto :goto_1

    :cond_2
    const-string p0, "ies"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onCreatePreferences$lambda$2$lambda$1(Lsweet/tts/DictionaryEntriesActivity$MenuFragment;Landroidx/preference/Preference;)Z
    .locals 9

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivity$MenuFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "requireActivity(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    new-instance v6, Lsweet/tts/DictionaryEntriesActivity$MenuFragment$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lsweet/tts/DictionaryEntriesActivity$MenuFragment$$ExternalSyntheticLambda0;-><init>(Lsweet/tts/DictionaryEntriesActivity$MenuFragment;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lsweet/tts/DictionaryEntriesActivityKt;->showEntryDialog$default(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method static final onCreatePreferences$lambda$2$lambda$1$lambda$0(Lsweet/tts/DictionaryEntriesActivity$MenuFragment;)Lkotlin/Unit;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivity$MenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of v0, p0, Lsweet/tts/DictionaryEntriesActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lsweet/tts/DictionaryEntriesActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivity;->refreshEditListIfShowing()V

    .line 72
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreatePreferences$lambda$4$lambda$3(Lsweet/tts/DictionaryEntriesActivity$MenuFragment;Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivity$MenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lsweet/tts/DictionaryEntriesActivity;

    if-eqz p1, :cond_0

    check-cast p0, Lsweet/tts/DictionaryEntriesActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivity;->showEditList()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    .line 63
    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivity$MenuFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "requireContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lsweet/tts/DictionaryEntriesActivity$MenuFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v0, "createPreferenceScreen(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v1, "Add Entry"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Add Entry \u0938\u0947 \u0928\u0908 \u092a\u094d\u0930\u0935\u093f\u0937\u094d\u091f\u093f \u091c\u094b\u0921\u093c\u093f\u090f: \u0915\u094c\u0928 \u0938\u093e \u0936\u092c\u094d\u0926 \u0914\u0930 \u0909\u0938\u0915\u0940 \u091c\u0917\u0939 \u0915\u094d\u092f\u093e \u092c\u094b\u0932\u0928\u093e \u0939\u0948\u0964 \u0930\u093f\u092a\u094d\u0932\u0947\u0938\u092e\u0947\u0902\u091f \u0916\u093e\u0932\u0940 \u091b\u094b\u0921\u093c\u0947\u0902\u0917\u0947 \u0924\u094b \u0935\u0939 \u0936\u092c\u094d\u0926 \u092c\u094b\u0932\u093e \u0939\u0940 \u0928\u0939\u0940\u0902 \u091c\u093e\u090f\u0917\u093e\u0964 \u091c\u0948\u0938\u0947 Maybe \u092a\u0939\u0932\u0947 \u0938\u0947 \u0916\u093e\u0932\u0940 \u0930\u093f\u092a\u094d\u0932\u0947\u0938\u092e\u0947\u0902\u091f \u0915\u0947 \u0938\u093e\u0925 \u091c\u0941\u0921\u093c\u093e \u0939\u0948, \u0907\u0938\u0932\u093f\u090f WhatsApp \u0915\u0940 \u091a\u0948\u091f \u092e\u0947\u0902 \u092f\u0939 \u0932\u0947\u092c\u0932 \u0938\u0941\u0928\u093e\u0908 \u0928\u0939\u0940\u0902 \u0926\u0947\u0924\u093e\u0964"

    invoke-static {v1, v4, v2, v3, v2}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v1, Lsweet/tts/DictionaryEntriesActivity$MenuFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lsweet/tts/DictionaryEntriesActivity$MenuFragment$$ExternalSyntheticLambda1;-><init>(Lsweet/tts/DictionaryEntriesActivity$MenuFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 76
    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 77
    const-string p1, "Edit Entries"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-direct {p0}, Lsweet/tts/DictionaryEntriesActivity$MenuFragment;->entryCountSummary()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    new-instance p1, Lsweet/tts/DictionaryEntriesActivity$MenuFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lsweet/tts/DictionaryEntriesActivity$MenuFragment$$ExternalSyntheticLambda2;-><init>(Lsweet/tts/DictionaryEntriesActivity$MenuFragment;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 85
    invoke-virtual {p0, p2}, Lsweet/tts/DictionaryEntriesActivity$MenuFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method
