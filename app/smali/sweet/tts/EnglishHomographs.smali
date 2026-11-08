.class public final Lsweet/tts/EnglishHomographs;
.super Ljava/lang/Object;
.source "EnglishHomographs.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/EnglishHomographs$Rule;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnglishHomographs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnglishHomographs.kt\nsweet/tts/EnglishHomographs\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n1069#2,2:77\n1#3:79\n*S KotlinDebug\n*F\n+ 1 EnglishHomographs.kt\nsweet/tts/EnglishHomographs\n*L\n71#1:77,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lsweet/tts/EnglishHomographs;",
        "",
        "<init>",
        "()V",
        "I",
        "",
        "W",
        "B",
        "RULES",
        "",
        "Lsweet/tts/EnglishHomographs$Rule;",
        "QUICK",
        "Lkotlin/text/Regex;",
        "rewrite",
        "text",
        "sameCase",
        "original",
        "say",
        "Rule",
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
.field private static final B:Ljava/lang/String; = "(?<![\\p{L}\\p{N}_])"

.field private static final I:Ljava/lang/String; = "(?i)"

.field public static final INSTANCE:Lsweet/tts/EnglishHomographs;

.field private static final QUICK:Lkotlin/text/Regex;

.field private static final RULES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsweet/tts/EnglishHomographs$Rule;",
            ">;"
        }
    .end annotation
.end field

