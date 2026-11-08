.class public final Lsweet/tts/VoiceCatalog;
.super Ljava/lang/Object;
.source "VoiceCatalog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoiceCatalog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoiceCatalog.kt\nsweet/tts/VoiceCatalog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,257:1\n774#2:258\n865#2,2:259\n1563#2:261\n1634#2,3:262\n774#2:265\n865#2,2:266\n1563#2:268\n1634#2,2:269\n1636#2:272\n1563#2:273\n1634#2,3:274\n1761#2,3:277\n827#2:280\n855#2,2:281\n827#2:283\n855#2,2:284\n1761#2,3:286\n1056#2:289\n774#2:290\n865#2,2:291\n295#2,2:293\n1761#2,3:295\n774#2:298\n865#2,2:299\n1563#2:301\n1634#2,3:302\n1#3:271\n*S KotlinDebug\n*F\n+ 1 VoiceCatalog.kt\nsweet/tts/VoiceCatalog\n*L\n84#1:258\n84#1:259,2\n85#1:261\n85#1:262,3\n86#1:265\n86#1:266,2\n86#1:268\n86#1:269,2\n86#1:272\n89#1:273\n89#1:274,3\n102#1:277,3\n116#1:280\n116#1:281,2\n126#1:283\n126#1:284,2\n147#1:286,3\n167#1:289\n214#1:290\n214#1:291,2\n231#1:293,2\n243#1:295,3\n251#1:298\n251#1:299,2\n251#1:301\n251#1:302,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010$\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0006J\u0014\u0010\u001c\u001a\u00020\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0006\u0010\u001f\u001a\u00020\u001dJ\u0006\u0010 \u001a\u00020\u001dJ\u0014\u0010!\u001a\u00020\u001d2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0006H\u0002J\u0010\u0010\'\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u0006H\u0002J\u001a\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010*\u001a\u00020\r2\u0006\u0010+\u001a\u00020\rJ\u0016\u0010,\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\rJ\u0014\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010+\u001a\u00020\rJ\u001e\u00100\u001a\u0004\u0018\u00010\u00062\u0006\u00101\u001a\u00020\r2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u00103\u001a\u0004\u0018\u00010\r2\u0006\u0010+\u001a\u00020\rJ\u0006\u00104\u001a\u00020\rR \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR#\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u000c0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008R\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\rX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\rX\u0086T\u00a2\u0006\u0002\n\u0000R&\u0010\u0016\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u00170\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0/X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lsweet/tts/VoiceCatalog;",
        "",
        "<init>",
        "()V",
        "voices",
        "",
        "Lcom/nuance/android/vocalizer/VocalizerVoice;",
        "getVoices",
        "()Ljava/util/List;",
        "setVoices",
        "(Ljava/util/List;)V",
        "LANGUAGES",
        "Lkotlin/Pair;",
        "",
        "getLANGUAGES",
        "DEFAULT_ENABLED_LANGUAGES",
        "",
        "getDEFAULT_ENABLED_LANGUAGES",
        "()Ljava/util/Set;",
        "VOICE_DISPLAY_ORDER",
        "ELOQUENCE_VOICE_NAME",
        "GOOGLE_VOICE_PREFIX",
        "PLACEHOLDERS",
        "Lkotlin/Triple;",
        "placeholderNames",
        "isMissingPlaceholder",
        "",
        "v",
        "setVocalizerVoices",
        "",
        "real",
        "ensureEloquenceVoiceRegistered",
        "ensureExternalEnginesRegistered",
        "ensureGoogleVoicesRegistered",
        "entries",
        "OTHER_COUNTRY_WORDS",
        "tierOf",
        "",
        "voice",
        "displaySortKey",
        "sortedForDisplay",
        "list",
        "tlwPrefixFor",
        "lang",
        "voiceMatchesLanguage",
        "voicesFor",
        "PREFERRED_DEFAULTS",
        "",
        "defaultVoiceFor",
        "slot",
        "options",
        "preferredDefaultVoiceNameIfPresent",
        "languagesSummaryForAnnouncement",
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
.field private static final DEFAULT_ENABLED_LANGUAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ELOQUENCE_VOICE_NAME:Ljava/lang/String; = "ETI Eloquence"

