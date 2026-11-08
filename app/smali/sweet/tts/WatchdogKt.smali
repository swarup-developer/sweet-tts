.class public final Lsweet/tts/WatchdogKt;
.super Ljava/lang/Object;
.source "Watchdog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "FILE_CALLBACK",
        "",
        "hasSpeakableChars",
        "",
        "s",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final FILE_CALLBACK:Ljava/lang/String; = "android.speech.tts.FileSynthesisCallback"


# direct methods
.method public static final hasSpeakableChars(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "s"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 13
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-static {v2}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v3

    .line 17
    sget-object v4, Ljava/lang/Character$UnicodeScript;->HAN:Ljava/lang/Character$UnicodeScript;

    if-eq v3, v4, :cond_0

    sget-object v4, Ljava/lang/Character$UnicodeScript;->HIRAGANA:Ljava/lang/Character$UnicodeScript;

    if-eq v3, v4, :cond_0

    .line 18
    sget-object v4, Ljava/lang/Character$UnicodeScript;->KATAKANA:Ljava/lang/Character$UnicodeScript;

    if-eq v3, v4, :cond_0

    sget-object v4, Ljava/lang/Character$UnicodeScript;->HANGUL:Ljava/lang/Character$UnicodeScript;

    if-eq v3, v4, :cond_0

    .line 19
    sget-object v4, Ljava/lang/Character$UnicodeScript;->THAI:Ljava/lang/Character$UnicodeScript;

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    .line 21
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v0
.end method
