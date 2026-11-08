.class final Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;
.super Ljava/lang/Object;
.source "GoogleVoiceBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/GoogleVoiceBackend$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocaleTarget"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;",
        "",
        "langCode",
        "",
        "languageLabel",
        "countryLabel",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getLangCode",
        "()Ljava/lang/String;",
        "getLanguageLabel",
        "getCountryLabel",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final countryLabel:Ljava/lang/String;

.field private final langCode:Ljava/lang/String;

.field private final languageLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "langCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageLabel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryLabel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->langCode:Ljava/lang/String;

    iput-object p2, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->languageLabel:Ljava/lang/String;

    iput-object p3, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->countryLabel:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->langCode:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->languageLabel:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->countryLabel:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->langCode:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->languageLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->countryLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;
    .locals 0

    const-string p0, "langCode"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "languageLabel"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "countryLabel"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;

    invoke-direct {p0, p1, p2, p3}, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;

    iget-object v1, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->langCode:Ljava/lang/String;

    iget-object v3, p1, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->langCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->languageLabel:Ljava/lang/String;

    iget-object v3, p1, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->languageLabel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->countryLabel:Ljava/lang/String;

    iget-object p1, p1, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->countryLabel:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCountryLabel()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->countryLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final getLangCode()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->langCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getLanguageLabel()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->languageLabel:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->langCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->languageLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->countryLabel:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->langCode:Ljava/lang/String;

    iget-object v1, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->languageLabel:Ljava/lang/String;

    iget-object p0, p0, Lsweet/tts/GoogleVoiceBackend$Companion$LocaleTarget;->countryLabel:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LocaleTarget(langCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", languageLabel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countryLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
