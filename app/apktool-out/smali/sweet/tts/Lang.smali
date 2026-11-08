.class public final Lsweet/tts/Lang;
.super Ljava/lang/Object;
.source "Lang.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/Lang$Script;,
        Lsweet/tts/Lang$TextRun;,
        Lsweet/tts/Lang$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLang.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Lang.kt\nsweet/tts/Lang\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,219:1\n1761#2,3:220\n1761#2,3:223\n1563#2:226\n1634#2,3:227\n12667#3,2:230\n*S KotlinDebug\n*F\n+ 1 Lang.kt\nsweet/tts/Lang\n*L\n108#1:220,3\n111#1:223,3\n155#1:226\n155#1:227,3\n165#1:230,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0014\u0015B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0013\u001a\u00020\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lsweet/tts/Lang;",
        "",
        "<init>",
        "()V",
        "isEmoji",
        "",
        "cp",
        "",
        "scriptOf",
        "Lsweet/tts/Lang$Script;",
        "languageOn",
        "lang",
        "",
        "enabledOrEnglish",
        "mergeAdjacent",
        "",
        "Lsweet/tts/Lang$TextRun;",
        "runs",
        "segmentRuns",
        "text",
        "TextRun",
        "Script",
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
.field public static final INSTANCE:Lsweet/tts/Lang;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsweet/tts/Lang;

    invoke-direct {v0}, Lsweet/tts/Lang;-><init>()V

    sput-object v0, Lsweet/tts/Lang;->INSTANCE:Lsweet/tts/Lang;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$languageOn(Lsweet/tts/Lang;Ljava/lang/String;)Z
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lsweet/tts/Lang;->languageOn(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 111
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p0}, Lsweet/tts/VoiceCatalog;->getLANGUAGES()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 223
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 111
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0, p1}, Lsweet/tts/Prefs;->isLanguageEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    :goto_0
    const-string p0, "en"

    return-object p0
.end method

.method private final isEmoji(I)Z
    .locals 2

    const p0, 0x1f300

    const v0, 0x1f600

    const/4 v1, 0x1

    if-gt p0, p1, :cond_0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    if-gt v0, p1, :cond_1

    const p0, 0x1f650

    if-ge p1, p0, :cond_1

    return v1

    :cond_1
    const p0, 0x1f680

    if-gt p0, p1, :cond_2

    const p0, 0x1f700

    if-ge p1, p0, :cond_2

    return v1

    :cond_2
    const p0, 0x1f900

    if-gt p0, p1, :cond_3

    const p0, 0x1fa00

    if-ge p1, p0, :cond_3

    return v1

    :cond_3
    const p0, 0x1fa70

    if-gt p0, p1, :cond_4

    const p0, 0x1fb00

    if-ge p1, p0, :cond_4

    return v1

    :cond_4
    const/16 p0, 0x2600

    const/16 v0, 0x2700

    if-gt p0, p1, :cond_5

    if-ge p1, v0, :cond_5

    return v1

    :cond_5
    if-gt v0, p1, :cond_6

    const/16 p0, 0x27c0

    if-ge p1, p0, :cond_6

    return v1

    :cond_6
    const p0, 0x1f1e6

    if-gt p0, p1, :cond_7

    const p0, 0x1f200

    if-ge p1, p0, :cond_7

    return v1

    :cond_7
    const p0, 0xfe0f

    if-eq p1, p0, :cond_9

    const/16 p0, 0x200d

    if-ne p1, p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_0
    return v1
.end method

