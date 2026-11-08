.class public final Lsweet/tts/NumbersActivity$NumbersFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "NumbersActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/NumbersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NumbersFragment"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNumbersActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NumbersActivity.kt\nsweet/tts/NumbersActivity$NumbersFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,179:1\n1#2:180\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lsweet/tts/NumbersActivity$NumbersFragment;",
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

    .line 38
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method static final onCreatePreferences$lambda$10$lambda$9(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lsweet/tts/Prefs;->setCroreLakhEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method static final onCreatePreferences$lambda$12$lambda$11(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lsweet/tts/Prefs;->setOtpReadingEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method static final onCreatePreferences$lambda$14$lambda$13(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lsweet/tts/Prefs;->setOtpClipboardEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method static final onCreatePreferences$lambda$17$lambda$16(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lsweet/tts/Prefs;->setOtpClipboardDelaySec(I)V

    const/4 p0, 0x1

    return p0
.end method

.method static final onCreatePreferences$lambda$2$lambda$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsweet/tts/Prefs;->setLongNumberReadingMode(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method static final onCreatePreferences$lambda$5$lambda$4(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lsweet/tts/Prefs;->setLongNumberMinDigits(I)V

    const/4 p0, 0x1

    return p0
.end method

.method static final onCreatePreferences$lambda$8$lambda$7(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsweet/tts/Prefs;->setMobile13DigitPattern(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 18

    .line 40
    invoke-virtual/range {p0 .. p0}, Lsweet/tts/NumbersActivity$NumbersFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lsweet/tts/NumbersActivity$NumbersFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "createPreferenceScreen(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v2, Landroidx/preference/ListPreference;

    invoke-direct {v2, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 44
    const-string v3, "long_number_reading_mode"

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 45
    const-string v3, "Long Number Reading"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    sget-object v3, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v4, "\u092c\u0921\u093c\u0940 \u0938\u0902\u0916\u094d\u092f\u093e \u0915\u0948\u0938\u0947 \u092a\u0922\u093c\u0940 \u091c\u093e\u090f\u0964 None: \u091c\u0948\u0938\u0940 \u0939\u0948 \u0935\u0948\u0938\u0940\u0964 Ones, Tens, Hundreds: \u0938\u0902\u0916\u094d\u092f\u093e \u0915\u094b \u0926\u093e\u090f\u0901 \u0938\u0947 1, 2 \u092f\u093e 3 \u0905\u0902\u0915\u094b\u0902 \u0915\u0947 \u091f\u0941\u0915\u0921\u093c\u094b\u0902 \u092e\u0947\u0902 \u092c\u093e\u0901\u091f\u0915\u0930 \u0939\u0930 \u091f\u0941\u0915\u0921\u093c\u093e \u0938\u0902\u0916\u094d\u092f\u093e \u0915\u0940 \u0924\u0930\u0939 \u092a\u0922\u093c\u0947\u0917\u093e, \u091c\u0948\u0938\u0947 \'\u0926\u094b \u0938\u094c \u091a\u094c\u0902\u0924\u0940\u0938\'\u0964 Group of 2, 3, 4, 5: \u091f\u0941\u0915\u0921\u093c\u094b\u0902 \u092e\u0947\u0902 \u092c\u093e\u0901\u091f\u0915\u0930 \u0939\u0930 \u0905\u0902\u0915 \u0905\u0932\u0917-\u0905\u0932\u0917 \u092a\u0922\u093c\u0947\u0917\u093e, \u091f\u0941\u0915\u0921\u093c\u094b\u0902 \u0915\u0947 \u092c\u0940\u091a \u0930\u0941\u0915\u0915\u0930, \u091c\u0948\u0938\u0947 \'2 3 4\'\u0964 \u0909\u0926\u093e\u0939\u0930\u0923: 1234567890 \u0915\u094b Hundreds \u092e\u0947\u0902 \u092a\u0922\u093c\u0928\u0947 \u092a\u0930 \'1, 234, 567, 890\' \u0915\u0947 \u0939\u0930 \u091f\u0941\u0915\u0921\u093c\u0947 \u0938\u0902\u0916\u094d\u092f\u093e \u0915\u0940 \u0924\u0930\u0939 \u092a\u0922\u093c\u0947 \u091c\u093e\u090f\u0901\u0917\u0947\u0964 Group of 3 \u092e\u0947\u0902 \'1, 2 3 4, 5 6 7, 8 9 0\' \u0915\u0947 \u0939\u0930 \u0905\u0902\u0915 \u0905\u0932\u0917 \u092a\u0922\u093c\u0947 \u091c\u093e\u090f\u0901\u0917\u0947\u0964"

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v5}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s\n"

    const-string v7, "%s"

    if-eqz v3, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v3, v7

    check-cast v3, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v3, 0x8

    .line 48
    new-array v8, v3, [Ljava/lang/String;

    const-string v9, "None (No Processing)"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 49
    const-string v9, "Ones (say as a number)"

    const/4 v11, 0x1

    aput-object v9, v8, v11

    .line 50
    const-string v9, "Tens (say as a number)"

    aput-object v9, v8, v6

    .line 51
    const-string v9, "Hundreds (say as a number)"

    const/4 v12, 0x3

    aput-object v9, v8, v12

    .line 52
    const-string v9, "Group of 2 (say digit by digit, with pause)"

    const/4 v13, 0x4

    aput-object v9, v8, v13

    .line 53
    const-string v9, "Group of 3 (say digit by digit, with pause)"

    const/4 v14, 0x5

    aput-object v9, v8, v14

    .line 54
    const-string v9, "Group of 4 (say digit by digit, with pause)"

    const/4 v15, 0x6

    aput-object v9, v8, v15

    .line 55
    const-string v9, "Group of 5 (say digit by digit, with pause)"

    const/16 v16, 0x7

    aput-object v9, v8, v16

    .line 48
    check-cast v8, [Ljava/lang/CharSequence;

    .line 47
    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 57
    new-array v8, v3, [Ljava/lang/String;

    const-string v9, "none"

    aput-object v9, v8, v10

    const-string v17, "ones"

    aput-object v17, v8, v11

    const-string v17, "tens"

    aput-object v17, v8, v6

    const-string v17, "hundreds"

    aput-object v17, v8, v12

    const-string v17, "group_2"

    aput-object v17, v8, v13

    const-string v17, "group_3"

    aput-object v17, v8, v14

    const-string v17, "group_4"

    aput-object v17, v8, v15

    const-string v17, "group_5"

    aput-object v17, v8, v16

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 58
    sget-object v8, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v8}, Lsweet/tts/Prefs;->longNumberReadingMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2, v5}, Landroidx/preference/ListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v2, v10}, Landroidx/preference/ListPreference;->setPersistent(Z)V

    .line 67
    new-instance v8, Lsweet/tts/NumbersActivity$NumbersFragment$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lsweet/tts/NumbersActivity$NumbersFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 43
    check-cast v2, Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 76
    new-instance v2, Landroidx/preference/ListPreference;

    invoke-direct {v2, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 77
    const-string v8, "long_number_min_digits"

    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 78
    const-string v8, "Long Number Reading applies to"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    sget-object v8, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    move/from16 p1, v11

    const-string v11, "\u090a\u092a\u0930 \u0915\u0940 \u0938\u0947\u091f\u093f\u0902\u0917 \u0915\u093f\u0924\u0928\u0947 \u0905\u0902\u0915\u094b\u0902 \u0938\u0947 \u0932\u0917\u0947\u0964 8 \u091a\u0941\u0928\u0928\u0947 \u092a\u0930 \u0938\u093f\u0930\u094d\u092b 8 \u092f\u093e \u091c\u093c\u094d\u092f\u093e\u0926\u093e \u0905\u0902\u0915\u094b\u0902 \u0915\u0940 \u0938\u0902\u0916\u094d\u092f\u093e \u092a\u0930 \u0932\u0917\u0947\u0917\u0940, \u091b\u094b\u091f\u0940 \u0938\u0902\u0916\u094d\u092f\u093e \u0938\u093e\u092e\u093e\u0928\u094d\u092f \u092a\u0922\u093c\u0940 \u091c\u093e\u090f\u0917\u0940\u0964 4 \u0905\u0902\u0915 \u0905\u0915\u094d\u0938\u0930 \u0938\u093e\u0932 \u0939\u094b\u0924\u0947 \u0939\u0948\u0902, \u0907\u0938\u0932\u093f\u090f \u091a\u0941\u0928\u093e\u0935 5 \u0938\u0947 \u0936\u0941\u0930\u0942 \u0939\u094b\u0924\u093e \u0939\u0948\u0964"

    invoke-static {v8, v11, v5, v6, v5}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    check-cast v8, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    new-array v8, v15, [Ljava/lang/String;

    const-string v11, "5 Digits & Above"

    aput-object v11, v8, v10

    const-string v11, "6 Digits & Above"

    aput-object v11, v8, p1

    const-string v11, "7 Digits & Above"

    aput-object v11, v8, v6

    .line 81
    const-string v11, "8 Digits & Above"

    aput-object v11, v8, v12

    const-string v11, "9 Digits & Above"

    aput-object v11, v8, v13

    const-string v11, "10 Digits & Above"

    aput-object v11, v8, v14

    .line 80
    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 82
    new-array v8, v15, [Ljava/lang/String;

    const-string v11, "5"

    aput-object v11, v8, v10

    const-string v11, "6"

    aput-object v11, v8, p1

    const-string v11, "7"

    aput-object v11, v8, v6

    const-string v11, "8"

    aput-object v11, v8, v12

    const-string v11, "9"

    aput-object v11, v8, v13

    const-string v11, "10"

    aput-object v11, v8, v14

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 83
    sget-object v8, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v8}, Lsweet/tts/Prefs;->longNumberMinDigits()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2, v5}, Landroidx/preference/ListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v2, v10}, Landroidx/preference/ListPreference;->setPersistent(Z)V

    .line 86
    new-instance v8, Lsweet/tts/NumbersActivity$NumbersFragment$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lsweet/tts/NumbersActivity$NumbersFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    check-cast v2, Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 92
    new-instance v2, Landroidx/preference/ListPreference;

    invoke-direct {v2, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 93
    const-string v8, "mobile_13_digit_pattern"

    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 94
    const-string v8, "Mobile Number Reading"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    sget-object v8, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v11, "\u092e\u094b\u092c\u093e\u0907\u0932 \u0928\u0902\u092c\u0930 \u0915\u093f\u0928 \u091f\u0941\u0915\u0921\u093c\u094b\u0902 \u092e\u0947\u0902 \u092a\u0922\u093c\u093e \u091c\u093e\u090f, \u0907\u0938\u0915\u093e \u091a\u0941\u0928\u093e\u0935\u0964 \u0939\u0930 \u0905\u0902\u0915 \u0905\u0932\u0917-\u0905\u0932\u0917 \u092a\u0922\u093c\u093e \u091c\u093e\u090f\u0917\u093e \u0914\u0930 \u091f\u0941\u0915\u0921\u093c\u094b\u0902 \u0915\u0947 \u092c\u0940\u091a \u0930\u0941\u0915\u0947\u0917\u093e\u0964 \u0935\u093f\u0915\u0932\u094d\u092a\u094b\u0902 \u0915\u0947 \u0928\u093e\u092e \u092e\u0947\u0902 \u0926\u093f\u0916\u0947 \u091f\u0941\u0915\u0921\u093c\u0947 \u0939\u0940 \u0905\u0938\u0932 \u092e\u0947\u0902 \u092c\u0928\u0947\u0902\u0917\u0947\u0964 \u0909\u0926\u093e\u0939\u0930\u0923: +91 98765 43210 \u0915\u094b 5-5 \u0935\u093e\u0932\u0947 \u0935\u093f\u0915\u0932\u094d\u092a \u092e\u0947\u0902 \'9 1, 9 8 7 6 5, 4 3 2 1 0\' \u092a\u0922\u093c\u093e \u091c\u093e\u090f\u0917\u093e\u0964"

    invoke-static {v8, v11, v5, v6, v5}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    check-cast v8, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    new-array v8, v14, [Ljava/lang/String;

    const-string v11, "None (No Grouping)"

    aput-object v11, v8, v10

    .line 98
    const-string v11, "+91 12345 67890"

    aput-object v11, v8, p1

    .line 99
    const-string v11, "+91 123 456 7890"

    aput-object v11, v8, v6

    .line 100
    const-string v11, "+91 1234 567 890"

    aput-object v11, v8, v12

    .line 101
    const-string v11, "+91 12 34 56 78 90"

    aput-object v11, v8, v13

    .line 97
    check-cast v8, [Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 103
    new-array v8, v14, [Ljava/lang/String;

    aput-object v9, v8, v10

    const-string v9, "5-5"

    aput-object v9, v8, p1

    const-string v9, "3-3-4"

    aput-object v9, v8, v6

    const-string v9, "4-3-3"

    aput-object v9, v8, v12

    const-string v9, "2-2-2-2-2"

    aput-object v9, v8, v13

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 104
    sget-object v8, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v8}, Lsweet/tts/Prefs;->mobile13DigitPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, v5}, Landroidx/preference/ListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v2, v10}, Landroidx/preference/ListPreference;->setPersistent(Z)V

    .line 107
    new-instance v8, Lsweet/tts/NumbersActivity$NumbersFragment$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lsweet/tts/NumbersActivity$NumbersFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v8}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    check-cast v2, Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 115
    new-instance v2, Landroidx/preference/CheckBoxPreference;

    invoke-direct {v2, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 116
    const-string v8, "crore_lakh_enabled"

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 117
    const-string v8, "Amount Reading"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    sget-object v8, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v9, "\u0905\u0902\u0917\u094d\u0930\u0947\u091c\u093c\u0940 \u0906\u0935\u093e\u091c\u093c \u092e\u0947\u0902 6 \u0938\u0947 9 \u0905\u0902\u0915 \u0915\u0940 \u0930\u0915\u092e Million/Billion \u0915\u0940 \u091c\u0917\u0939 Lakh/Crore \u092e\u0947\u0902 \u092a\u0922\u093c\u0940 \u091c\u093e\u090f\u0917\u0940\u0964"

    const-string v11, "Uses Crore/Lakh instead of Billion/Million for English Voices"

    invoke-virtual {v8, v9, v11}, Lsweet/tts/Desc;->pick(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    sget-object v8, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v8}, Lsweet/tts/Prefs;->croreLakhEnabled()Z

    move-result v8

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    invoke-virtual {v2, v10}, Landroidx/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 121
    new-instance v8, Lsweet/tts/NumbersActivity$NumbersFragment$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lsweet/tts/NumbersActivity$NumbersFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    check-cast v2, Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 127
    new-instance v2, Landroidx/preference/CheckBoxPreference;

    invoke-direct {v2, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 128
    const-string v8, "otp_reading_enabled"

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 129
    const-string v8, "OTP Reading"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    sget-object v8, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v9, "\u0938\u0902\u0926\u0947\u0936 \u092e\u0947\u0902 OTP \u092e\u093f\u0932\u0947 \u0924\u094b \u0909\u0938\u0947 \u0905\u0902\u0915-\u0905\u0902\u0915 \u0915\u0930\u0915\u0947 \u0930\u0941\u0915-\u0930\u0941\u0915\u0915\u0930 \u092a\u0922\u093c\u0947\u0917\u093e\u0964 OTP \u092a\u0922\u093c\u0928\u0947 \u0915\u0947 \u092c\u093e\u0926 40 \u0938\u0947\u0915\u0902\u0921 \u0924\u0915 \u0906\u092a \u092b\u094b\u0928 \u0915\u094b \u0936\u0947\u0915 \u0915\u0930\u0947\u0902\u0917\u0947, \u0924\u094b \u0939\u0930 \u0936\u0947\u0915 \u092a\u0930 \u0935\u0939 OTP \u092b\u093f\u0930 \u0938\u0947 \u0938\u0941\u0928\u093e\u090f\u0917\u093e\u0964 \u0928\u092f\u093e OTP \u0906\u0924\u0947 \u0939\u0940 40 \u0938\u0947\u0915\u0902\u0921 \u092b\u093f\u0930 \u0938\u0947 \u0936\u0941\u0930\u0942 \u0939\u094b \u091c\u093e\u0924\u0947 \u0939\u0948\u0902\u0964"

    invoke-static {v8, v9, v5, v6, v5}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    sget-object v8, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v8}, Lsweet/tts/Prefs;->otpReadingEnabled()Z

    move-result v8

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    invoke-virtual {v2, v10}, Landroidx/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 133
    new-instance v8, Lsweet/tts/NumbersActivity$NumbersFragment$$ExternalSyntheticLambda4;

    invoke-direct {v8}, Lsweet/tts/NumbersActivity$NumbersFragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    check-cast v2, Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 140
    new-instance v2, Landroidx/preference/CheckBoxPreference;

    invoke-direct {v2, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 141
    const-string v8, "otp_clipboard_enabled"

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 142
    const-string v8, "Copy OTP to clipboard"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    sget-object v8, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v9, "\u091a\u0941\u0928\u0947 \u0939\u0941\u090f \u0938\u0947\u0915\u0902\u0921 \u0915\u0947 \u092c\u093e\u0926 OTP \u0905\u092a\u0928\u0947 \u0906\u092a clipboard \u092e\u0947\u0902 \u0915\u0949\u092a\u0940 \u0939\u094b \u091c\u093e\u090f\u0917\u093e, \u0924\u093e\u0915\u093f \u0906\u092a \u0909\u0938\u0947 OTP \u092d\u0930\u0928\u0947 \u0915\u0940 \u091c\u0917\u0939 \u092a\u0930 \u0906\u0930\u093e\u092e \u0938\u0947 paste \u0915\u0930 \u0938\u0915\u0947\u0902\u0964"

    invoke-static {v8, v9, v5, v6, v5}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    sget-object v8, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v8}, Lsweet/tts/Prefs;->otpClipboardEnabled()Z

    move-result v8

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 145
    invoke-virtual {v2, v10}, Landroidx/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 146
    new-instance v8, Lsweet/tts/NumbersActivity$NumbersFragment$$ExternalSyntheticLambda5;

    invoke-direct {v8}, Lsweet/tts/NumbersActivity$NumbersFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v2, v8}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    check-cast v2, Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 152
    new-instance v2, Landroidx/preference/ListPreference;

    invoke-direct {v2, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 153
    const-string v0, "otp_clipboard_delay_sec"

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 154
    const-string v0, "Copy OTP after"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    sget-object v0, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v8, "OTP \u0906\u0928\u0947 \u0915\u0947 \u0915\u093f\u0924\u0928\u0947 \u0938\u0947\u0915\u0902\u0921 \u092c\u093e\u0926 clipboard \u092e\u0947\u0902 \u0915\u0949\u092a\u0940 \u0939\u094b\u0964 \u0926\u0947\u0930 \u0930\u0916\u0928\u0947 \u0938\u0947 \'Copied\' \u0915\u0940 \u0918\u094b\u0937\u0923\u093e \u0938\u0902\u0926\u0947\u0936 \u092a\u0922\u093c\u0924\u0947 \u0938\u092e\u092f \u092c\u0940\u091a \u092e\u0947\u0902 \u0928\u0939\u0940\u0902 \u0906\u0924\u0940\u0964"

    invoke-static {v0, v8, v5, v6, v5}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_3
    move-object v0, v7

    check-cast v0, Ljava/lang/CharSequence;

    :goto_3
    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    new-array v0, v3, [Ljava/lang/String;

    move v4, v10

    :goto_4
    if-ge v4, v3, :cond_5

    if-nez v4, :cond_4

    const-string v6, "1 second"

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v4, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    aput-object v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 157
    new-array v0, v3, [Ljava/lang/String;

    move v4, v10

    :goto_6
    if-ge v4, v3, :cond_6

    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    move v4, v6

    goto :goto_6

    :cond_6
    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 158
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0}, Lsweet/tts/Prefs;->otpClipboardDelaySec()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2, v5}, Landroidx/preference/ListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v2, v10}, Landroidx/preference/ListPreference;->setPersistent(Z)V

    .line 161
    new-instance v0, Lsweet/tts/NumbersActivity$NumbersFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lsweet/tts/NumbersActivity$NumbersFragment$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    check-cast v2, Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    move-object/from16 v0, p0

    .line 175
    invoke-virtual {v0, v1}, Lsweet/tts/NumbersActivity$NumbersFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method
