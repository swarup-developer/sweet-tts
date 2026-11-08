.class public final Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;
.super Ljava/lang/Object;
.source "OpenEVVCompatibilityFixes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u0018\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;",
        "",
        "<init>",
        "()V",
        "PROTECTED_SYSTEM_TAG_REGEX",
        "Lkotlin/text/Regex;",
        "SUPPORTED_ECI_TAG_REGEX",
        "BEFORE_A_DIGIT",
        "OPENERS",
        "",
        "BEFORE_AN_OPENER",
        "LOOSE_S_SUFFIX",
        "GROUPED_THOUSANDS",
        "apply",
        "text",
        "eciVoiceTagsEnabled",
        "",
        "applyFixes",
        "applyNonBacktickFixes",
        "sanitizeBackticks",
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
.field private static final BEFORE_AN_OPENER:Lkotlin/text/Regex;

.field private static final BEFORE_A_DIGIT:Lkotlin/text/Regex;

.field private static final GROUPED_THOUSANDS:Lkotlin/text/Regex;

.field public static final INSTANCE:Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;

.field private static final LOOSE_S_SUFFIX:Lkotlin/text/Regex;

.field private static final OPENERS:Ljava/lang/String; = "~#$%^*({|\\[<\u2022"

.field private static final PROTECTED_SYSTEM_TAG_REGEX:Lkotlin/text/Regex;

.field private static final SUPPORTED_ECI_TAG_REGEX:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;

    invoke-direct {v0}, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;-><init>()V

    sput-object v0, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->INSTANCE:Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;

    .line 14
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "`(\\[[^\\]\\r\\n\\t]+\\]|vb\\d+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->PROTECTED_SYSTEM_TAG_REGEX:Lkotlin/text/Regex;

    .line 16
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "`([a-z]{1,2}\\d{0,4}|[0-4])(?=[^A-Za-z0-9]|$)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->SUPPORTED_ECI_TAG_REGEX:Lkotlin/text/Regex;

    .line 18
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "([A-Za-z])(\\d)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->BEFORE_A_DIGIT:Lkotlin/text/Regex;

    .line 21
    new-instance v0, Lkotlin/text/Regex;

    sget-object v1, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    const-string v2, "~#$%^*({|\\[<\u2022"

    invoke-virtual {v1, v2}, Lkotlin/text/Regex$Companion;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "([A-Za-z]+)(["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->BEFORE_AN_OPENER:Lkotlin/text/Regex;

    .line 23
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "([A-Za-z]+)\\s+(\\(s\\))"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->LOOSE_S_SUFFIX:Lkotlin/text/Regex;

    .line 25
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\b\\d{1,3},000(?:,\\d{3})+\\b"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->GROUPED_THOUSANDS:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic apply$default(Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->apply(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final applyFixes(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12

    .line 51
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    const/16 v1, 0x60

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 52
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-direct {p0, p1}, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->applyNonBacktickFixes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p2, :cond_2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, 0x60

    const/16 v2, 0x27

    const/4 v3, 0x0

    move-object v0, p1

    .line 57
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->applyNonBacktickFixes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    sget-object v1, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->SUPPORTED_ECI_TAG_REGEX:Lkotlin/text/Regex;

    invoke-static {v1, v0, v2, v3, v4}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v3, "substring(...)"

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/text/MatchResult;

    .line 64
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v4

    .line 65
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-le v4, v2, :cond_3

    .line 67
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/16 v7, 0x60

    const/16 v8, 0x27

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-direct {p0, v2}, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->applyNonBacktickFixes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_3
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v5

    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 74
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v5, 0x60

    const/16 v6, 0x27

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->applyNonBacktickFixes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final applyNonBacktickFixes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 81
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 83
    :cond_0
    sget-object p1, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->BEFORE_A_DIGIT:Lkotlin/text/Regex;

    const-string v0, "$1 $2"

    invoke-virtual {p1, p0, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 84
    sget-object p1, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->BEFORE_AN_OPENER:Lkotlin/text/Regex;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 85
    sget-object p1, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->LOOSE_S_SUFFIX:Lkotlin/text/Regex;

    check-cast p0, Ljava/lang/CharSequence;

    const-string v0, "$1$2"

    invoke-virtual {p1, p0, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 86
    sget-object p1, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->GROUPED_THOUSANDS:Lkotlin/text/Regex;

    check-cast p0, Ljava/lang/CharSequence;

    new-instance v0, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final applyNonBacktickFixes$lambda$0(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 7

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, ","

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic sanitizeBackticks$default(Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 90
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->sanitizeBackticks(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final apply(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    .line 29
    :cond_0
    const-string v1, "`["

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "`vb"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    invoke-direct {p0, p1, p2}, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->applyFixes(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 33
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    sget-object v5, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->PROTECTED_SYSTEM_TAG_REGEX:Lkotlin/text/Regex;

    invoke-static {v5, v0, v2, v3, v4}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "substring(...)"

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/text/MatchResult;

    .line 36
    invoke-interface {v3}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v5

    .line 37
    invoke-interface {v3}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-le v5, v2, :cond_2

    .line 39
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p2}, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->applyFixes(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_2
    invoke-interface {v3}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v6

    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 45
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->applyFixes(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final sanitizeBackticks(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 92
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eloqium/tts/pipeline/OpenEVVCompatibilityFixes;->apply(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
