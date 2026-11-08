.class public final Lsweet/tts/LangPerf;
.super Ljava/lang/Object;
.source "Lang.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0017R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u0011\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0010\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000bR\u0011\u0010\u0012\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lsweet/tts/LangPerf;",
        "",
        "<init>",
        "()V",
        "mlCalls",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getMlCalls",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "mlNs",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "getMlNs",
        "()Ljava/util/concurrent/atomic/AtomicLong;",
        "lidCalls",
        "getLidCalls",
        "lidNs",
        "getLidNs",
        "dictNs",
        "getDictNs",
        "fixNs",
        "getFixNs",
        "reset",
        "",
        "summary",
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


# static fields
.field public static final INSTANCE:Lsweet/tts/LangPerf;

.field private static final dictNs:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final fixNs:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final lidCalls:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final lidNs:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final mlCalls:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final mlNs:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsweet/tts/LangPerf;

    invoke-direct {v0}, Lsweet/tts/LangPerf;-><init>()V

    sput-object v0, Lsweet/tts/LangPerf;->INSTANCE:Lsweet/tts/LangPerf;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lsweet/tts/LangPerf;->mlCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lsweet/tts/LangPerf;->mlNs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lsweet/tts/LangPerf;->lidCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lsweet/tts/LangPerf;->lidNs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lsweet/tts/LangPerf;->dictNs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lsweet/tts/LangPerf;->fixNs:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDictNs()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 25
    sget-object p0, Lsweet/tts/LangPerf;->dictNs:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public final getFixNs()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 26
    sget-object p0, Lsweet/tts/LangPerf;->fixNs:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public final getLidCalls()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 23
    sget-object p0, Lsweet/tts/LangPerf;->lidCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public final getLidNs()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 24
    sget-object p0, Lsweet/tts/LangPerf;->lidNs:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public final getMlCalls()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 21
    sget-object p0, Lsweet/tts/LangPerf;->mlCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public final getMlNs()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 22
    sget-object p0, Lsweet/tts/LangPerf;->mlNs:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public final reset()V
    .locals 3

    .line 27
    sget-object p0, Lsweet/tts/LangPerf;->dictNs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object p0, Lsweet/tts/LangPerf;->fixNs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object p0, Lsweet/tts/LangPerf;->mlCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object p0, Lsweet/tts/LangPerf;->mlNs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object p0, Lsweet/tts/LangPerf;->lidCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object p0, Lsweet/tts/LangPerf;->lidNs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final summary()Ljava/lang/String;
    .locals 9

    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    sget-object v0, Lsweet/tts/LangPerf;->lidCalls:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string v2, "us "

    const-wide/16 v3, 0x3e8

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sget-object v1, Lsweet/tts/LangPerf;->lidNs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    div-long/2addr v5, v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "ngramLid="

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_0
    sget-object v0, Lsweet/tts/LangPerf;->dictNs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    cmp-long v1, v5, v7

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    div-long/2addr v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dictionary="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_1
    sget-object v0, Lsweet/tts/LangPerf;->fixNs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long v1, v5, v7

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    div-long/2addr v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "textFixes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
