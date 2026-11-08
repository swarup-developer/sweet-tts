.class public final Lsweet/tts/Dictionary;
.super Ljava/lang/Object;
.source "Dictionary.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/Dictionary$Entry;,
        Lsweet/tts/Dictionary$Target;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDictionary.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dictionary.kt\nsweet/tts/Dictionary\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,223:1\n774#2:224\n865#2,2:225\n1563#2:227\n1634#2,3:228\n774#2:231\n865#2,2:232\n1563#2:235\n1634#2,3:236\n1#3:234\n*S KotlinDebug\n*F\n+ 1 Dictionary.kt\nsweet/tts/Dictionary\n*L\n44#1:224\n44#1:225,2\n44#1:227\n44#1:228,3\n55#1:231\n55#1:232,2\n96#1:235\n96#1:236,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u000256B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bJ\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bJ\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u0010J\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u000b2\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u000b2\u0006\u0010\u001a\u001a\u00020\u0010H\u0002J\u001c\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u000bJ(\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u00102\u0008\u0008\u0002\u0010!\u001a\u00020\"J0\u0010#\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010$\u001a\u00020%2\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u00102\u0008\u0008\u0002\u0010!\u001a\u00020\"J\u0016\u0010&\u001a\u00020\u001c2\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010$\u001a\u00020%J\u0010\u0010\'\u001a\u00020\"2\u0006\u0010(\u001a\u00020%H\u0002J \u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020%2\u0006\u0010-\u001a\u00020%H\u0002J(\u0010.\u001a\u00020\"2\u0006\u0010*\u001a\u00020+2\u0006\u0010/\u001a\u00020%2\u0006\u0010\u001f\u001a\u00020+2\u0006\u0010!\u001a\u00020\"H\u0002J \u00100\u001a\u00020\u00102\u0006\u00101\u001a\u00020\u00102\u0006\u00102\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0002J\u0016\u00103\u001a\u00020\u00102\u0006\u00101\u001a\u00020\u00102\u0006\u00104\u001a\u00020\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R,\u0010\u0014\u001a \u0012\u0004\u0012\u00020\u0010\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u000b0\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lsweet/tts/Dictionary;",
        "",
        "<init>",
        "()V",
        "ENGLISH_ELOQUENCE",
        "Lsweet/tts/Dictionary$Target;",
        "getENGLISH_ELOQUENCE",
        "()Lsweet/tts/Dictionary$Target;",
        "ENGLISH_VOCALIZER",
        "getENGLISH_VOCALIZER",
        "languageTargets",
        "",
        "allTargets",
        "enabledTargets",
        "targetFor",
        "key",
        "",
        "targetKeyFor",
        "resolvedVoice",
        "lang",
        "parsed",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lkotlin/Pair;",
        "Lsweet/tts/Dictionary$Entry;",
        "entriesFor",
        "parseEntries",
        "raw",
        "setEntriesFor",
        "",
        "entries",
        "addEntry",
        "find",
        "replace",
        "caseSensitive",
        "",
        "updateEntry",
        "index",
        "",
        "removeEntry",
        "isWordChar",
        "cp",
        "isWholeMatch",
        "codepoints",
        "",
        "startCp",
        "findCpLen",
        "regionMatches",
        "start",
        "applyEntry",
        "text",
        "entry",
        "rewrite",
        "targetKey",
        "Target",
        "Entry",
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
.field private static final ENGLISH_ELOQUENCE:Lsweet/tts/Dictionary$Target;

.field private static final ENGLISH_VOCALIZER:Lsweet/tts/Dictionary$Target;

.field public static final INSTANCE:Lsweet/tts/Dictionary;