.field public static final GOOGLE_VOICE_PREFIX:Ljava/lang/String; = "Google "

.field public static final INSTANCE:Lsweet/tts/VoiceCatalog;

.field private static final LANGUAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final OTHER_COUNTRY_WORDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PLACEHOLDERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Triple<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final PREFERRED_DEFAULTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VOICE_DISPLAY_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile placeholderNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile voices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nuance/android/vocalizer/VocalizerVoice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lsweet/tts/VoiceCatalog;

    invoke-direct {v0}, Lsweet/tts/VoiceCatalog;-><init>()V

    sput-object v0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsweet/tts/VoiceCatalog;->voices:Ljava/util/List;

    const/16 v0, 0x19

    .line 26
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "English"

    const-string v2, "en"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 27
    const-string v1, "Hindi"

    const-string v4, "hi"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v0, v5

    .line 28
    const-string v1, "Marathi"

    const-string v6, "mr"

    invoke-static {v6, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v0, v7

    .line 29
    const-string v1, "Bengali"

    const-string v8, "bn"

    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v9, 0x3

    aput-object v1, v0, v9

    .line 30
    const-string v1, "Gujarati"

    const-string v10, "gu"

    invoke-static {v10, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v11, 0x4

    aput-object v1, v0, v11

    .line 31
    const-string v1, "Punjabi"

    const-string v12, "pa"

    invoke-static {v12, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v13, 0x5

    aput-object v1, v0, v13

    .line 32
    const-string v1, "Urdu"

    const-string v14, "ur"

    invoke-static {v14, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v15, 0x6

    aput-object v1, v0, v15

    .line 33
    const-string v1, "ar"

    move/from16 v16, v3

    const-string v3, "Arabic"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v17

    move/from16 v18, v5

    const/4 v5, 0x7

    aput-object v17, v0, v5

    move/from16 v17, v11

    .line 34
    const-string v11, "ne"

    move/from16 v19, v13

    const-string v13, "Nepali"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0x8

    aput-object v11, v0, v13

    .line 35
    const-string v11, "or"

    move/from16 v20, v13

    const-string v13, "Odia"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0x9

    aput-object v11, v0, v13

    .line 36
    const-string v11, "kn"

    move/from16 v21, v13

    const-string v13, "Kannada"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0xa

    aput-object v11, v0, v13

    .line 37
    const-string v11, "ta"

    move/from16 v22, v13

    const-string v13, "Tamil"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0xb

    aput-object v11, v0, v13

    .line 38
    const-string v11, "te"

    move/from16 v23, v13

    const-string v13, "Telugu"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0xc

    aput-object v11, v0, v13

    .line 39
    const-string v11, "ml"

    const-string v13, "Malayalam"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0xd

    aput-object v11, v0, v13

    .line 40
    const-string v11, "as"

    const-string v13, "Assamese"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0xe

    aput-object v11, v0, v13

    .line 41
    const-string v11, "bho"

    const-string v13, "Bhojpuri"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0xf

    aput-object v11, v0, v13

    .line 42
    const-string v11, "brx"

    const-string v13, "Bodo"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0x10

    aput-object v11, v0, v13

    .line 43
    const-string v11, "doi"

    const-string v13, "Dogri"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0x11

    aput-object v11, v0, v13

    .line 44
    const-string v11, "kok"

    const-string v13, "Konkani"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0x12

    aput-object v11, v0, v13

    .line 45
    const-string v11, "mai"

    const-string v13, "Maithili"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0x13

    aput-object v11, v0, v13

    .line 46
    const-string v11, "sa"

    const-string v13, "Sanskrit"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0x14

    aput-object v11, v0, v13

    .line 47
    const-string v11, "ks"

    const-string v13, "Kashmiri"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0x15

    aput-object v11, v0, v13

    .line 48
    const-string v11, "sd"

    const-string v13, "Sindhi"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0x16

    aput-object v11, v0, v13

    .line 49
    const-string v11, "mni"

    const-string v13, "Manipuri"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0x17

    aput-object v11, v0, v13

    .line 50
    const-string v11, "sat"

    const-string v13, "Santali"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v13, 0x18

    aput-object v11, v0, v13

    .line 25
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsweet/tts/VoiceCatalog;->LANGUAGES:Ljava/util/List;

    .line 55
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v16

    aput-object v4, v0, v18

    aput-object v6, v0, v7

    aput-object v8, v0, v9

    aput-object v10, v0, v17

    aput-object v12, v0, v19

    aput-object v14, v0, v15

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsweet/tts/VoiceCatalog;->DEFAULT_ENABLED_LANGUAGES:Ljava/util/Set;

    const/16 v0, 0xc

    .line 61
    new-array v0, v0, [Ljava/lang/String;

    const-string v6, "Nathan"

    aput-object v6, v0, v16

    const-string v6, "Samantha"

    aput-object v6, v0, v18

    const-string v6, "Rishi"

    aput-object v6, v0, v7

    const-string v8, "Karen"

    aput-object v8, v0, v9

    const-string v8, "Daniel"

    aput-object v8, v0, v17

    .line 62
    const-string v8, "Lekha"

    aput-object v8, v0, v19

    const-string v8, "Neel"

    aput-object v8, v0, v15

    const-string v8, "Ananya"

    aput-object v8, v0, v5

    const-string v5, "Paya"

    aput-object v5, v0, v20

    const-string v5, "Alpana"

    aput-object v5, v0, v21

    const-string v5, "Vani"

    aput-object v5, v0, v22

    const-string v5, "Geeta"

    aput-object v5, v0, v23

    .line 60
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsweet/tts/VoiceCatalog;->VOICE_DISPLAY_ORDER:Ljava/util/List;

    .line 76
    new-array v0, v7, [Lkotlin/Triple;

    new-instance v5, Lkotlin/Triple;

    const-string v8, "Maged"

    const-string v10, "ARW"

    invoke-direct {v5, v8, v3, v10}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v16

    new-instance v5, Lkotlin/Triple;

    const-string v8, "Tarik"

    const-string v10, "ARW"

    invoke-direct {v5, v8, v3, v10}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v18

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsweet/tts/VoiceCatalog;->PLACEHOLDERS:Ljava/util/List;

    .line 77
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsweet/tts/VoiceCatalog;->placeholderNames:Ljava/util/Set;

    .line 139
    new-array v0, v9, [Ljava/lang/String;

    const-string v3, "Bangladesh"

    aput-object v3, v0, v16

    const-string v3, "Pakistan"

    aput-object v3, v0, v18

    const-string v3, "US"

    aput-object v3, v0, v7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsweet/tts/VoiceCatalog;->OTHER_COUNTRY_WORDS:Ljava/util/List;

    .line 221
    new-array v0, v15, [Lkotlin/Pair;

    const-string v3, "ETI Eloquence"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v16

    .line 222
    const-string v2, "Lekha"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v18

    .line 223
    const-string v2, "Laila"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v7

    .line 224
    const-string v1, "Google Urdu India 2"

    invoke-static {v14, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v9

    .line 225
    const-string v1, "emoji"

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v17

    .line 226
    const-string v1, "number"

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v19

    .line 220
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsweet/tts/VoiceCatalog;->PREFERRED_DEFAULTS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$displaySortKey(Lsweet/tts/VoiceCatalog;Lcom/nuance/android/vocalizer/VocalizerVoice;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lsweet/tts/VoiceCatalog;->displaySortKey(Lcom/nuance/android/vocalizer/VocalizerVoice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final displaySortKey(Lcom/nuance/android/vocalizer/VocalizerVoice;)Ljava/lang/String;
    .locals 5

    .line 156
    invoke-direct {p0, p1}, Lsweet/tts/VoiceCatalog;->tierOf(Lcom/nuance/android/vocalizer/VocalizerVoice;)I

    move-result p0

    .line 157
    iget-object v0, p1, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Google "

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object p1, p1, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_0
    sget-object v0, Lsweet/tts/VoiceCatalog;->VOICE_DISPLAY_ORDER:Ljava/util/List;

    iget-object v1, p1, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    const v0, 0x7fffffff

    .line 161
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final tierOf(Lcom/nuance/android/vocalizer/VocalizerVoice;)I
    .locals 7

    .line 142
    iget-object p0, p1, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    .line 144
    const-string p1, "ETI Eloquence"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 145
    :cond_0
    sget-object p1, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {p1, p0}, Lsweet/tts/ExternalEngines;->isExternalVoice(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {p1, p0}, Lsweet/tts/ExternalEngines;->engineFor(Ljava/lang/String;)Lsweet/tts/ExternalEngines$Engine;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lsweet/tts/ExternalEngines$Engine;->getTier()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0

    .line 146
    :cond_2
    const-string p1, "Google "

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p0, 0x1

    return p0

    .line 147
    :cond_3
    sget-object p1, Lsweet/tts/VoiceCatalog;->OTHER_COUNTRY_WORDS:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 286
    instance-of v3, p1, Ljava/util/Collection;

    if-eqz v3, :cond_4

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 287
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    move-object v4, p0

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v4, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_0
    return v1
.end method


# virtual methods
.method public final defaultVoiceFor(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/android/vocalizer/VocalizerVoice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/nuance/android/vocalizer/VocalizerVoice;",
            ">;)",
            "Lcom/nuance/android/vocalizer/VocalizerVoice;"
        }
    .end annotation

    const-string p0, "slot"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "options"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    sget-object p0, Lsweet/tts/VoiceCatalog;->PREFERRED_DEFAULTS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 231
    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    .line 293
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 231
    iget-object v1, v1, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/nuance/android/vocalizer/VocalizerVoice;

    if-nez v0, :cond_2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nuance/android/vocalizer/VocalizerVoice;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final ensureEloquenceVoiceRegistered()V
    .locals 2

    .line 102
    sget-object p0, Lsweet/tts/VoiceCatalog;->voices:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 277
    instance-of v0, p0, Ljava/util/Collection;

    const-string v1, "ETI Eloquence"

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 102
    iget-object v0, v0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 103
    :cond_2
    :goto_0
    new-instance p0, Lcom/nuance/android/vocalizer/VocalizerVoice;

    invoke-direct {p0}, Lcom/nuance/android/vocalizer/VocalizerVoice;-><init>()V

    .line 104
    iput-object v1, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    .line 105
    const-string v0, "English"

    iput-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mLanguage:Ljava/lang/String;

    .line 106
    const-string v0, "ENG"

    iput-object v0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mLanguageTLW:Ljava/lang/String;

    const/16 v0, 0x16

    .line 107
    iput v0, p0, Lcom/nuance/android/vocalizer/VocalizerVoice;->mSampleRate:I

    .line 109
    sget-object v0, Lsweet/tts/VoiceCatalog;->voices:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lsweet/tts/VoiceCatalog;->voices:Ljava/util/List;

    return-void
.end method

.method public final ensureExternalEnginesRegistered()V
    .locals 5

    .line 114
    sget-object p0, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    invoke-virtual {p0}, Lsweet/tts/ExternalEngines;->catalogVoices()Ljava/util/List;

    move-result-object p0

    .line 115
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    sget-object v0, Lsweet/tts/VoiceCatalog;->voices:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 281
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 116
    sget-object v4, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    iget-object v3, v3, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lsweet/tts/ExternalEngines;->isExternalVoice(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 281
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 280
    check-cast v1, Ljava/util/Collection;

    .line 116
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v1, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lsweet/tts/VoiceCatalog;->voices:Ljava/util/List;

    return-void
.end method

.method public final ensureGoogleVoicesRegistered(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nuance/android/vocalizer/VocalizerVoice;",
            ">;)V"
        }
    .end annotation

    const-string p0, "entries"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget-object p0, Lsweet/tts/VoiceCatalog;->voices:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 284
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 126
    iget-object v2, v2, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "Google "

    const/4 v6, 0x0

    invoke-static {v2, v5, v6, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 283
    check-cast v0, Ljava/util/Collection;

    .line 126
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lsweet/tts/VoiceCatalog;->voices:Ljava/util/List;

    return-void
.end method

.method public final getDEFAULT_ENABLED_LANGUAGES()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    sget-object p0, Lsweet/tts/VoiceCatalog;->DEFAULT_ENABLED_LANGUAGES:Ljava/util/Set;

    return-object p0
.end method

.method public final getLANGUAGES()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 25
    sget-object p0, Lsweet/tts/VoiceCatalog;->LANGUAGES:Ljava/util/List;

    return-object p0
.end method

.method public final getVoices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nuance/android/vocalizer/VocalizerVoice;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object p0, Lsweet/tts/VoiceCatalog;->voices:Ljava/util/List;

    return-object p0
.end method

.method public final isMissingPlaceholder(Lcom/nuance/android/vocalizer/VocalizerVoice;)Z
    .locals 0

    const-string p0, "v"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object p0, Lsweet/tts/VoiceCatalog;->placeholderNames:Ljava/util/Set;

    iget-object p1, p1, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final languagesSummaryForAnnouncement()Ljava/lang/String;
    .locals 9

    .line 251
    sget-object p0, Lsweet/tts/VoiceCatalog;->LANGUAGES:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 299
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 251
    sget-object v3, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v3, v2}, Lsweet/tts/Prefs;->isLanguageEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 298
    check-cast v0, Ljava/lang/Iterable;

    .line 301
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/Collection;

    .line 302
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 303
    check-cast v1, Lkotlin/Pair;

    .line 251
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 304
    :cond_2
    check-cast p0, Ljava/util/List;

    .line 252
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Languages, nothing selected"

    return-object p0

    .line 253
    :cond_3
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    const-string p0, ", "

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Languages, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " selected"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final preferredDefaultVoiceNameIfPresent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lsweet/tts/VoiceCatalog;->PREFERRED_DEFAULTS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 243
    :cond_0
    invoke-virtual {p0, p1}, Lsweet/tts/VoiceCatalog;->voicesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 295
    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 296
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 243
    iget-object p1, p1, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final setVocalizerVoices(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nuance/android/vocalizer/VocalizerVoice;",
            ">;)V"
        }
    .end annotation

    const-string p0, "real"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object p0, Lsweet/tts/VoiceCatalog;->voices:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 259
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 84
    iget-object v3, v2, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    const-string v4, "ETI Eloquence"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "Google "

    const/4 v7, 0x0

    invoke-static {v3, v6, v7, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lsweet/tts/ExternalEngines;->INSTANCE:Lsweet/tts/ExternalEngines;

    iget-object v2, v2, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lsweet/tts/ExternalEngines;->isExternalVoice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 85
    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 262
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 263
    check-cast v3, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 85
    iget-object v3, v3, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    .line 263
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 261
    check-cast v1, Ljava/lang/Iterable;

    .line 85
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    .line 86
    sget-object v1, Lsweet/tts/VoiceCatalog;->PLACEHOLDERS:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 265
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 266
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lkotlin/Triple;

    .line 86
    invoke-virtual {v5}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 266
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 267
    :cond_5
    check-cast v3, Ljava/util/List;

    .line 265
    check-cast v3, Ljava/lang/Iterable;

    .line 268
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/Collection;

    .line 269
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 270
    check-cast v3, Lkotlin/Triple;

    invoke-virtual {v3}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 87
    new-instance v6, Lcom/nuance/android/vocalizer/VocalizerVoice;

    invoke-direct {v6}, Lcom/nuance/android/vocalizer/VocalizerVoice;-><init>()V

    iput-object v4, v6, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    iput-object v5, v6, Lcom/nuance/android/vocalizer/VocalizerVoice;->mLanguage:Ljava/lang/String;

    iput-object v3, v6, Lcom/nuance/android/vocalizer/VocalizerVoice;->mLanguageTLW:Ljava/lang/String;

    const/16 v3, 0x16

    iput v3, v6, Lcom/nuance/android/vocalizer/VocalizerVoice;->mSampleRate:I

    .line 270
    invoke-interface {p0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 272
    :cond_6
    check-cast p0, Ljava/util/List;

    .line 89
    check-cast p0, Ljava/lang/Iterable;

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 274
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 275
    check-cast v3, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 89
    iget-object v3, v3, Lcom/nuance/android/vocalizer/VocalizerVoice;->mVoiceName:Ljava/lang/String;

    .line 275
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 276
    :cond_7
    check-cast v1, Ljava/util/List;

    .line 273
    check-cast v1, Ljava/lang/Iterable;

    .line 89
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lsweet/tts/VoiceCatalog;->placeholderNames:Ljava/util/Set;

    .line 90
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lsweet/tts/VoiceCatalog;->voices:Ljava/util/List;

    return-void
.end method

.method public final setVoices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nuance/android/vocalizer/VocalizerVoice;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sput-object p1, Lsweet/tts/VoiceCatalog;->voices:Ljava/util/List;

    return-void
.end method

.method public final sortedForDisplay(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nuance/android/vocalizer/VocalizerVoice;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/nuance/android/vocalizer/VocalizerVoice;",
            ">;"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    check-cast p1, Ljava/lang/Iterable;

    .line 289
    new-instance p0, Lsweet/tts/VoiceCatalog$sortedForDisplay$$inlined$sortedBy$1;

    invoke-direct {p0}, Lsweet/tts/VoiceCatalog$sortedForDisplay$$inlined$sortedBy$1;-><init>()V

    check-cast p0, Ljava/util/Comparator;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final tlwPrefixFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "lang"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "sat"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 203
    :cond_0
    const-string p0, "ST"

    return-object p0

    .line 178
    :sswitch_1
    const-string p0, "mni"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    .line 198
    :cond_1
    const-string p0, "MN"

    return-object p0

    .line 178
    :sswitch_2
    const-string p0, "mai"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    .line 196
    :cond_2
    const-string p0, "MT"

    return-object p0

    .line 178
    :sswitch_3
    const-string p0, "kok"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    .line 195
    :cond_3
    const-string p0, "KO"

    return-object p0

    .line 178
    :sswitch_4
    const-string p0, "doi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    .line 192
    :cond_4
    const-string p0, "DO"

    return-object p0

    .line 178
    :sswitch_5
    const-string p0, "brx"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    .line 191
    :cond_5
    const-string p0, "BR"

    return-object p0

    .line 178
    :sswitch_6
    const-string p0, "bho"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    .line 183
    :cond_6
    const-string p0, "BHI"

    return-object p0

    .line 178
    :sswitch_7
    const-string p0, "ur"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    .line 205
    :cond_7
    const-string p0, "UR"

    return-object p0

    .line 178
    :sswitch_8
    const-string p0, "te"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    .line 187
    :cond_8
    const-string p0, "TE"

    return-object p0

    .line 178
    :sswitch_9
    const-string p0, "ta"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    .line 186
    :cond_9
    const-string p0, "TA"

    return-object p0

    .line 178
    :sswitch_a
    const-string p0, "sd"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    .line 204
    :cond_a
    const-string p0, "SI"

    return-object p0

    .line 178
    :sswitch_b
    const-string p0, "sa"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    .line 202
    :cond_b
    const-string p0, "SK"

    return-object p0

    .line 178
    :sswitch_c
    const-string p0, "pa"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    .line 201
    :cond_c
    const-string p0, "PU"

    return-object p0

    .line 178
    :sswitch_d
    const-string p0, "or"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    .line 200
    :cond_d
    const-string p0, "OD"

    return-object p0

    .line 178
    :sswitch_e
    const-string p0, "ne"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    .line 199
    :cond_e
    const-string p0, "NP"

    return-object p0

    .line 178
    :sswitch_f
    const-string p0, "mr"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    .line 185
    :cond_f
    const-string p0, "MA"

    return-object p0

    .line 178
    :sswitch_10
    const-string p0, "ml"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    .line 197
    :cond_10
    const-string p0, "ML"

    return-object p0

    .line 178
    :sswitch_11
    const-string p0, "ks"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    .line 194
    :cond_11
    const-string p0, "KS"

    return-object p0

    .line 178
    :sswitch_12
    const-string p0, "kn"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    .line 188
    :cond_12
    const-string p0, "KA"

    return-object p0

    .line 178
    :sswitch_13
    const-string p0, "hi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    .line 184
    :cond_13
    const-string p0, "HI"

    return-object p0

    .line 178
    :sswitch_14
    const-string p0, "gu"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    .line 193
    :cond_14
    const-string p0, "GU"

    return-object p0

    .line 178
    :sswitch_15
    const-string p0, "bn"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    .line 189
    :cond_15
    const-string p0, "BE"

    return-object p0

    .line 178
    :sswitch_16
    const-string p0, "as"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_0

    .line 190
    :cond_16
    const-string p0, "AS"

    return-object p0

    .line 178
    :sswitch_17
    const-string p0, "ar"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_0

    .line 181
    :cond_17
    const-string p0, "ARW"

    return-object p0

    .line 206
    :goto_0
    const-string p0, "EN"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xc31 -> :sswitch_17
        0xc32 -> :sswitch_16
        0xc4c -> :sswitch_15
        0xcee -> :sswitch_14
        0xd01 -> :sswitch_13
        0xd63 -> :sswitch_12
        0xd68 -> :sswitch_11
        0xd9f -> :sswitch_10
        0xda5 -> :sswitch_f
        0xdb7 -> :sswitch_e
        0xde3 -> :sswitch_d
        0xdf1 -> :sswitch_c
        0xe4e -> :sswitch_b
        0xe51 -> :sswitch_a
        0xe6d -> :sswitch_9
        0xe71 -> :sswitch_8
        0xe9d -> :sswitch_7
        0x17ce9 -> :sswitch_6
        0x17e28 -> :sswitch_5
        0x1853e -> :sswitch_4
        0x19f87 -> :sswitch_3
        0x1a555 -> :sswitch_2
        0x1a6e8 -> :sswitch_1
        0x1bbe6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final voiceMatchesLanguage(Lcom/nuance/android/vocalizer/VocalizerVoice;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "voice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lang"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object p1, p1, Lcom/nuance/android/vocalizer/VocalizerVoice;->mLanguageTLW:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lsweet/tts/VoiceCatalog;->tlwPrefixFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final voicesFor(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/nuance/android/vocalizer/VocalizerVoice;",
            ">;"
        }
    .end annotation

    const-string p0, "lang"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget-object p0, Lsweet/tts/VoiceCatalog;->voices:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 291
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/nuance/android/vocalizer/VocalizerVoice;

    .line 214
    sget-object v3, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v3, v2, p1}, Lsweet/tts/VoiceCatalog;->voiceMatchesLanguage(Lcom/nuance/android/vocalizer/VocalizerVoice;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
