.class public final Lsweet/tts/TextFixes;
.super Ljava/lang/Object;
.source "TextFixes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lsweet/tts/TextFixes;",
        "",
        "<init>",
        "()V",
        "MONTHS_TITLE",
        "",
        "DAYS",
        "MONTHS_CAPS",
        "AMBIGUOUS",
        "Lkotlin/text/Regex;",
        "AMBIGUOUS_AFTER_DATE",
        "FULL",
        "",
        "rewrite",
        "text",
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
.field private static final AMBIGUOUS:Lkotlin/text/Regex;

.field private static final AMBIGUOUS_AFTER_DATE:Lkotlin/text/Regex;

.field private static final DAYS:Ljava/lang/String; = "Mon|Wed|Fri|Sat|Sun|MON|WED|FRI|SAT|SUN"

.field private static final FULL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lsweet/tts/TextFixes;

.field private static final MONTHS_CAPS:Ljava/lang/String; = "JAN|FEB|MAR|APR|JUN|JUL|AUG|SEP|OCT|NOV|DEC"

.field private static final MONTHS_TITLE:Ljava/lang/String; = "Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsweet/tts/TextFixes;

    invoke-direct {v0}, Lsweet/tts/TextFixes;-><init>()V

    sput-object v0, Lsweet/tts/TextFixes;->INSTANCE:Lsweet/tts/TextFixes;

    .line 13
    new-instance v0, Lkotlin/text/Regex;

    .line 14
    const-string v1, "(?<![\\p{L}])(Mon|Wed|Fri|Sat|Sun|MON|WED|FRI|SAT|SUN|JAN|FEB|MAR|APR|JUN|JUL|AUG|SEP|OCT|NOV|DEC)(?![\\p{L}])(?=\\.?,?\\s{0,2}(?:\\d|(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)(?![\\p{L}])))"

    .line 13
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsweet/tts/TextFixes;->AMBIGUOUS:Lkotlin/text/Regex;

    .line 17
    new-instance v0, Lkotlin/text/Regex;

    .line 18
    const-string v1, "(?<=\\d[ ,]{1,2})(Mon|Wed|Fri|Sat|Sun|MON|WED|FRI|SAT|SUN|JAN|FEB|MAR|APR|JUN|JUL|AUG|SEP|OCT|NOV|DEC)(?![\\p{L}])"

    .line 17
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsweet/tts/TextFixes;->AMBIGUOUS_AFTER_DATE:Lkotlin/text/Regex;

    const/16 v0, 0x10

    .line 22
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "mon"

    const-string v2, "Monday"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "wed"

    const-string v2, "Wednesday"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "fri"

    const-string v2, "Friday"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "sat"

    const-string v2, "Saturday"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "sun"

    const-string v2, "Sunday"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 23
    const-string v1, "jan"

    const-string v2, "January"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "feb"

    const-string v2, "February"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "mar"

    const-string v2, "March"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "apr"

    const-string v2, "April"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "jun"

    const-string v2, "June"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 24
    const-string v1, "jul"

    const-string v2, "July"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "aug"

    const-string v2, "August"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "sep"

    const-string v2, "September"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "oct"

    const-string v2, "October"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "nov"

    const-string v2, "November"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 25
    const-string v1, "dec"

    const-string v2, "December"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 21
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsweet/tts/TextFixes;->FULL:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final rewrite$lambda$0(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lsweet/tts/TextFixes;->FULL:Ljava/util/Map;

    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method static final rewrite$lambda$1(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lsweet/tts/TextFixes;->FULL:Ljava/util/Map;

    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final rewrite(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    return-object p1

    .line 30
    :cond_0
    sget-object p0, Lsweet/tts/TextFixes;->AMBIGUOUS:Lkotlin/text/Regex;

    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Lsweet/tts/TextFixes$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lsweet/tts/TextFixes$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    .line 31
    sget-object p1, Lsweet/tts/TextFixes;->AMBIGUOUS_AFTER_DATE:Lkotlin/text/Regex;

    check-cast p0, Ljava/lang/CharSequence;

    new-instance v0, Lsweet/tts/TextFixes$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lsweet/tts/TextFixes$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p0, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
