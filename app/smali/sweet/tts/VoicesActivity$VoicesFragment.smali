.class public final Lsweet/tts/VoicesActivity$VoicesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "VoicesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/VoicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoicesFragment"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoicesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoicesActivity.kt\nsweet/tts/VoicesActivity$VoicesFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,233:1\n1563#2:234\n1634#2,3:235\n1563#2:238\n1634#2,3:239\n1#3:242\n37#4:243\n36#4,3:244\n37#4:247\n36#4,3:248\n*S KotlinDebug\n*F\n+ 1 VoicesActivity.kt\nsweet/tts/VoicesActivity$VoicesFragment\n*L\n75#1:234\n75#1:235,3\n110#1:238\n110#1:239,3\n211#1:243\n211#1:244,3\n212#1:247\n212#1:248,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001c\u0010\u000c\u001a\u00020\r2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0002J\u0008\u0010\u0013\u001a\u00020\rH\u0016JV\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000f2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\r0!H\u0002R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lsweet/tts/VoicesActivity$VoicesFragment;",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "<init>",
        "()V",
        "onCreateRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "parent",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreatePreferences",
        "",
        "rootKey",
        "",
        "eloquenceRow",
        "Landroidx/preference/Preference;",
        "refreshEloquenceRow",
        "onResume",
        "addVoicePicker",
        "screen",
        "Landroidx/preference/PreferenceScreen;",
        "context",
        "Landroid/content/Context;",
        "label",
        "options",
        "",
        "Lcom/nuance/android/vocalizer/VocalizerVoice;",
        "chosen",
        "includeMatchLanguage",
        "",
        "onChosen",
        "Lkotlin/Function1;",
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


