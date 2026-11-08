.class public final Lorg/eloqium/tts/pipeline/PauseProcessor;
.super Ljava/lang/Object;
.source "PauseProcessor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/eloqium/tts/pipeline/PauseProcessor;",
        "",
        "<init>",
        "()V",
        "PAUSE_KEEP",
        "",
        "PAUSE_END_ONLY",
        "PAUSE_ALL",
        "PHRASE_PREDICTION_ON",
        "",
        "PHRASE_PREDICTION_OFF",
        "MARKS",
        "AT_A_MARK",
        "Lkotlin/text/Regex;",
        "BRIEF_PAUSE",
        "END_PAUSE",
        "process",
        "text",
        "pauseMode",
        "phrasePrediction",
        "",
        "isLastChunk",
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
.field private static final AT_A_MARK:Lkotlin/text/Regex;

.field private static final BRIEF_PAUSE:Ljava/lang/String; = "`p1"

.field private static final END_PAUSE:Ljava/lang/String; = "`p100"

.field public static final INSTANCE:Lorg/eloqium/tts/pipeline/PauseProcessor;

.field private static final MARKS:Ljava/lang/String; = "-,.:;?!\u2013\u2014"

.field public static final PAUSE_ALL:I = 0x2

.field public static final PAUSE_END_ONLY:I = 0x1

.field public static final PAUSE_KEEP:I = 0x0

.field private static final PHRASE_PREDICTION_OFF:Ljava/lang/String; = "`pp0 "

.field private static final PHRASE_PREDICTION_ON:Ljava/lang/String; = "`pp1 "


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/eloqium/tts/pipeline/PauseProcessor;

    invoke-direct {v0}, Lorg/eloqium/tts/pipeline/PauseProcessor;-><init>()V

    sput-object v0, Lorg/eloqium/tts/pipeline/PauseProcessor;->INSTANCE:Lorg/eloqium/tts/pipeline/PauseProcessor;

    .line 20
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "([A-Za-z0-9])([-,.:;?!\u2013\u2014])(\\2*)(?=\\s|$)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eloqium/tts/pipeline/PauseProcessor;->AT_A_MARK:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic process$default(Lorg/eloqium/tts/pipeline/PauseProcessor;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 24
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eloqium/tts/pipeline/PauseProcessor;->process(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final process(Ljava/lang/String;IZZ)Ljava/lang/String;
    .locals 3

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 34
    sget-object p1, Lorg/eloqium/tts/pipeline/PauseProcessor;->AT_A_MARK:Lkotlin/text/Regex;

    const-string v1, "$1 `p1$2$3"

    invoke-virtual {p1, p0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    .line 38
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 39
    move-object p2, p0

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-lez p4, :cond_2

    const-string p4, "-,.:;?!\u2013\u2014"

    check-cast p4, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p4, p2, v1, v0, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " `p100"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-eqz p3, :cond_3

    .line 44
    const-string p0, "`pp1 "

    goto :goto_0

    :cond_3
    const-string p0, "`pp0 "

    .line 45
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
