.class public final Lsweet/tts/Prefs;
.super Ljava/lang/Object;
.source "Prefs.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrefs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Prefs.kt\nsweet/tts/Prefs\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,457:1\n774#2:458\n865#2,2:459\n1869#2,2:461\n1563#2:464\n1634#2,3:465\n774#2:468\n865#2,2:469\n1563#2:471\n1634#2,3:472\n774#2:475\n865#2,2:476\n1563#2:478\n1634#2,3:479\n774#2:482\n865#2,2:483\n1563#2:485\n1634#2,3:486\n827#2:489\n855#2,2:490\n2746#2,3:492\n827#2:495\n855#2,2:496\n1563#2:498\n1634#2,3:499\n774#2:502\n865#2,2:503\n1#3:463\n488#4,7:505\n*S KotlinDebug\n*F\n+ 1 Prefs.kt\nsweet/tts/Prefs\n*L\n112#1:458\n112#1:459,2\n112#1:461,2\n321#1:464\n321#1:465,3\n321#1:468\n321#1:469,2\n327#1:471\n327#1:472,3\n328#1:475\n328#1:476,2\n346#1:478\n346#1:479,3\n347#1:482\n347#1:483,2\n349#1:485\n349#1:486,3\n363#1:489\n363#1:490,2\n367#1:492,3\n380#1:495\n380#1:496,2\n384#1:498\n384#1:499,3\n385#1:502\n385#1:503,2\n398#1:505,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\"\n\u0002\u0008)\n\u0002\u0010\t\n\u0002\u0008\u0013\n\u0002\u0010$\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\nJ\u000e\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u0010\u001a\u00020\nJ\u000e\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0005J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u0005J\u0016\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005J\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0005J\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0017\u001a\u00020\u0005J\u0016\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001dJ\u000e\u0010 \u001a\u00020\u001d2\u0006\u0010\u0017\u001a\u00020\u0005J\u0016\u0010!\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001dJ\u0006\u0010\"\u001a\u00020\u001dJ\u000e\u0010#\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u001dJ\u000e\u0010$\u001a\u00020\u001d2\u0006\u0010\u0017\u001a\u00020\u0005J\u0016\u0010%\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001dJ\u000e\u0010&\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0005J\u0016\u0010\'\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\nJ\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00050*J\u000e\u0010+\u001a\u00020\u000c2\u0006\u0010,\u001a\u00020\u0005J\u000e\u0010-\u001a\u00020\u000c2\u0006\u0010,\u001a\u00020\u0005J\u000e\u0010.\u001a\u00020\u000c2\u0006\u0010,\u001a\u00020\u0005J\u0018\u0010/\u001a\u0004\u0018\u00010\u00052\u0006\u0010,\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005J\u001e\u00100\u001a\u00020\u000c2\u0006\u0010,\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005J\u0006\u00101\u001a\u00020\u001dJ\u000e\u00102\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u001dJ\u0006\u00103\u001a\u00020\u0005J\u000e\u00104\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u00105\u001a\u00020\u0005J\u000e\u00106\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u00107\u001a\u00020\u0005J\u000e\u00108\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u00109\u001a\u00020\nJ\u000e\u0010:\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010;\u001a\u00020\nJ\u000e\u0010<\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010=\u001a\u00020\nJ\u000e\u0010>\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010?\u001a\u00020\u0005J\u000e\u0010@\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u0005J\u0008\u0010A\u001a\u00020\u0005H\u0002J\u0006\u0010B\u001a\u00020\nJ\u000e\u0010C\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010D\u001a\u00020\u001dJ\u000e\u0010E\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u001dJ\u0006\u0010F\u001a\u00020\nJ\u000e\u0010G\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010H\u001a\u00020\u001dJ\u000e\u0010I\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u001dJ\u001d\u0010J\u001a\u0004\u0018\u00010\u001d2\u0006\u0010K\u001a\u00020\u001d2\u0006\u0010L\u001a\u00020\u001d\u00a2\u0006\u0002\u0010MJ\u001e\u0010N\u001a\u00020\u000c2\u0006\u0010K\u001a\u00020\u001d2\u0006\u0010L\u001a\u00020\u001d2\u0006\u0010O\u001a\u00020\u001dJ\u000e\u0010P\u001a\u00020\u000c2\u0006\u0010K\u001a\u00020\u001dJ\u0008\u0010Q\u001a\u0004\u0018\u00010\u0005J\u000e\u0010R\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u0010S\u001a\u00020TJ\u000e\u0010U\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020TJ\u0006\u0010V\u001a\u00020\nJ\u000e\u0010W\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010X\u001a\u00020\nJ\u000e\u0010Y\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010Z\u001a\u00020\u000cJ\u0006\u0010[\u001a\u00020\nJ\u000e\u0010\\\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010]\u001a\u00020\nJ\u000e\u0010^\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\nJ\u0010\u0010_\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u0005J\u0016\u0010`\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010a\u001a\u00020\u0005J\u0006\u0010b\u001a\u00020\u000cJ\u0006\u0010c\u001a\u00020\u000cJ\u0006\u0010d\u001a\u00020\u000cJ\u0006\u0010e\u001a\u00020\u000cJ\u0006\u0010f\u001a\u00020\u000cJ\u0014\u0010g\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010hJ\u001c\u0010i\u001a\u00020\u000c2\u0014\u0010j\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010hJ\u0006\u0010k\u001a\u00020\u000cJ\u0006\u0010l\u001a\u00020\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006m"
    }
    d2 = {
        "Lsweet/tts/Prefs;",
        "",
        "<init>",
        "()V",
        "NAME",
        "",
        "MATCH_LANGUAGE",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "logsClearedForPrivacyV96",
        "",
        "setLogsClearedForPrivacyV96",
        "",
        "debugLogText",
        "setDebugLogText",
        "v",
        "debugNoBreaker",
        "setDebugNoBreaker",
        "debugSkipInternal",
        "setDebugSkipInternal",
        "voiceFor",
        "lang",
        "setVoiceFor",
        "voiceName",
        "emojiVoice",
        "setEmojiVoice",
        "numberVoice",
        "setNumberVoice",
        "volumeFor",
        "",
        "setVolumeFor",
        "value",
        "rateFor",
        "setRateFor",
        "vocalizerRateCap",
        "setVocalizerRateCap",
        "pitchFor",
        "setPitchFor",
        "isLanguageEnabled",
        "setLanguageEnabled",
        "enabled",
        "addedApps",
        "",
        "addApp",
        "packageName",
        "removeApp",
        "clearAppVoices",
        "voiceForApp",
        "setVoiceForApp",
        "longNumberMinDigits",
        "setLongNumberMinDigits",
        "punctuationLevel",
        "setPunctuationLevel",
        "longNumberReadingMode",
        "setLongNumberReadingMode",
        "mobile13DigitPattern",
        "setMobile13DigitPattern",
        "croreLakhEnabled",
        "setCroreLakhEnabled",
        "otpReadingEnabled",
        "setOtpReadingEnabled",
        "otpClipboardEnabled",
        "setOtpClipboardEnabled",
        "descLanguage",
        "setDescLanguage",
        "whatsNewKey",
        "whatsNewHidden",
        "setWhatsNewHidden",
        "otpClipboardDelaySec",
        "setOtpClipboardDelaySec",
        "quickStartReadingEnabled",
        "setQuickStartReadingEnabled",
        "eloquencePreset",
        "setEloquencePreset",
        "eloquenceStep",
        "preset",
        "param",
        "(II)Ljava/lang/Integer;",
        "setEloquenceStep",
        "step",
        "clearEloquenceSteps",
        "eloquenceBuiltIn",
        "setEloquenceBuiltIn",
        "eloqFastStopOffUntil",
        "",
        "setEloqFastStopOffUntil",
        "keepRunningEnabled",
        "setKeepRunningEnabled",
        "seamlessReadingModeEnabled",
        "setSeamlessReadingModeEnabled",
        "migrateGoogleVolumeDefaultOnce",
        "diagnosticLogEnabled",
        "setDiagnosticLogEnabled",
        "detailedLogEnabled",
        "setDetailedLogEnabled",
        "dictionaryJsonFor",
        "setDictionaryJsonFor",
        "json",
        "migrateDictionaryEnToVocalizerEnglishOnce",
        "migrateDictionaryToPerLanguageOnce",
        "seedDictionaryWordExclusionDefaultsOnce",
        "seedDictionaryWordExclusionDefaultsV2Once",
        "seedDictionaryIndianEnglishV3Once",
        "exportableEntries",
        "",
        "importEntries",
        "map",
        "resetVolumeRatePitchToNewDefaultsOnce",
        "resetNumberEmojiVoiceToMatchLanguageOnce",
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


# static fields
.field public static final INSTANCE:Lsweet/tts/Prefs;

.field public static final MATCH_LANGUAGE:Ljava/lang/String; = "__match_language__"

.field private static final NAME:Ljava/lang/String; = "aiotts_settings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsweet/tts/Prefs;

    invoke-direct {v0}, Lsweet/tts/Prefs;-><init>()V

    sput-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final prefs()Landroid/content/SharedPreferences;
    .locals 2

    .line 15
    sget-object p0, Lsweet/tts/App;->Companion:Lsweet/tts/App$Companion;

    invoke-virtual {p0}, Lsweet/tts/App$Companion;->getContext()Landroid/app/Application;

    move-result-object p0

    const-string v0, "aiotts_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final whatsNewKey()Ljava/lang/String;
    .locals 0

    .line 193
    sget-object p0, Lsweet/tts/Edition;->INSTANCE:Lsweet/tts/Edition;

    invoke-virtual {p0}, Lsweet/tts/Edition;->getPLUS()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "whatsnew_hidden_2_0"

    return-object p0

    :cond_0
    const-string p0, "whatsnew_hidden_3_0"

    return-object p0
.end method


# virtual methods
.method public final addApp(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lsweet/tts/Prefs;->addedApps()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string p1, "added_apps"

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final addedApps()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "added_apps"

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final clearAppVoices(Ljava/lang/String;)V
    .locals 7

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appvoice_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 459
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 112
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, p1, v6, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 458
    check-cast v1, Ljava/lang/Iterable;

    .line 461
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 112
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 113
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final clearEloquenceSteps(I)V
    .locals 6

    .line 224
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eloq_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 226
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final croreLakhEnabled()Z
    .locals 2

    .line 157
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "crore_lakh_enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final debugLogText()Z
    .locals 2

    .line 22
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "debug_log_text"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final debugNoBreaker()Z
    .locals 2

    .line 26
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "debug_no_breaker"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final debugSkipInternal()Ljava/lang/String;
    .locals 2

    .line 30
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "debug_skip_internal"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    return-object p0
.end method

.method public final descLanguage()Ljava/lang/String;
    .locals 2

    .line 182
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 183
    const-string v0, "desc_language"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    invoke-virtual {v0}, Lsweet/tts/Desc;->getLANGS()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 185
    :cond_0
    const-string p0, "off"

    return-object p0
.end method

.method public final detailedLogEnabled()Z
    .locals 2

    .line 284
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "detailed_log_enabled"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final diagnosticLogEnabled()Z
    .locals 2

    .line 277
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "diagnostic_log_enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final dictionaryJsonFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dictionary_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final eloqFastStopOffUntil()J
    .locals 3

    .line 235
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "eloq_faststop_off_until"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final eloquenceBuiltIn()Ljava/lang/String;
    .locals 2

    .line 229
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "eloq_builtin"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final eloquencePreset()I
    .locals 2

    .line 214
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "eloq_preset"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final eloquenceStep(II)Ljava/lang/Integer;
    .locals 4

    .line 219
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eloq_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final emojiVoice()Ljava/lang/String;
    .locals 2

    .line 40
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "voice_emoji"

    const-string v1, "__match_language__"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final exportableEntries()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 397
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 398
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 505
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 506
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 507
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 399
    const-string v3, "added_apps"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    const-string v3, "appvoice_"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 401
    const-string v3, "digit_threshold_"

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    const-string v3, "mobile_pattern_"

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 403
    const-string v3, "digit_pause_"

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 404
    const-string v3, "dictionary_"

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    const-string v3, "migrated_"

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 406
    const-string v3, "whatsnew_"

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 407
    const-string v3, "eloq_faststop_off_until"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "eloq_builtin"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 409
    const-string v3, "eloq_phrase_prediction"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "eloq_short_first"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "eloq_sample_rate_hz"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 508
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 511
    :cond_1
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final importEntries(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 417
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 419
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 420
    :cond_0
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 421
    :cond_1
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 422
    :cond_2
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 426
    :cond_4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final isLanguageEnabled(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lang_enabled_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v1}, Lsweet/tts/VoiceCatalog;->getDEFAULT_ENABLED_LANGUAGES()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final keepRunningEnabled()Z
    .locals 2

    .line 241
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "keep_running_enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final logsClearedForPrivacyV96()Z
    .locals 2

    .line 18
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "logs_cleared_privacy_v96"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final longNumberMinDigits()I
    .locals 2

    .line 132
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "long_number_min_digits"

    const/16 v1, 0xa

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x5

    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    return p0
.end method

.method public final longNumberReadingMode()Ljava/lang/String;
    .locals 2

    .line 143
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "long_number_reading_mode"

    const-string v1, "group_5"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    return-object p0
.end method

.method public final migrateDictionaryEnToVocalizerEnglishOnce()V
    .locals 5

    .line 303
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    .line 304
    const-string v1, "migrated_dictionary_en_to_vocalizer_english"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 305
    :cond_0
    const-string v0, "dictionary_en"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v0, :cond_1

    .line 307
    const-string v4, "dictionary_vocalizer_english"

    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 308
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const/4 p0, 0x1

    .line 310
    invoke-interface {v3, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 311
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final migrateDictionaryToPerLanguageOnce()V
    .locals 14

    .line 319
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 320
    const-string v0, "migrated_dictionary_to_per_language"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 321
    :cond_0
    sget-object v2, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v2}, Lsweet/tts/VoiceCatalog;->getLANGUAGES()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 464
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 465
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 466
    check-cast v5, Lkotlin/Pair;

    .line 321
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 466
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 464
    check-cast v3, Ljava/lang/Iterable;

    .line 468
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 469
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 321
    const-string v7, "en"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v7, v6}, Lsweet/tts/Prefs;->isLanguageEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 469
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 470
    :cond_3
    check-cast v2, Ljava/util/List;

    const/4 v3, 0x2

    .line 322
    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "vocalizer_other"

    aput-object v5, v3, v1

    const-string v1, "google"

    const/4 v5, 0x1

    aput-object v1, v3, v5

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 323
    sget-object v6, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v6, v3}, Lsweet/tts/Dictionary;->entriesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 324
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 325
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 326
    sget-object v8, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v8, v7}, Lsweet/tts/Dictionary;->entriesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 327
    move-object v9, v8

    check-cast v9, Ljava/lang/Iterable;

    .line 471
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .line 472
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 473
    check-cast v11, Lsweet/tts/Dictionary$Entry;

    .line 327
    invoke-virtual {v11}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v11

    .line 473
    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 474
    :cond_6
    check-cast v10, Ljava/util/List;

    .line 471
    check-cast v10, Ljava/lang/Iterable;

    .line 327
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v9

    .line 328
    move-object v10, v3

    check-cast v10, Ljava/lang/Iterable;

    .line 475
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    .line 476
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lsweet/tts/Dictionary$Entry;

    .line 328
    invoke-virtual {v13}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 476
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 477
    :cond_8
    check-cast v11, Ljava/util/List;

    .line 329
    move-object v9, v11

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    sget-object v9, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    check-cast v8, Ljava/util/Collection;

    check-cast v11, Ljava/lang/Iterable;

    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Lsweet/tts/Dictionary;->setEntriesFor(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_2

    .line 332
    :cond_9
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final migrateGoogleVolumeDefaultOnce()V
    .locals 8

    .line 257
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 258
    const-string v0, "migrated_google_volume_90_default"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 260
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    const-string v3, "getAll(...)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 261
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "volume_Google "

    invoke-static {v4, v7, v1, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x50

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x5a

    .line 262
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    .line 265
    invoke-interface {v2, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final mobile13DigitPattern()Ljava/lang/String;
    .locals 2

    .line 150
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mobile_13_digit_pattern"

    const-string v1, "5-5"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    return-object p0
.end method

.method public final numberVoice()Ljava/lang/String;
    .locals 2

    .line 45
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "voice_number"

    const-string v1, "__match_language__"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final otpClipboardDelaySec()I
    .locals 2

    .line 200
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "otp_clipboard_delay_sec"

    const/4 v1, 0x4

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    return p0
.end method

.method public final otpClipboardEnabled()Z
    .locals 2

    .line 173
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "otp_clipboard_enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final otpReadingEnabled()Z
    .locals 2

    .line 165
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "otp_reading_enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final pitchFor(Ljava/lang/String;)I
    .locals 2

    const-string v0, "voiceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pitch_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final punctuationLevel()Ljava/lang/String;
    .locals 2

    .line 138
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "punctuation_level"

    const-string v1, "none"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    return-object p0
.end method

.method public final quickStartReadingEnabled()Z
    .locals 2

    .line 207
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "quick_start_reading_enabled"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final rateFor(Ljava/lang/String;)I
    .locals 3

    const-string v0, "voiceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const-string v0, "ETI Eloquence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    .line 69
    :goto_0
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rate_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final removeApp(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lsweet/tts/Prefs;->addedApps()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string p1, "added_apps"

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final resetNumberEmojiVoiceToMatchLanguageOnce()V
    .locals 3

    .line 448
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    .line 449
    const-string v1, "migrated_number_emoji_match_language"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 450
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 451
    const-string v0, "voice_number"

    const-string v2, "__match_language__"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 452
    const-string v0, "voice_emoji"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    .line 453
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 454
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final resetVolumeRatePitchToNewDefaultsOnce()V
    .locals 8

    .line 430
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 431
    const-string v0, "migrated_80_100_100_defaults"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 432
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 433
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 435
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "volume_"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v1, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x50

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 436
    :cond_2
    const-string v4, "rate_"

    invoke-static {v3, v4, v1, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    const/16 v7, 0x64

    if-eqz v4, :cond_3

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 437
    :cond_3
    const-string v4, "pitch_"

    invoke-static {v3, v4, v1, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    .line 440
    invoke-interface {v2, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 441
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final seamlessReadingModeEnabled()Z
    .locals 2

    .line 248
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "seamless_reading_mode_enabled"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final seedDictionaryIndianEnglishV3Once()V
    .locals 11

    .line 377
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 378
    const-string v0, "seeded_dictionary_indian_english_v3"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    .line 379
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "eti_eloquence"

    aput-object v3, v2, v1

    const-string v1, "vocalizer_english"

    const/4 v4, 0x1

    aput-object v1, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 380
    sget-object v5, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v5, v2}, Lsweet/tts/Dictionary;->entriesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 495
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 496
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lsweet/tts/Dictionary$Entry;

    .line 380
    invoke-virtual {v8}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v9

    const-string v10, "~"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    invoke-virtual {v8}, Lsweet/tts/Dictionary$Entry;->getReplace()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    .line 496
    :cond_2
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 497
    :cond_3
    check-cast v6, Ljava/util/List;

    .line 381
    sget-object v5, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v5, v2, v6}, Lsweet/tts/Dictionary;->setEntriesFor(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 383
    :cond_4
    sget-object v1, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v1, v3}, Lsweet/tts/Dictionary;->entriesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 384
    check-cast v1, Ljava/lang/Iterable;

    .line 498
    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 499
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "toLowerCase(...)"

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 500
    check-cast v6, Lsweet/tts/Dictionary$Entry;

    .line 384
    invoke-virtual {v6}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 501
    :cond_5
    check-cast v2, Ljava/util/List;

    .line 498
    check-cast v2, Ljava/lang/Iterable;

    .line 384
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 385
    sget-object v5, Lsweet/tts/DictionarySeeds;->INSTANCE:Lsweet/tts/DictionarySeeds;

    invoke-virtual {v5}, Lsweet/tts/DictionarySeeds;->getELOQUENCE_ENGLISH()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 502
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 503
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lsweet/tts/Dictionary$Entry;

    .line 385
    invoke-virtual {v9}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 503
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 504
    :cond_7
    check-cast v6, Ljava/util/List;

    .line 386
    sget-object v2, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lsweet/tts/Dictionary;->setEntriesFor(Ljava/lang/String;Ljava/util/List;)V

    .line 387
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final seedDictionaryWordExclusionDefaultsOnce()V
    .locals 17

    .line 341
    invoke-direct/range {p0 .. p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 342
    const-string v1, "seeded_dictionary_word_exclusion_defaults"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x3

    .line 343
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Maybe"

    aput-object v4, v3, v2

    const-string v4, "Profile picture for"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "~"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 344
    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "eti_eloquence"

    aput-object v6, v4, v2

    const-string v2, "vocalizer_english"

    aput-object v2, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 345
    sget-object v6, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v6, v4}, Lsweet/tts/Dictionary;->entriesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 346
    move-object v7, v6

    check-cast v7, Ljava/lang/Iterable;

    .line 478
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 479
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 480
    check-cast v10, Lsweet/tts/Dictionary$Entry;

    .line 346
    invoke-virtual {v10}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v10

    .line 480
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 481
    :cond_2
    check-cast v8, Ljava/util/List;

    .line 478
    check-cast v8, Ljava/lang/Iterable;

    .line 346
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 347
    move-object v8, v3

    check-cast v8, Ljava/lang/Iterable;

    .line 482
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .line 483
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 347
    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 483
    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 484
    :cond_4
    check-cast v10, Ljava/util/List;

    .line 348
    move-object v7, v10

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 349
    sget-object v7, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    check-cast v6, Ljava/util/Collection;

    check-cast v10, Ljava/lang/Iterable;

    .line 485
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v10, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 486
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 487
    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    .line 349
    new-instance v11, Lsweet/tts/Dictionary$Entry;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v13, ""

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v16}, Lsweet/tts/Dictionary$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 487
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 488
    :cond_5
    check-cast v8, Ljava/util/List;

    .line 485
    check-cast v8, Ljava/lang/Iterable;

    .line 349
    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Lsweet/tts/Dictionary;->setEntriesFor(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 352
    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final seedDictionaryWordExclusionDefaultsV2Once()V
    .locals 11

    .line 359
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 360
    const-string v0, "seeded_dictionary_word_exclusion_defaults_v2"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    .line 361
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "eti_eloquence"

    aput-object v3, v2, v1

    const-string v1, "vocalizer_english"

    const/4 v4, 0x1

    aput-object v1, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 362
    sget-object v5, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v5, v2}, Lsweet/tts/Dictionary;->entriesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 363
    check-cast v5, Ljava/lang/Iterable;

    .line 489
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 490
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lsweet/tts/Dictionary$Entry;

    .line 363
    invoke-virtual {v8}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Profile picture for"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 490
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 491
    :cond_2
    check-cast v6, Ljava/util/List;

    .line 364
    sget-object v5, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v5, v2, v6}, Lsweet/tts/Dictionary;->setEntriesFor(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 366
    :cond_3
    sget-object v1, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    invoke-virtual {v1, v3}, Lsweet/tts/Dictionary;->entriesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 367
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 492
    instance-of v5, v2, Ljava/util/Collection;

    if-eqz v5, :cond_4

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 493
    :cond_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsweet/tts/Dictionary$Entry;

    .line 367
    invoke-virtual {v5}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    .line 368
    :cond_6
    :goto_2
    sget-object v2, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    check-cast v1, Ljava/util/Collection;

    new-instance v5, Lsweet/tts/Dictionary$Entry;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "_"

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lsweet/tts/Dictionary$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lsweet/tts/Dictionary;->setEntriesFor(Ljava/lang/String;Ljava/util/List;)V

    .line 370
    :goto_3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setCroreLakhEnabled(Z)V
    .locals 1

    .line 159
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "crore_lakh_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setDebugLogText(Z)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "debug_log_text"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setDebugNoBreaker(Z)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "debug_no_breaker"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setDebugSkipInternal(Ljava/lang/String;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "debug_skip_internal"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setDescLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    invoke-virtual {v0}, Lsweet/tts/Desc;->getLANGS()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    const-string v0, "desc_language"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setDetailedLogEnabled(Z)V
    .locals 1

    .line 286
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "detailed_log_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setDiagnosticLogEnabled(Z)V
    .locals 1

    .line 279
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "diagnostic_log_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setDictionaryJsonFor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dictionary_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setEloqFastStopOffUntil(J)V
    .locals 1

    .line 237
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "eloq_faststop_off_until"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setEloquenceBuiltIn(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "eloq_builtin"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setEloquencePreset(I)V
    .locals 1

    .line 216
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "eloq_preset"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setEloquenceStep(III)V
    .locals 2

    .line 221
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "eloq_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setEmojiVoice(Ljava/lang/String;)V
    .locals 1

    const-string v0, "voiceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "voice_emoji"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setKeepRunningEnabled(Z)V
    .locals 1

    .line 243
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "keep_running_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLanguageEnabled(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lang_enabled_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLogsClearedForPrivacyV96()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "logs_cleared_privacy_v96"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLongNumberMinDigits(I)V
    .locals 2

    .line 134
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0xa

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    const-string v0, "long_number_min_digits"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLongNumberReadingMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "long_number_reading_mode"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setMobile13DigitPattern(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "mobile_13_digit_pattern"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setNumberVoice(Ljava/lang/String;)V
    .locals 1

    const-string v0, "voiceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "voice_number"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setOtpClipboardDelaySec(I)V
    .locals 2

    .line 202
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    const-string v0, "otp_clipboard_delay_sec"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setOtpClipboardEnabled(Z)V
    .locals 1

    .line 175
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "otp_clipboard_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setOtpReadingEnabled(Z)V
    .locals 1

    .line 167
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "otp_reading_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setPitchFor(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "voiceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pitch_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setPunctuationLevel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "punctuation_level"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setQuickStartReadingEnabled(Z)V
    .locals 1

    .line 209
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "quick_start_reading_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setRateFor(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "voiceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rate_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSeamlessReadingModeEnabled(Z)V
    .locals 1

    .line 250
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "seamless_reading_mode_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setVocalizerRateCap(I)V
    .locals 1

    .line 82
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "vocalizer_rate_cap"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setVoiceFor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voiceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "voice_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setVoiceForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lang"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voiceName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appvoice_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setVolumeFor(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "voiceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "volume_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setWhatsNewHidden(Z)V
    .locals 1

    .line 196
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lsweet/tts/Prefs;->whatsNewKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final vocalizerRateCap()I
    .locals 2

    .line 80
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "vocalizer_rate_cap"

    const/16 v1, 0x190

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x64

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    return p0
.end method

.method public final voiceFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "voice_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final voiceForApp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lang"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appvoice_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final volumeFor(Ljava/lang/String;)I
    .locals 4

    const-string v0, "voiceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const-string v0, "ETI Eloquence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 57
    const-string v2, "Google "

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x64

    .line 59
    :goto_1
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "volume_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final whatsNewHidden()Z
    .locals 2

    .line 194
    invoke-direct {p0}, Lsweet/tts/Prefs;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lsweet/tts/Prefs;->whatsNewKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