# instance fields
.field private eloquenceRow:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private final addVoicePicker(Landroidx/preference/PreferenceScreen;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceScreen;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/nuance/android/vocalizer/VocalizerVoice;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Select voice for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 184
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    .line 185
    new-instance p3, Landroidx/preference/Preference;

    invoke-direct {p3, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 186
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p3, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nuance/android/vocalizer/VocalizerVoice;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " (only voice available)"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Unavailable"

    :goto_0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p3, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p3, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 185
    invoke-virtual {p1, p3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 192
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    if-eqz p6, :cond_2

    .line 195
    const-string p6, "Match Language of Text"

    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    const-string p6, "__match_language__"

    invoke-interface {v1, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_2
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 199
    sget-object v3, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v3, p6}, Lsweet/tts/VoiceCatalog;->isMissingPlaceholder(Lcom/nuance/android/vocalizer/VocalizerVoice;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p6, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (not installed)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    iget-object v3, p6, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object p6, p6, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-interface {v1, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    :cond_4
    new-instance p4, Landroidx/preference/ListPreference;

    invoke-direct {p4, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 203
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p6, "picker_"

    invoke-direct {p2, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroidx/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 204
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p4, p0}, Landroidx/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    const-string p0, ""

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p4, p0}, Landroidx/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {p4, v2}, Landroidx/preference/ListPreference;->setPersistent(Z)V

    .line 211
    move-object p0, v0

    check-cast p0, Ljava/util/Collection;

    .line 246
    new-array p2, v2, [Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    .line 211
    invoke-virtual {p4, p0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 212
    move-object p0, v1

    check-cast p0, Ljava/util/Collection;

    .line 250
    new-array p2, v2, [Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    .line 212
    invoke-virtual {p4, p0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 216
    invoke-virtual {p4, p0}, Landroidx/preference/ListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 219
    new-instance p0, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1, v0}, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p4, p0}, Landroidx/preference/ListPreference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 224
    new-instance p0, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda1;

    invoke-direct {p0, p7}, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p4, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 228
    invoke-virtual {p4, p5}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 202
    check-cast p4, Landroidx/preference/Preference;

    invoke-virtual {p1, p4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method static synthetic addVoicePicker$default(Lsweet/tts/VoicesActivity$VoicesFragment;Landroidx/preference/PreferenceScreen;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 8

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    .line 171
    invoke-direct/range {v0 .. v7}, Lsweet/tts/VoicesActivity$VoicesFragment;->addVoicePicker(Landroidx/preference/PreferenceScreen;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final addVoicePicker$lambda$16$lambda$14(Ljava/util/List;Ljava/util/List;Landroidx/preference/ListPreference;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "pref"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 221
    invoke-interface {p0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-eqz p2, :cond_0

    if-ltz p0, :cond_0

    .line 222
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 p0, p0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " of "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Not set"

    :goto_0
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method static final addVoicePicker$lambda$16$lambda$15(Lkotlin/jvm/functions/Function1;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method static final onCreatePreferences$lambda$11$lambda$10(Lsweet/tts/VoicesActivity$VoicesFragment;Landroid/content/Context;Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lsweet/tts/EloquenceSettingsActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Lsweet/tts/VoicesActivity$VoicesFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method static final onCreatePreferences$lambda$3$lambda$2(Lsweet/tts/VoicesActivity$VoicesFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0, p1}, Lsweet/tts/Prefs;->setEmojiVoice(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lsweet/tts/VoicesActivity$VoicesFragment;->refreshEloquenceRow()V

    .line 86
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreatePreferences$lambda$5$lambda$4(Lsweet/tts/VoicesActivity$VoicesFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0, p1}, Lsweet/tts/Prefs;->setNumberVoice(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lsweet/tts/VoicesActivity$VoicesFragment;->refreshEloquenceRow()V

    .line 96
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreatePreferences$lambda$7(Ljava/lang/String;Lsweet/tts/VoicesActivity$VoicesFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0, p0, p2}, Lsweet/tts/Prefs;->setVoiceFor(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p1}, Lsweet/tts/VoicesActivity$VoicesFragment;->refreshEloquenceRow()V

    .line 118
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreatePreferences$lambda$9$lambda$8(Landroid/content/Context;Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object p2, Lsweet/tts/PlaySample;->INSTANCE:Lsweet/tts/PlaySample;

    invoke-virtual {p2, p0, p1}, Lsweet/tts/PlaySample;->play(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private final refreshEloquenceRow()V
    .locals 4

    .line 156
    iget-object p0, p0, Lsweet/tts/VoicesActivity$VoicesFragment;->eloquenceRow:Landroidx/preference/Preference;

    if-nez p0, :cond_0

    return-void

    .line 158
    :cond_0
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Lsweet/tts/Prefs;->voiceFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ETI Eloquence"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0}, Lsweet/tts/Prefs;->numberVoice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0}, Lsweet/tts/Prefs;->emojiVoice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 159
    sget-object v0, Lsweet/tts/EloquenceVoice;->INSTANCE:Lsweet/tts/EloquenceVoice;

    sget-object v1, Lsweet/tts/EloquenceVoice;->INSTANCE:Lsweet/tts/EloquenceVoice;

    invoke-virtual {v1}, Lsweet/tts/EloquenceVoice;->preset()I

    move-result v1

    invoke-virtual {v0, v1}, Lsweet/tts/EloquenceVoice;->name(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsweet/tts/EloquenceVoice;->INSTANCE:Lsweet/tts/EloquenceVoice;

    sget-object v2, Lsweet/tts/EloquenceVoice;->INSTANCE:Lsweet/tts/EloquenceVoice;

    invoke-virtual {v2}, Lsweet/tts/EloquenceVoice;->preset()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lsweet/tts/EloquenceVoice;->step(II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Natural voice "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 12

    .line 60
    invoke-virtual {p0}, Lsweet/tts/VoicesActivity$VoicesFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string p1, "requireContext(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lsweet/tts/VoicesActivity$VoicesFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string p1, "createPreferenceScreen(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object p1, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p1}, Lsweet/tts/VoiceCatalog;->getVoices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    new-instance p1, Landroidx/preference/Preference;

    invoke-direct {p1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 65
    const-string p2, "Voice list not loaded yet"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    const-string p2, "Speak something through All In One TTS once first, then come back here."

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 67
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 64
    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 69
    invoke-virtual {p0, v1}, Lsweet/tts/VoicesActivity$VoicesFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void

    .line 75
    :cond_0
    sget-object p1, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p1}, Lsweet/tts/VoiceCatalog;->getVoices()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 234
    new-instance p2, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {p1, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 235
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 236
    check-cast v0, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 75
    iget-object v0, v0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    .line 236
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_1
    check-cast p2, Ljava/util/List;

    .line 234
    check-cast p2, Ljava/lang/Iterable;

    .line 75
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 76
    move-object p2, p0

    check-cast p2, Lsweet/tts/VoicesActivity$VoicesFragment;

    .line 77
    sget-object p2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p2}, Lsweet/tts/Prefs;->emojiVoice()Ljava/lang/String;

    move-result-object p2

    .line 80
    const-string v8, "__match_language__"

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_4

    if-eqz p2, :cond_2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    sget-object v0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    sget-object v3, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v3}, Lsweet/tts/VoiceCatalog;->getVoices()Ljava/util/List;

    move-result-object v3

    const-string v4, "emoji"

    invoke-virtual {v0, v4, v3}, Lsweet/tts/VoiceCatalog;->defaultVoiceFor(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/android/vocalizer/VocalizerVoice;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    move-object v5, v0

    goto :goto_2

    :cond_3
    move-object v5, v11

    goto :goto_2

    :cond_4
    :goto_1
    move-object v5, p2

    :goto_2
    if-eqz v5, :cond_5

    .line 82
    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    sget-object p2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p2, v5}, Lsweet/tts/Prefs;->setEmojiVoice(Ljava/lang/String;)V

    .line 83
    :cond_5
    sget-object p2, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    sget-object v0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v0}, Lsweet/tts/VoiceCatalog;->getVoices()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lsweet/tts/VoiceCatalog;->sortedForDisplay(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v7, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda2;-><init>(Lsweet/tts/VoicesActivity$VoicesFragment;)V

    const-string v3, "Emojis"

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lsweet/tts/VoicesActivity$VoicesFragment;->addVoicePicker(Landroidx/preference/PreferenceScreen;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    .line 89
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0}, Lsweet/tts/Prefs;->numberVoice()Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    if-eqz p0, :cond_6

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 91
    :cond_6
    sget-object p1, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    sget-object p2, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p2}, Lsweet/tts/VoiceCatalog;->getVoices()Ljava/util/List;

    move-result-object p2

    const-string v3, "number"

    invoke-virtual {p1, v3, p2}, Lsweet/tts/VoiceCatalog;->defaultVoiceFor(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/android/vocalizer/VocalizerVoice;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    move-object v5, p1

    goto :goto_4

    :cond_7
    move-object v5, v11

    goto :goto_4

    :cond_8
    :goto_3
    move-object v5, p0

    :goto_4
    if-eqz v5, :cond_9

    .line 92
    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0, v5}, Lsweet/tts/Prefs;->setNumberVoice(Ljava/lang/String;)V

    .line 93
    :cond_9
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    sget-object p1, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p1}, Lsweet/tts/VoiceCatalog;->getVoices()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsweet/tts/VoiceCatalog;->sortedForDisplay(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v7, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0}, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda3;-><init>(Lsweet/tts/VoicesActivity$VoicesFragment;)V

    const-string v3, "Numbers"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v7}, Lsweet/tts/VoicesActivity$VoicesFragment;->addVoicePicker(Landroidx/preference/PreferenceScreen;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    .line 107
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p0}, Lsweet/tts/VoiceCatalog;->getLANGUAGES()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 108
    sget-object p1, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p1, p2}, Lsweet/tts/Prefs;->isLanguageEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 109
    sget-object p1, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    sget-object v4, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v4, p2}, Lsweet/tts/VoiceCatalog;->voicesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4}, Lsweet/tts/VoiceCatalog;->sortedForDisplay(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 110
    move-object p1, v4

    check-cast p1, Ljava/lang/Iterable;

    .line 238
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p1, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 239
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 240
    check-cast v6, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 110
    iget-object v6, v6, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    .line 240
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 241
    :cond_b
    check-cast v5, Ljava/util/List;

    .line 238
    check-cast v5, Ljava/lang/Iterable;

    .line 110
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 111
    sget-object v5, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v5, p2}, Lsweet/tts/Prefs;->voiceFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 112
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    move-object p1, v5

    goto :goto_7

    .line 113
    :cond_c
    sget-object p1, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p1, p2, v4}, Lsweet/tts/VoiceCatalog;->defaultVoiceFor(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/android/vocalizer/VocalizerVoice;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    goto :goto_7

    :cond_d
    move-object p1, v11

    :goto_7
    if-eqz p1, :cond_e

    .line 114
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    sget-object v5, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v5, p2, p1}, Lsweet/tts/Prefs;->setVoiceFor(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_e
    new-instance v7, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v7, p2, v0}, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Lsweet/tts/VoicesActivity$VoicesFragment;)V

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v9}, Lsweet/tts/VoicesActivity$VoicesFragment;->addVoicePicker$default(Lsweet/tts/VoicesActivity$VoicesFragment;Landroidx/preference/PreferenceScreen;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 126
    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 127
    new-instance p1, Landroidx/preference/Preference;

    invoke-direct {p1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Play Sample: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v3, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2, p2}, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 127
    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 136
    :cond_f
    const-string p1, "en"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 137
    new-instance p1, Landroidx/preference/Preference;

    invoke-direct {p1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 138
    const-string p2, "Eloquence voice settings"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    new-instance p2, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, v0, v2}, Lsweet/tts/VoicesActivity$VoicesFragment$$ExternalSyntheticLambda6;-><init>(Lsweet/tts/VoicesActivity$VoicesFragment;Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 137
    iput-object p1, v0, Lsweet/tts/VoicesActivity$VoicesFragment;->eloquenceRow:Landroidx/preference/Preference;

    .line 144
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_5

    .line 148
    :cond_10
    invoke-virtual {v0, v1}, Lsweet/tts/VoicesActivity$VoicesFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 149
    invoke-direct {v0}, Lsweet/tts/VoicesActivity$VoicesFragment;->refreshEloquenceRow()V

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const-string p1, "onCreateRecyclerView(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x28

    .line 55
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    return-object p0
.end method

.method public onResume()V
    .locals 0

    .line 163
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 164
    invoke-direct {p0}, Lsweet/tts/VoicesActivity$VoicesFragment;->refreshEloquenceRow()V

    return-void
.end method