.field private static final W:Ljava/lang/String; = "(?![\\p{L}\\p{N}_])"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lsweet/tts/EnglishHomographs;

    invoke-direct {v0}, Lsweet/tts/EnglishHomographs;-><init>()V

    sput-object v0, Lsweet/tts/EnglishHomographs;->INSTANCE:Lsweet/tts/EnglishHomographs;

    const/16 v0, 0x19

    .line 19
    new-array v0, v0, [Lsweet/tts/EnglishHomographs$Rule;

    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])as\\s+(read)(?![\\p{L}\\p{N}_])"

    const/4 v3, 0x1

    const-string v4, "red"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 20
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)^\\s*(read)\\s+by(?=\\s*(?:$|[,:.\\d]))"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v3

    .line 21
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(read)\\s+by\\s+(?:\\d+|everyone|everybody|all)(?![\\p{L}\\p{N}_])"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 22
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(read)\\s*[/|]\\s*unread(?![\\p{L}\\p{N}_])"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 23
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])un(read)(?![\\p{L}\\p{N}_])"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 24
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(?:has|have|had|having|hasn\'t|haven\'t|hadn\'t)\\s+(?:(?:not|already|just|never|ever|recently|also|still)\\s+)?(read)(?![\\p{L}\\p{N}_])"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 25
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(?:have|has|had)\\s+(?:you|he|she|they|we|i|it|anyone|everyone|someone)\\s+(?:(?:not|already|just|never|ever)\\s+)?(read)(?![\\p{L}\\p{N}_])"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 26
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(?:is|are|was|were|be|been|being|isn\'t|aren\'t|wasn\'t|weren\'t)\\s+(?:(?:not|already|widely|rarely|often|never|also)\\s+)?(read)(?![\\p{L}\\p{N}_])"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 27
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(?:already|previously|recently|widely|last)\\s+(read)(?![\\p{L}\\p{N}_])"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 28
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])well[- ](read)(?![\\p{L}\\p{N}_])"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 29
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(?:i|he|she|we|they)\\s+(read)(?![\\p{L}\\p{N}_])(?=(?:\\s+\\S+){0,3}\\s+(?:yesterday|ago|earlier|last\\s+(?:night|week|month|year))(?![\\p{L}\\p{N}_]))"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 31
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(?:go|goes|going|went|gone)\\s+(live)(?![\\p{L}\\p{N}_])"

    const-string v4, "lyve"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 32
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(?:is|are|was|were)\\s+(live)(?![\\p{L}\\p{N}_])"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 33
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(live)[ -](?:stream|streams|streaming|streamed|video|videos|broadcast|broadcasts|chat|show|shows|event|events|concert|concerts|match|matches|score|scores|coverage|feed|tv|radio|news|update|updates|location|action)(?![\\p{L}\\p{N}_])"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 34
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(?:streamed|streaming|broadcast|recorded|performed|played|shown|aired)\\s+(live)(?![\\p{L}\\p{N}_])"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 36
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(?:tap|click|press|swipe|button)\\s+to\\s+(close)(?![\\p{L}\\p{N}_])"

    const-string v4, "cloze"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 38
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(?:to|will|please)\\s+(close)(?=\\s*(?:$|[.,!?;:])|\\s+(?:the|this|that|them|all|your|my|app|window|tab|menu|dialog|file|chat)(?![\\p{L}\\p{N}_]))"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 39
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(close)\\s+(?:button|window|windows|tab|tabs|app|apps|menu|dialog|popup|panel|screen|file|files|drawer|sheet|keyboard|chat|search|them|all|everything)(?![\\p{L}\\p{N}_])"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 41
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(lead)\\s+(?:pipe|pipes|pencil|pencils|poisoning|paint|bullet|bullets|acid|metal)(?![\\p{L}\\p{N}_])"

    const-string v4, "led"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 42
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(unleaded)(?![\\p{L}\\p{N}_])"

    const-string v4, "unledded"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 44
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(bass)\\s+(?:guitar|guitars|guitarist|boost|speaker|speakers|player|line|drum|drums|level|sound|note|notes|clef|voice)(?![\\p{L}\\p{N}_])"

    const-string v4, "base"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 45
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(?:double|sub)\\s+(bass)(?![\\p{L}\\p{N}_])"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 47
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(minute)\\s+(?:details?|amounts?|differences?|particles?|traces?|quantity|quantities)(?![\\p{L}\\p{N}_])"

    const-string v4, "my newt"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 49
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])wear\\s+and\\s+(tear)(?![\\p{L}\\p{N}_])"

    const-string v4, "tare"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 50
    new-instance v1, Lsweet/tts/EnglishHomographs$Rule;

    const-string v2, "(?i)(?<![\\p{L}\\p{N}_])(tear)\\s+(?:down|apart)(?![\\p{L}\\p{N}_])"

    invoke-direct {v1, v2, v3, v4}, Lsweet/tts/EnglishHomographs$Rule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lsweet/tts/EnglishHomographs;->RULES:Ljava/util/List;

    .line 53
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?i)read|live|close|lead|bass|minute|tear"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsweet/tts/EnglishHomographs;->QUICK:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final rewrite$lambda$0(Lsweet/tts/EnglishHomographs$Rule;Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v0

    invoke-virtual {p0}, Lsweet/tts/EnglishHomographs$Rule;->getGroup()I

    move-result v1

    invoke-interface {v0, v1}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    .line 61
    :cond_0
    invoke-virtual {v0}, Lkotlin/text/MatchGroup;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v1

    invoke-interface {p1}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v2

    sub-int/2addr v1, v2

    .line 62
    invoke-virtual {v0}, Lkotlin/text/MatchGroup;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v3

    sub-int/2addr v2, v3

    .line 63
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "substring(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lsweet/tts/EnglishHomographs;->INSTANCE:Lsweet/tts/EnglishHomographs;

    invoke-virtual {v0}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lsweet/tts/EnglishHomographs$Rule;->getSay()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, v0, p0}, Lsweet/tts/EnglishHomographs;->sameCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final sameCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const-string v0, "toUpperCase(...)"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p0, v2, :cond_2

    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    move v3, v1

    .line 77
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 71
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 72
    :cond_2
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object p0, p2

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "substring(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p2
.end method


# virtual methods
.method public final rewrite(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    sget-object p0, Lsweet/tts/EnglishHomographs;->QUICK:Lkotlin/text/Regex;

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    sget-object p0, Lsweet/tts/EnglishHomographs;->RULES:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsweet/tts/EnglishHomographs$Rule;

    .line 59
    invoke-virtual {v0}, Lsweet/tts/EnglishHomographs$Rule;->getRe()Lkotlin/text/Regex;

    move-result-object v1

    check-cast p1, Ljava/lang/CharSequence;

    new-instance v2, Lsweet/tts/EnglishHomographs$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lsweet/tts/EnglishHomographs$$ExternalSyntheticLambda0;-><init>(Lsweet/tts/EnglishHomographs$Rule;)V

    invoke-virtual {v1, p1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method