.field private static final parsed:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lsweet/tts/Dictionary$Entry;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsweet/tts/Dictionary;

    invoke-direct {v0}, Lsweet/tts/Dictionary;-><init>()V

    sput-object v0, Lsweet/tts/Dictionary;->INSTANCE:Lsweet/tts/Dictionary;

    .line 38
    new-instance v0, Lsweet/tts/Dictionary$Target;

    const-string v1, "eti_eloquence"

    const-string v2, "English (ETI Eloquence)"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lsweet/tts/Dictionary$Target;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lsweet/tts/Dictionary;->ENGLISH_ELOQUENCE:Lsweet/tts/Dictionary$Target;

    .line 39
    new-instance v0, Lsweet/tts/Dictionary$Target;

    const-string v1, "vocalizer_english"

    const-string v2, "English (Vocalizer)"

    invoke-direct {v0, v1, v2, v3}, Lsweet/tts/Dictionary$Target;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lsweet/tts/Dictionary;->ENGLISH_VOCALIZER:Lsweet/tts/Dictionary$Target;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lsweet/tts/Dictionary;->parsed:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic addEntry$default(Lsweet/tts/Dictionary;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 117
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lsweet/tts/Dictionary;->addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private final applyEntry(Ljava/lang/String;Lsweet/tts/Dictionary$Entry;Z)Ljava/lang/String;
    .locals 8

    .line 178
    invoke-virtual {p2}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    xor-int/lit8 v2, p3, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 180
    invoke-virtual {p2}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 181
    array-length v2, v1

    if-eqz v2, :cond_4

    .line 182
    array-length v3, v0

    if-le v2, v3, :cond_1

    goto :goto_1

    .line 184
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    .line 187
    :goto_0
    array-length v6, v0

    if-ge v4, v6, :cond_3

    add-int v6, v4, v2

    .line 188
    array-length v7, v0

    if-gt v6, v7, :cond_2

    .line 189
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v4, v1, p3}, Lsweet/tts/Dictionary;->regionMatches([II[IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 190
    invoke-direct {p0, v0, v4, v2}, Lsweet/tts/Dictionary;->isWholeMatch([III)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 192
    invoke-virtual {p2}, Lsweet/tts/Dictionary$Entry;->getReplace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    move v4, v6

    goto :goto_0

    .line 197
    :cond_2
    aget v6, v0, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    .line 200
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    :goto_1
    return-object p1
.end method

.method private final isWholeMatch([III)Z
    .locals 3

    add-int/2addr p3, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    add-int/lit8 v2, p2, -0x1

    .line 153
    aget v2, p1, v2

    invoke-direct {p0, v2}, Lsweet/tts/Dictionary;->isWordChar(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    aget p2, p1, p2

    invoke-direct {p0, p2}, Lsweet/tts/Dictionary;->isWordChar(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    .line 155
    :goto_1
    array-length v2, p1

    if-ge p3, v2, :cond_3

    add-int/lit8 v2, p3, -0x1

    .line 156
    aget v2, p1, v2

    invoke-direct {p0, v2}, Lsweet/tts/Dictionary;->isWordChar(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    aget p1, p1, p3

    invoke-direct {p0, p1}, Lsweet/tts/Dictionary;->isWordChar(I)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v0

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v1

    :goto_3
    if-eqz p2, :cond_4

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method private final isWordChar(I)Z
    .locals 1

    .line 138
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_2

    const/16 p0, 0x200c

    if-eq p1, p0, :cond_2

    const/16 p0, 0x200d

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/4 p1, 0x6

    if-eq p0, p1, :cond_2

    const/16 p1, 0x8

    if-eq p0, p1, :cond_2

    const/4 p1, 0x7

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private final parseEntries(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lsweet/tts/Dictionary$Entry;",
            ">;"
        }
    .end annotation

    .line 94
    const-string p0, "getString(...)"

    .line 95
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 236
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    .line 97
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 98
    new-instance v4, Lsweet/tts/Dictionary$Entry;

    const-string v5, "find"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "replace"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "caseSensitive"

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {v4, v5, v6, v3}, Lsweet/tts/Dictionary$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 237
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_0
    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 101
    :catch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final regionMatches([II[IZ)Z
    .locals 4

    .line 162
    array-length p0, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    add-int v2, p2, v1

    .line 163
    aget v2, p1, v2

    .line 164
    aget v3, p3, v1

    if-eqz p4, :cond_0

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 165
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v2

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic updateEntry$default(Lsweet/tts/Dictionary;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 121
    invoke-virtual/range {v0 .. v5}, Lsweet/tts/Dictionary;->updateEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "find"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1}, Lsweet/tts/Dictionary;->entriesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lsweet/tts/Dictionary$Entry;

    invoke-direct {v1, p2, p3, p4}, Lsweet/tts/Dictionary$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsweet/tts/Dictionary;->setEntriesFor(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final allTargets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsweet/tts/Dictionary$Target;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 49
    new-array v0, v0, [Lsweet/tts/Dictionary$Target;

    const/4 v1, 0x0

    sget-object v2, Lsweet/tts/Dictionary;->ENGLISH_ELOQUENCE:Lsweet/tts/Dictionary$Target;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lsweet/tts/Dictionary;->ENGLISH_VOCALIZER:Lsweet/tts/Dictionary$Target;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0}, Lsweet/tts/Dictionary;->languageTargets()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final enabledTargets()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsweet/tts/Dictionary$Target;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 55
    new-array v0, v0, [Lsweet/tts/Dictionary$Target;

    const/4 v1, 0x0

    sget-object v2, Lsweet/tts/Dictionary;->ENGLISH_ELOQUENCE:Lsweet/tts/Dictionary$Target;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lsweet/tts/Dictionary;->ENGLISH_VOCALIZER:Lsweet/tts/Dictionary$Target;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0}, Lsweet/tts/Dictionary;->languageTargets()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 232
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

    check-cast v3, Lsweet/tts/Dictionary$Target;

    .line 55
    sget-object v4, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v3}, Lsweet/tts/Dictionary$Target;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lsweet/tts/Prefs;->isLanguageEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 231
    check-cast v1, Ljava/lang/Iterable;

    .line 55
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final entriesFor(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lsweet/tts/Dictionary$Entry;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0, p1}, Lsweet/tts/Prefs;->dictionaryJsonFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 87
    :cond_0
    sget-object v1, Lsweet/tts/Dictionary;->parsed:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 88
    :cond_1
    invoke-direct {p0, v0}, Lsweet/tts/Dictionary;->parseEntries(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 89
    check-cast v1, Ljava/util/Map;

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final getENGLISH_ELOQUENCE()Lsweet/tts/Dictionary$Target;
    .locals 0

    .line 38
    sget-object p0, Lsweet/tts/Dictionary;->ENGLISH_ELOQUENCE:Lsweet/tts/Dictionary$Target;

    return-object p0
.end method

.method public final getENGLISH_VOCALIZER()Lsweet/tts/Dictionary$Target;
    .locals 0

    .line 39
    sget-object p0, Lsweet/tts/Dictionary;->ENGLISH_VOCALIZER:Lsweet/tts/Dictionary$Target;

    return-object p0
.end method

.method public final languageTargets()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsweet/tts/Dictionary$Target;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object p0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {p0}, Lsweet/tts/VoiceCatalog;->getLANGUAGES()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 225
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

    .line 44
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "en"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 224
    check-cast v0, Ljava/lang/Iterable;

    .line 227
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/Collection;

    .line 228
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 229
    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    new-instance v3, Lsweet/tts/Dictionary$Target;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Lsweet/tts/Dictionary$Target;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 229
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    :cond_2
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final removeEntry(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1}, Lsweet/tts/Dictionary;->entriesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-ltz p2, :cond_0

    .line 130
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 131
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, p1, v0}, Lsweet/tts/Dictionary;->setEntriesFor(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final rewrite(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, p2}, Lsweet/tts/Dictionary;->entriesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 209
    :cond_0
    invoke-virtual {p0, p2}, Lsweet/tts/Dictionary;->targetFor(Ljava/lang/String;)Lsweet/tts/Dictionary$Target;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lsweet/tts/Dictionary$Target;->getAllowsCaseSensitive()Z

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 211
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsweet/tts/Dictionary$Entry;

    .line 212
    invoke-virtual {v4}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 213
    invoke-virtual {v4}, Lsweet/tts/Dictionary$Entry;->getCaseSensitive()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    .line 215
    :goto_2
    invoke-direct {p0, p1, v4, v5}, Lsweet/tts/Dictionary;->applyEntry(Ljava/lang/String;Lsweet/tts/Dictionary$Entry;Z)Ljava/lang/String;

    move-result-object v5

    .line 216
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 217
    sget-object v6, Lsweet/tts/DetailedLog;->INSTANCE:Lsweet/tts/DetailedLog;

    invoke-virtual {v4}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lsweet/tts/Dictionary$Entry;->getReplace()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v8, p1}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v8, Lsweet/tts/LogText;->INSTANCE:Lsweet/tts/LogText;

    invoke-virtual {v8, v5}, Lsweet/tts/LogText;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "target="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\" -> \""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " -> "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "Dictionary"

    invoke-virtual {v6, v4, p1}, Lsweet/tts/DetailedLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object p1, v5

    goto/16 :goto_1

    :cond_5
    return-object p1
.end method

.method public final setEntriesFor(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lsweet/tts/Dictionary$Entry;",
            ">;)V"
        }
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "entries"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 107
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsweet/tts/Dictionary$Entry;

    .line 108
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 109
    const-string v2, "find"

    invoke-virtual {v0}, Lsweet/tts/Dictionary$Entry;->getFind()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v2, "replace"

    invoke-virtual {v0}, Lsweet/tts/Dictionary$Entry;->getReplace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v2, "caseSensitive"

    invoke-virtual {v0}, Lsweet/tts/Dictionary$Entry;->getCaseSensitive()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 108
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 114
    :cond_0
    sget-object p2, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1, p0}, Lsweet/tts/Prefs;->setDictionaryJsonFor(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final targetFor(Ljava/lang/String;)Lsweet/tts/Dictionary$Target;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lsweet/tts/Dictionary;->allTargets()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lsweet/tts/Dictionary$Target;

    invoke-virtual {v1}, Lsweet/tts/Dictionary$Target;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lsweet/tts/Dictionary$Target;

    return-object v0
.end method

.method public final targetKeyFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "lang"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-string p0, "ETI Eloquence"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lsweet/tts/Dictionary;->ENGLISH_ELOQUENCE:Lsweet/tts/Dictionary$Target;

    invoke-virtual {p0}, Lsweet/tts/Dictionary$Target;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    const-string p0, "en"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lsweet/tts/Dictionary;->ENGLISH_VOCALIZER:Lsweet/tts/Dictionary$Target;

    invoke-virtual {p0}, Lsweet/tts/Dictionary$Target;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2
.end method

.method public final updateEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "find"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replace"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p1}, Lsweet/tts/Dictionary;->entriesFor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-ltz p2, :cond_0

    .line 123
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 124
    new-instance v1, Lsweet/tts/Dictionary$Entry;

    invoke-direct {v1, p3, p4, p5}, Lsweet/tts/Dictionary$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0, p1, v0}, Lsweet/tts/Dictionary;->setEntriesFor(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method