.method private final languageOn(Ljava/lang/String;)Z
    .locals 1

    .line 108
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p0}, Lsweet/tts/VoiceCatalog;->getLANGUAGES()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 220
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 108
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0, p1}, Lsweet/tts/Prefs;->isLanguageEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private final mergeAdjacent(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsweet/tts/Lang$TextRun;",
            ">;)",
            "Ljava/util/List<",
            "Lsweet/tts/Lang$TextRun;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsweet/tts/Lang$TextRun;

    .line 116
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsweet/tts/Lang$TextRun;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v1}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Lsweet/tts/Lang$TextRun;

    invoke-virtual {v1}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lsweet/tts/Lang$TextRun;->getText()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 120
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private final scriptOf(I)Lsweet/tts/Lang$Script;
    .locals 6

    const/16 v0, 0x964

    if-eq p1, v0, :cond_15

    const/16 v0, 0x965

    if-ne p1, v0, :cond_0

    goto/16 :goto_2

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Lsweet/tts/Lang;->isEmoji(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lsweet/tts/Lang$Script;->EMOJI:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_1
    const p0, 0xe000

    if-ne p1, p0, :cond_2

    .line 75
    sget-object p0, Lsweet/tts/Lang$Script;->NUMBER:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_2
    const/16 p0, 0x30

    if-gt p0, p1, :cond_3

    const/16 p0, 0x3a

    if-ge p1, p0, :cond_3

    .line 76
    sget-object p0, Lsweet/tts/Lang$Script;->NUMBER:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_3
    const/16 p0, 0x900

    const/16 v0, 0x980

    if-gt p0, p1, :cond_4

    if-ge p1, v0, :cond_4

    .line 77
    sget-object p0, Lsweet/tts/Lang$Script;->DEVANAGARI:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_4
    const/16 p0, 0xa00

    if-gt v0, p1, :cond_5

    if-ge p1, p0, :cond_5

    .line 78
    sget-object p0, Lsweet/tts/Lang$Script;->BENGALI:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_5
    const/16 v0, 0xc00

    const/16 v1, 0xb80

    if-gt v1, p1, :cond_6

    if-ge p1, v0, :cond_6

    .line 79
    sget-object p0, Lsweet/tts/Lang$Script;->TAMIL:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_6
    const/16 v2, 0xc80

    if-gt v0, p1, :cond_7

    if-ge p1, v2, :cond_7

    .line 80
    sget-object p0, Lsweet/tts/Lang$Script;->TELUGU:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_7
    const/16 v0, 0xb00

    const/16 v3, 0xa80

    if-gt v3, p1, :cond_8

    if-ge p1, v0, :cond_8

    .line 81
    sget-object p0, Lsweet/tts/Lang$Script;->GUJARATI:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_8
    const/16 v4, 0xd00

    if-gt v4, p1, :cond_9

    const/16 v5, 0xd80

    if-ge p1, v5, :cond_9

    .line 82
    sget-object p0, Lsweet/tts/Lang$Script;->MALAYALAM:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_9
    if-gt v2, p1, :cond_a

    if-ge p1, v4, :cond_a

    .line 83
    sget-object p0, Lsweet/tts/Lang$Script;->KANNADA:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_a
    if-gt p0, p1, :cond_b

    if-ge p1, v3, :cond_b

    .line 84
    sget-object p0, Lsweet/tts/Lang$Script;->PUNJABI:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_b
    if-gt v0, p1, :cond_c

    if-ge p1, v1, :cond_c

    .line 88
    sget-object p0, Lsweet/tts/Lang$Script;->ODIA:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_c
    const p0, 0xabc0

    if-gt p0, p1, :cond_d

    const p0, 0xac00

    if-ge p1, p0, :cond_d

    .line 89
    sget-object p0, Lsweet/tts/Lang$Script;->MEETEI:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_d
    const/16 p0, 0x1c50

    if-gt p0, p1, :cond_e

    const/16 p0, 0x1c80

    if-ge p1, p0, :cond_e

    .line 90
    sget-object p0, Lsweet/tts/Lang$Script;->OLCHIKI:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_e
    const/16 p0, 0x600

    if-gt p0, p1, :cond_f

    const/16 p0, 0x700

    if-ge p1, p0, :cond_f

    goto :goto_0

    :cond_f
    const/16 p0, 0x750

    if-gt p0, p1, :cond_10

    const/16 p0, 0x780

    if-ge p1, p0, :cond_10

    goto :goto_0

    :cond_10
    const p0, 0xfb50

    if-gt p0, p1, :cond_11

    const p0, 0xfe00

    if-ge p1, p0, :cond_11

    goto :goto_0

    :cond_11
    const p0, 0xfe70

    if-gt p0, p1, :cond_12

    const p0, 0xff00

    if-ge p1, p0, :cond_12

    .line 92
    :goto_0
    sget-object p0, Lsweet/tts/Lang$Script;->ARABIC:Lsweet/tts/Lang$Script;

    return-object p0

    :cond_12
    const/16 p0, 0x41

    if-gt p0, p1, :cond_13

    const/16 p0, 0x5b

    if-ge p1, p0, :cond_13

    goto :goto_1

    :cond_13
    const/16 p0, 0x61

    if-gt p0, p1, :cond_14

    const/16 p0, 0x7b

    if-ge p1, p0, :cond_14

    .line 93
    :goto_1
    sget-object p0, Lsweet/tts/Lang$Script;->LATIN:Lsweet/tts/Lang$Script;

    return-object p0

    .line 94
    :cond_14
    sget-object p0, Lsweet/tts/Lang$Script;->OTHER:Lsweet/tts/Lang$Script;

    return-object p0

    .line 69
    :cond_15
    :goto_2
    sget-object p0, Lsweet/tts/Lang$Script;->OTHER:Lsweet/tts/Lang$Script;

    return-object p0
.end method


# virtual methods
.method public final segmentRuns(Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lsweet/tts/Lang$TextRun;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 138
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    .line 139
    aget v6, v1, v5

    .line 140
    invoke-direct {v0, v6}, Lsweet/tts/Lang;->scriptOf(I)Lsweet/tts/Lang$Script;

    move-result-object v7

    .line 141
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsweet/tts/Lang$segmentRuns$RawRun;

    .line 143
    const-string v9, "appendCodePoint(...)"

    if-nez v8, :cond_1

    new-instance v8, Lsweet/tts/Lang$segmentRuns$RawRun;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v6, v7}, Lsweet/tts/Lang$segmentRuns$RawRun;-><init>(Ljava/lang/StringBuilder;Lsweet/tts/Lang$Script;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_2

    .line 144
    :cond_1
    sget-object v10, Lsweet/tts/Lang$Script;->OTHER:Lsweet/tts/Lang$Script;

    if-eq v7, v10, :cond_4

    invoke-virtual {v8}, Lsweet/tts/Lang$segmentRuns$RawRun;->getScript()Lsweet/tts/Lang$Script;

    move-result-object v10

    if-ne v7, v10, :cond_2

    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {v8}, Lsweet/tts/Lang$segmentRuns$RawRun;->getScript()Lsweet/tts/Lang$Script;

    move-result-object v10

    sget-object v11, Lsweet/tts/Lang$Script;->OTHER:Lsweet/tts/Lang$Script;

    if-ne v10, v11, :cond_3

    .line 146
    invoke-virtual {v8, v7}, Lsweet/tts/Lang$segmentRuns$RawRun;->setScript(Lsweet/tts/Lang$Script;)V

    .line 147
    invoke-virtual {v8}, Lsweet/tts/Lang$segmentRuns$RawRun;->getSb()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 149
    :cond_3
    new-instance v8, Lsweet/tts/Lang$segmentRuns$RawRun;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v6, v7}, Lsweet/tts/Lang$segmentRuns$RawRun;-><init>(Ljava/lang/StringBuilder;Lsweet/tts/Lang$Script;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_2

    .line 144
    :cond_4
    :goto_1
    invoke-virtual {v8}, Lsweet/tts/Lang$segmentRuns$RawRun;->getSb()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 155
    :cond_5
    move-object v1, v2

    check-cast v1, Ljava/lang/Iterable;

    .line 226
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 227
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 228
    check-cast v6, Lsweet/tts/Lang$segmentRuns$RawRun;

    .line 155
    invoke-virtual {v6}, Lsweet/tts/Lang$segmentRuns$RawRun;->getSb()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 229
    :cond_6
    check-cast v3, Ljava/util/List;

    .line 156
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v5, [I

    move v7, v4

    :goto_4
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v7, v5, :cond_a

    .line 157
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lsweet/tts/Lang$segmentRuns$RawRun;

    invoke-virtual {v11}, Lsweet/tts/Lang$segmentRuns$RawRun;->getScript()Lsweet/tts/Lang$Script;

    move-result-object v11

    sget-object v12, Lsweet/tts/Lang$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Lsweet/tts/Lang$Script;->ordinal()I

    move-result v11

    aget v11, v12, v11

    if-eq v11, v10, :cond_8

    if-eq v11, v9, :cond_7

    if-eq v11, v8, :cond_9

    move v8, v4

    goto :goto_5

    :cond_7
    move v8, v9

    goto :goto_5

    :cond_8
    move v8, v10

    .line 161
    :cond_9
    :goto_5
    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 164
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    move v2, v4

    :goto_6
    if-ge v2, v5, :cond_c

    .line 230
    aget v7, v6, v2

    if-eqz v7, :cond_b

    .line 165
    sget-object v2, Lsweet/tts/SharedScriptLid;->INSTANCE:Lsweet/tts/SharedScriptLid;

    .line 166
    new-instance v5, Lsweet/tts/Lang$segmentRuns$shared$2;

    invoke-direct {v5, v0}, Lsweet/tts/Lang$segmentRuns$shared$2;-><init>(Ljava/lang/Object;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 165
    invoke-virtual {v2, v3, v6, v5}, Lsweet/tts/SharedScriptLid;->resolve(Ljava/util/List;[ILkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v2

    goto :goto_7

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 167
    :cond_c
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 168
    :goto_7
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    sget-object v5, Lsweet/tts/LangPerf;->INSTANCE:Lsweet/tts/LangPerf;

    invoke-virtual {v5}, Lsweet/tts/LangPerf;->getLidCalls()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sget-object v5, Lsweet/tts/LangPerf;->INSTANCE:Lsweet/tts/LangPerf;

    invoke-virtual {v5}, Lsweet/tts/LangPerf;->getLidNs()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v11

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 170
    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 171
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsweet/tts/Lang$segmentRuns$RawRun;

    .line 172
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 173
    move-object v12, v11

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_f

    :cond_e
    move v12, v10

    goto/16 :goto_d

    .line 174
    :cond_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_11

    .line 176
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lsweet/tts/SharedScriptLid$Piece;

    .line 177
    sget-object v12, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v12}, Lsweet/tts/DetailedLog;->getActive()Z

    move-result v12

    if-eqz v12, :cond_10

    sget-object v12, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v7}, Lsweet/tts/Lang$segmentRuns$RawRun;->getScript()Lsweet/tts/Lang$Script;

    move-result-object v13

    invoke-virtual {v13}, Lsweet/tts/Lang$Script;->name()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "toLowerCase(...)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lsweet/tts/SharedScriptLid$Piece;->getNote()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v11}, Lsweet/tts/SharedScriptLid$Piece;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " text="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v13, "Lang"

    invoke-virtual {v12, v13, v10}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_10
    new-instance v10, Lsweet/tts/Lang$TextRun;

    invoke-virtual {v11}, Lsweet/tts/SharedScriptLid$Piece;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lsweet/tts/SharedScriptLid$Piece;->getLang()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lsweet/tts/Lang;->enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v12, v11}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    goto :goto_9

    .line 182
    :cond_11
    invoke-virtual {v7}, Lsweet/tts/Lang$segmentRuns$RawRun;->getScript()Lsweet/tts/Lang$Script;

    move-result-object v4

    sget-object v7, Lsweet/tts/Lang$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lsweet/tts/Lang$Script;->ordinal()I

    move-result v4

    aget v4, v7, v4

    const-string v7, "__match_language__"

    const-string v10, "en"

    packed-switch v4, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 208
    :pswitch_0
    new-instance v4, Lsweet/tts/Lang$TextRun;

    .line 210
    sget-object v12, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v12}, Lsweet/tts/Prefs;->emojiVoice()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsweet/tts/Lang$TextRun;

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_12

    goto :goto_a

    :cond_12
    move-object v10, v7

    goto :goto_a

    :cond_13
    const-string v10, "emoji"

    .line 208
    :cond_14
    :goto_a
    invoke-direct {v4, v11, v10}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 204
    :pswitch_1
    new-instance v4, Lsweet/tts/Lang$TextRun;

    .line 206
    sget-object v12, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v12}, Lsweet/tts/Prefs;->numberVoice()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsweet/tts/Lang$TextRun;

    if-eqz v7, :cond_17

    invoke-virtual {v7}, Lsweet/tts/Lang$TextRun;->getLang()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_15

    goto :goto_b

    :cond_15
    move-object v10, v7

    goto :goto_b

    :cond_16
    const-string v10, "number"

    .line 204
    :cond_17
    :goto_b
    invoke-direct {v4, v11, v10}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 196
    :pswitch_2
    new-instance v4, Lsweet/tts/Lang$TextRun;

    invoke-direct {v0, v10}, Lsweet/tts/Lang;->enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v11, v7}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 193
    :pswitch_3
    new-instance v4, Lsweet/tts/Lang$TextRun;

    const-string v7, "sat"

    invoke-direct {v0, v7}, Lsweet/tts/Lang;->enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v11, v7}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 192
    :pswitch_4
    new-instance v4, Lsweet/tts/Lang$TextRun;

    const-string v7, "mni"

    invoke-direct {v0, v7}, Lsweet/tts/Lang;->enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v11, v7}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 191
    :pswitch_5
    new-instance v4, Lsweet/tts/Lang$TextRun;

    const-string v7, "or"

    invoke-direct {v0, v7}, Lsweet/tts/Lang;->enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v11, v7}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 188
    :pswitch_6
    new-instance v4, Lsweet/tts/Lang$TextRun;

    const-string v7, "pa"

    invoke-direct {v0, v7}, Lsweet/tts/Lang;->enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v11, v7}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 187
    :pswitch_7
    new-instance v4, Lsweet/tts/Lang$TextRun;

    const-string v7, "kn"

    invoke-direct {v0, v7}, Lsweet/tts/Lang;->enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v11, v7}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 186
    :pswitch_8
    new-instance v4, Lsweet/tts/Lang$TextRun;

    const-string v7, "ml"

    invoke-direct {v0, v7}, Lsweet/tts/Lang;->enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v11, v7}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 185
    :pswitch_9
    new-instance v4, Lsweet/tts/Lang$TextRun;

    const-string v7, "gu"

    invoke-direct {v0, v7}, Lsweet/tts/Lang;->enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v11, v7}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 184
    :pswitch_a
    new-instance v4, Lsweet/tts/Lang$TextRun;

    const-string v7, "te"

    invoke-direct {v0, v7}, Lsweet/tts/Lang;->enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v11, v7}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 183
    :pswitch_b
    new-instance v4, Lsweet/tts/Lang$TextRun;

    const-string v7, "ta"

    invoke-direct {v0, v7}, Lsweet/tts/Lang;->enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v11, v7}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    const/4 v12, 0x1

    goto :goto_d

    .line 190
    :pswitch_c
    new-instance v4, Lsweet/tts/Lang$TextRun;

    sget-object v7, Lsweet/tts/SharedScriptLid;->INSTANCE:Lsweet/tts/SharedScriptLid;

    new-instance v10, Lsweet/tts/Lang$segmentRuns$1;

    invoke-direct {v10, v0}, Lsweet/tts/Lang$segmentRuns$1;-><init>(Ljava/lang/Object;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7, v8, v10}, Lsweet/tts/SharedScriptLid;->groupDefault(ILkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_18

    const-string v7, "bn"

    :cond_18
    invoke-direct {v0, v7}, Lsweet/tts/Lang;->enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v11, v7}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 195
    :pswitch_d
    new-instance v4, Lsweet/tts/Lang$TextRun;

    sget-object v7, Lsweet/tts/SharedScriptLid;->INSTANCE:Lsweet/tts/SharedScriptLid;

    new-instance v10, Lsweet/tts/Lang$segmentRuns$2;

    invoke-direct {v10, v0}, Lsweet/tts/Lang$segmentRuns$2;-><init>(Ljava/lang/Object;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7, v9, v10}, Lsweet/tts/SharedScriptLid;->groupDefault(ILkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_19

    const-string v7, "ur"

    :cond_19
    invoke-direct {v0, v7}, Lsweet/tts/Lang;->enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v11, v7}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 213
    :pswitch_e
    new-instance v4, Lsweet/tts/Lang$TextRun;

    sget-object v7, Lsweet/tts/SharedScriptLid;->INSTANCE:Lsweet/tts/SharedScriptLid;

    new-instance v10, Lsweet/tts/Lang$segmentRuns$3;

    invoke-direct {v10, v0}, Lsweet/tts/Lang$segmentRuns$3;-><init>(Ljava/lang/Object;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x1

    invoke-virtual {v7, v12, v10}, Lsweet/tts/SharedScriptLid;->groupDefault(ILkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1a

    const-string v7, "hi"

    :cond_1a
    invoke-direct {v0, v7}, Lsweet/tts/Lang;->enabledOrEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v11, v7}, Lsweet/tts/Lang$TextRun;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    move v4, v6

    move v10, v12

    goto/16 :goto_8

    .line 216
    :cond_1b
    invoke-direct {v0, v5}, Lsweet/tts/Lang;->mergeAdjacent(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
