.class public final Lsweet/tts/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsweet/tts/MainActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\nsweet/tts/MainActivity\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,166:1\n13472#2,2:167\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\nsweet/tts/MainActivity\n*L\n84#1:167,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\t\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000bH\u0014J\u0008\u0010\u000e\u001a\u00020\u0006H\u0014J\u0008\u0010\u000f\u001a\u00020\u0006H\u0014J\u0008\u0010\u0010\u001a\u00020\u0006H\u0002J\u0008\u0010\u0011\u001a\u00020\u0006H\u0002R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lsweet/tts/MainActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "refreshPunctuation",
        "Lkotlin/Function0;",
        "",
        "whatsNewDialog",
        "Landroid/app/AlertDialog;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "outState",
        "onDestroy",
        "onResume",
        "applyDescriptions",
        "updateLanguageButtonDescription",
        "Companion",
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
.field private static final Companion:Lsweet/tts/MainActivity$Companion;

.field public static final STATE_WHATS_NEW_OPEN:Ljava/lang/String; = "whats_new_open"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private refreshPunctuation:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private whatsNewDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsweet/tts/MainActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsweet/tts/MainActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsweet/tts/MainActivity;->Companion:Lsweet/tts/MainActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final synthetic access$onCreate$refreshPunctuationButton([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0

    .line 11
    invoke-static {p0, p1, p2}, Lsweet/tts/MainActivity;->onCreate$refreshPunctuationButton([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;)V

    return-void
.end method

.method private final applyDescriptions()V
    .locals 7

    .line 147
    sget v0, Lsweet/tts/R$id;->btnGoogleTts:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "Google TTS Settings"

    const-string v3, "\u0911\u0932 \u0907\u0928 \u0935\u0928 \u0915\u094b \u0920\u0940\u0915 \u0938\u0947 \u091a\u0932\u093e\u0928\u0947 \u0915\u0947 \u0932\u093f\u090f Google TTS \u0915\u0940 \u092f\u0947 \u0924\u0940\u0928 \u0938\u0947\u091f\u093f\u0902\u0917 \u0915\u0930\u0928\u093e \u091c\u093c\u0930\u0942\u0930\u0940 \u0939\u0948\u0964"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lsweet/tts/Desc;->withDesc$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    sget v0, Lsweet/tts/R$id;->btnVoices:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v2, "Voices"

    const-string v3, "\u0939\u0930 \u092d\u093e\u0937\u093e \u0915\u0947 \u0932\u093f\u090f \u0905\u092a\u0928\u0940 \u092a\u0938\u0902\u0926 \u0915\u0940 \u0906\u0935\u093e\u091c\u093c \u091a\u0941\u0928\u093f\u090f\u0964"

    invoke-static/range {v1 .. v6}, Lsweet/tts/Desc;->withDesc$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    sget v0, Lsweet/tts/R$id;->btnVolumeRatePitch:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v2, "Volume, Rate and Pitch"

    const-string v3, "\u0906\u0935\u093e\u091c\u093c \u0915\u0940 \u0924\u0947\u091c\u093c\u0940, \u0930\u092b\u093c\u094d\u0924\u093e\u0930 \u0914\u0930 \u092a\u093f\u091a \u092f\u0939\u093e\u0901 \u092c\u0926\u0932\u0940 \u091c\u093e \u0938\u0915\u0924\u0940 \u0939\u0948\u0964 \u0907\u0928\u094d\u0939\u0947\u0902 \u0924\u092d\u0940 \u092c\u0926\u0932\u093f\u090f \u091c\u092c \u091c\u093c\u0930\u0942\u0930\u0924 \u0939\u094b\u0964 \u0906\u092e \u0924\u094c\u0930 \u092a\u0930 \u0935\u0949\u0932\u094d\u092f\u0942\u092e \u092b\u094b\u0928 \u0915\u0940 \u0938\u093f\u0938\u094d\u091f\u092e \u0935\u0949\u0932\u094d\u092f\u0942\u092e \u0938\u0947 \u0930\u0916\u093f\u090f, \u0914\u0930 \u0930\u092b\u093c\u094d\u0924\u093e\u0930 \u0935 \u092a\u093f\u091a TalkBack \u092f\u093e Jieshuo \u0915\u0940 \u0905\u092a\u0928\u0940 \u0938\u0947\u091f\u093f\u0902\u0917 \u0938\u0947\u0964 \u092f\u0939\u093e\u0901 \u0915\u0940 \u0938\u0947\u091f\u093f\u0902\u0917 \u0909\u0928\u0915\u0940 \u0938\u0947\u091f\u093f\u0902\u0917 \u0915\u0947 \u0938\u093e\u0925 \u092e\u093f\u0932\u0915\u0930 \u0905\u0938\u0930 \u0915\u0930\u0924\u0940 \u0939\u0948, \u0907\u0938\u0932\u093f\u090f \u092f\u0939\u093e\u0901 \u092c\u0926\u0932\u093e\u0935 \u0924\u092d\u0940 \u0915\u0930\u0947\u0902 \u091c\u092c \u0926\u094b \u092d\u093e\u0937\u093e\u0913\u0902 \u0915\u0940 \u0906\u0935\u093e\u091c\u093c\u094b\u0902 \u092e\u0947\u0902 \u0906\u092a\u0938 \u092e\u0947\u0902 \u092b\u0930\u094d\u0915 \u0932\u0917\u0947\u0964"

    invoke-static/range {v1 .. v6}, Lsweet/tts/Desc;->withDesc$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    sget v0, Lsweet/tts/R$id;->btnNumbers:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v2, "Numbers, Mobile & OTP"

    const-string v3, "\u0938\u0902\u0916\u094d\u092f\u093e\u090f\u0901, \u092e\u094b\u092c\u093e\u0907\u0932 \u0928\u0902\u092c\u0930 \u0914\u0930 OTP \u0915\u0948\u0938\u0947 \u092a\u0922\u093c\u0947 \u091c\u093e\u090f\u0901\u0964"

    invoke-static/range {v1 .. v6}, Lsweet/tts/Desc;->withDesc$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    sget v0, Lsweet/tts/R$id;->btnSettings:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v2, "Other Settings"

    const-string v3, "Dictionary, \u0932\u0949\u0917 \u0914\u0930 \u092c\u093e\u0915\u0940 \u0938\u0947\u091f\u093f\u0902\u0917\u0964"

    invoke-static/range {v1 .. v6}, Lsweet/tts/Desc;->withDesc$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 152
    sget v0, Lsweet/tts/R$id;->btnPerApplication:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v2, "Per Application Voices"

    const-string v3, "\u0905\u0932\u0917-\u0905\u0932\u0917 \u0910\u092a \u0915\u0947 \u0932\u093f\u090f \u0905\u0932\u0917 \u0906\u0935\u093e\u091c\u093c \u091a\u0941\u0928\u093f\u090f, \u091c\u0948\u0938\u0947 WhatsApp \u0915\u0940 \u0905\u0932\u0917 \u0914\u0930 YouTube \u0915\u0940 \u0905\u0932\u0917\u0964 \u0907\u0938\u0915\u0947 \u0932\u093f\u090f Usage Access \u0915\u0940 \u0905\u0928\u0941\u092e\u0924\u093f \u091a\u093e\u0939\u093f\u090f\u0964"

    invoke-static/range {v1 .. v6}, Lsweet/tts/Desc;->withDesc$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    sget v0, Lsweet/tts/R$id;->btnRefresh:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 154
    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v2, "Clear App Cache & Update"

    const-string v3, "\u0910\u092a \u0915\u093e cache \u0938\u093e\u092b\u093c \u0915\u0930\u0924\u093e \u0939\u0948 \u0914\u0930 \u0938\u093e\u0930\u0940 \u0906\u0935\u093e\u091c\u093c\u0947\u0902 \u0935 \u0938\u0947\u091f\u093f\u0902\u0917 \u0924\u093e\u091c\u093c\u093e \u0915\u0930\u0924\u093e \u0939\u0948\u0964 \u0906\u092a\u0915\u0940 \u0938\u0947\u091f\u093f\u0902\u0917 \u092e\u093f\u091f\u0924\u0940 \u0928\u0939\u0940\u0902\u0964"

    invoke-static/range {v1 .. v6}, Lsweet/tts/Desc;->withDesc$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    invoke-virtual {v1}, Lsweet/tts/Desc;->on()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "Clear App Cache and Update. Clears this app\'s cache and refreshes all voices and preferences."

    check-cast v1, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 157
    sget v0, Lsweet/tts/R$id;->btnClearAppData:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "Clear App Data & Reset All Settings"

    const-string v3, "\u0910\u092a \u0915\u0940 \u0938\u093e\u0930\u0940 \u0938\u0947\u091f\u093f\u0902\u0917 \u0914\u0930 \u0921\u0947\u091f\u093e \u092e\u093f\u091f\u093e\u0915\u0930 \u0936\u0941\u0930\u0941\u0906\u0924\u0940 \u0939\u093e\u0932\u0924 \u092e\u0947\u0902 \u0932\u0947 \u091c\u093e\u0924\u093e \u0939\u0948\u0964"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lsweet/tts/Desc;->withDesc$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object p0, p0, Lsweet/tts/MainActivity;->refreshPunctuation:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static final onCreate$lambda$0(Landroid/content/Context;)V
    .locals 2

    .line 26
    sget-object v0, Lsweet/tts/PreferenceSync;->INSTANCE:Lsweet/tts/PreferenceSync;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lsweet/tts/PreferenceSync;->updateAll(Landroid/content/Context;Z)V

    return-void
.end method

.method static final onCreate$lambda$1(Lsweet/tts/MainActivity;Landroid/view/View;)V
    .locals 2

    .line 29
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lsweet/tts/GoogleTtsSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lsweet/tts/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static final onCreate$lambda$13(Landroid/widget/Button;Lsweet/tts/MainActivity;Landroid/view/View;)V
    .locals 3

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    invoke-virtual {p1}, Lsweet/tts/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-string v2, "Updating\u2026"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 82
    new-instance p2, Ljava/lang/Thread;

    .line 93
    new-instance v1, Lsweet/tts/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p0}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lsweet/tts/MainActivity;Landroid/widget/Button;)V

    .line 82
    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static final onCreate$lambda$13$lambda$12(Landroid/content/Context;Lsweet/tts/MainActivity;Landroid/widget/Button;)V
    .locals 4

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 84
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    sget-object v0, Lsweet/tts/PreferenceSync;->INSTANCE:Lsweet/tts/PreferenceSync;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lsweet/tts/PreferenceSync;->updateAll(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    new-instance p0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {p0, p2, p1}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda6;-><init>(Landroid/widget/Button;Lsweet/tts/MainActivity;)V

    invoke-virtual {p1, p0}, Lsweet/tts/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2, p1}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda6;-><init>(Landroid/widget/Button;Lsweet/tts/MainActivity;)V

    invoke-virtual {p1, v0}, Lsweet/tts/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw p0
.end method

.method static final onCreate$lambda$13$lambda$12$lambda$11(Landroid/widget/Button;Lsweet/tts/MainActivity;)V
    .locals 1

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    invoke-direct {p1}, Lsweet/tts/MainActivity;->updateLanguageButtonDescription()V

    .line 90
    check-cast p1, Landroid/content/Context;

    const-string p0, "Cache cleared and all voices updated"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static final onCreate$lambda$15(Lsweet/tts/MainActivity;Landroid/view/View;)V
    .locals 2

    .line 100
    new-instance p1, Landroid/app/AlertDialog$Builder;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    const-string v0, "This will clear all of Sweet TTS\'s own settings, dictionary entries, and logs, and restart the app fresh. This cannot be undone."

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 102
    const-string v0, "Clear"

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lsweet/tts/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda8;-><init>(Lsweet/tts/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 106
    const-string p1, "Cancel"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static final onCreate$lambda$15$lambda$14(Lsweet/tts/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 103
    const-class p1, Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Lsweet/tts/MainActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/app/ActivityManager;->clearApplicationUserData()Z

    :cond_0
    return-void
.end method

.method static final onCreate$lambda$16(Lsweet/tts/MainActivity;Z)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lsweet/tts/MainActivity;->whatsNewDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lsweet/tts/MainActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lsweet/tts/MainActivity;->applyDescriptions()V

    .line 116
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreate$lambda$2(Lsweet/tts/MainActivity;Landroid/view/View;)V
    .locals 2

    .line 32
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lsweet/tts/VoicesActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lsweet/tts/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static final onCreate$lambda$3(Lsweet/tts/MainActivity;Landroid/view/View;)V
    .locals 2

    .line 35
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lsweet/tts/VolumeRatePitchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lsweet/tts/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static final onCreate$lambda$4(Lsweet/tts/MainActivity;Landroid/view/View;)V
    .locals 2

    .line 38
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lsweet/tts/LanguageSwitchingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lsweet/tts/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static final onCreate$lambda$5(Lsweet/tts/MainActivity;Landroid/view/View;)V
    .locals 2

    .line 41
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lsweet/tts/NumbersActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lsweet/tts/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static final onCreate$lambda$6(Lsweet/tts/MainActivity;Landroid/view/View;)V
    .locals 2

    .line 44
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lsweet/tts/PerApplicationActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lsweet/tts/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static final onCreate$lambda$8(Lsweet/tts/MainActivity;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    .line 60
    new-instance p5, Landroid/app/AlertDialog$Builder;

    check-cast p0, Landroid/content/Context;

    invoke-direct {p5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    const-string p0, "Punctuation and Symbols"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p5, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 62
    check-cast p1, [Ljava/lang/CharSequence;

    sget-object p5, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p5}, Lsweet/tts/Prefs;->punctuationLevel()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p5

    const/4 v0, 0x0

    invoke-static {p5, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p5

    new-instance v0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2, p3, p4}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda7;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;)V

    invoke-virtual {p0, p1, p5, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static final onCreate$lambda$8$lambda$7([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 63
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    aget-object p4, p0, p4

    invoke-virtual {v0, p4}, Lsweet/tts/Prefs;->setPunctuationLevel(Ljava/lang/String;)V

    .line 64
    invoke-static {p1, p0, p2}, Lsweet/tts/MainActivity;->onCreate$refreshPunctuationButton([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;)V

    .line 65
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static final onCreate$lambda$9(Lsweet/tts/MainActivity;Landroid/view/View;)V
    .locals 2

    .line 70
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lsweet/tts/SettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lsweet/tts/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final onCreate$refreshPunctuationButton([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;)V
    .locals 6

    .line 54
    sget-object v0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {v0}, Lsweet/tts/Prefs;->punctuationLevel()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    aget-object p0, p0, p1

    .line 55
    sget-object v0, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Punctuation and Symbols: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "@ # % \u0914\u0930 \u092c\u094d\u0930\u0948\u0915\u0947\u091f \u091c\u0948\u0938\u0947 \u091a\u093f\u0939\u094d\u0928 \u0915\u093f\u0924\u0928\u0947 \u092c\u094b\u0932\u0947 \u091c\u093e\u090f\u0901\u0964 Engine decides: \u0915\u094b\u0908 \u092a\u094d\u0930\u094b\u0938\u0947\u0938\u093f\u0902\u0917 \u0928\u0939\u0940\u0902, \u0906\u0935\u093e\u091c\u093c \u0916\u0941\u0926 \u0924\u092f \u0915\u0930\u0924\u0940 \u0939\u0948 \u0915\u094d\u092f\u093e \u092c\u094b\u0932\u0928\u093e \u0939\u0948\u0964 None: \u0915\u094b\u0908 \u091a\u093f\u0939\u094d\u0928 \u0928\u0939\u0940\u0902 \u092c\u094b\u0932\u093e \u091c\u093e\u090f\u0917\u093e, \u0938\u093f\u0930\u094d\u092b % @ & + \u00b0 \u0936\u092c\u094d\u0926\u094b\u0902 \u092e\u0947\u0902 \u092a\u0922\u093c\u0947 \u091c\u093e\u090f\u0901\u0917\u0947 \u0914\u0930 \u0930\u0941\u0915\u093e\u0935\u091f \u092c\u0928\u0940 \u0930\u0939\u0947\u0917\u0940\u0964 Some: \u0925\u094b\u0921\u093c\u0947, Most: \u091c\u093c\u094d\u092f\u093e\u0926\u093e\u0924\u0930, All: \u0938\u092c\u0964"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lsweet/tts/Desc;->withDesc$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateLanguageButtonDescription()V
    .locals 3

    .line 162
    sget v0, Lsweet/tts/R$id;->btnLanguageSwitching:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    .line 163
    sget-object v0, Lsweet/tts/VoiceCatalog;->INSTANCE:Lsweet/tts/VoiceCatalog;

    invoke-virtual {v0}, Lsweet/tts/VoiceCatalog;->languagesSummaryForAnnouncement()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Languages. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget v0, Lsweet/tts/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->setContentView(I)V

    .line 18
    sget-object v0, Lsweet/tts/Edition;->INSTANCE:Lsweet/tts/Edition;

    invoke-virtual {v0}, Lsweet/tts/Edition;->getPLUS()Z

    move-result v0

    const-string v1, "Sweet TTS Plus"

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v0, "Sweet TTS"

    check-cast v0, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 19
    sget-object v0, Lsweet/tts/Edition;->INSTANCE:Lsweet/tts/Edition;

    invoke-virtual {v0}, Lsweet/tts/Edition;->getPLUS()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lsweet/tts/R$id;->appTitle:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_1
    invoke-virtual {p0}, Lsweet/tts/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lsweet/tts/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 28
    sget v0, Lsweet/tts/R$id;->btnGoogleTts:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lsweet/tts/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda12;-><init>(Lsweet/tts/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    sget v0, Lsweet/tts/R$id;->btnVoices:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lsweet/tts/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda13;-><init>(Lsweet/tts/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    sget v0, Lsweet/tts/R$id;->btnVolumeRatePitch:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lsweet/tts/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda14;-><init>(Lsweet/tts/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    sget v0, Lsweet/tts/R$id;->btnLanguageSwitching:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lsweet/tts/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda15;-><init>(Lsweet/tts/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget v0, Lsweet/tts/R$id;->btnNumbers:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lsweet/tts/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda1;-><init>(Lsweet/tts/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget v0, Lsweet/tts/R$id;->btnPerApplication:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lsweet/tts/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda2;-><init>(Lsweet/tts/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget v0, Lsweet/tts/R$id;->btnPunctuation:I

    invoke-virtual {p0, v0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    const/4 v0, 0x5

    .line 49
    new-array v4, v0, [Ljava/lang/String;

    const-string v1, "raw"

    const/4 v2, 0x0

    aput-object v1, v4, v2

    const-string v1, "none"

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const-string v1, "some"

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const-string v1, "most"

    const/4 v7, 0x3

    aput-object v1, v4, v7

    const-string v1, "all"

    const/4 v8, 0x4

    aput-object v1, v4, v8

    move v1, v5

    .line 50
    new-array v5, v0, [Ljava/lang/String;

    const-string v9, "Engine decides"

    aput-object v9, v5, v2

    const-string v9, "None"

    aput-object v9, v5, v3

    const-string v9, "Some"

    aput-object v9, v5, v1

    const-string v10, "Most"

    aput-object v10, v5, v7

    const-string v11, "All"

    aput-object v11, v5, v8

    .line 52
    new-array v0, v0, [Ljava/lang/String;

    const-string v12, "Engine decides (no processing)"

    aput-object v12, v0, v2

    const-string v2, "None (no symbol is read)"

    aput-object v2, v0, v3

    aput-object v9, v0, v1

    aput-object v10, v0, v7

    aput-object v11, v0, v8

    .line 57
    new-instance v1, Lsweet/tts/MainActivity$onCreate$8;

    invoke-direct {v1, v5, v4, v6}, Lsweet/tts/MainActivity$onCreate$8;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iput-object v1, p0, Lsweet/tts/MainActivity;->refreshPunctuation:Lkotlin/jvm/functions/Function0;

    .line 58
    invoke-static {v5, v4, v6}, Lsweet/tts/MainActivity;->onCreate$refreshPunctuationButton([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;)V

    .line 59
    new-instance v1, Lsweet/tts/MainActivity$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda3;-><init>(Lsweet/tts/MainActivity;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    sget p0, Lsweet/tts/R$id;->btnSettings:I

    invoke-virtual {v2, p0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    new-instance v0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, v2}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda4;-><init>(Lsweet/tts/MainActivity;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget p0, Lsweet/tts/R$id;->btnRefresh:I

    invoke-virtual {v2, p0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    .line 78
    new-instance v0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v2}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda5;-><init>(Landroid/widget/Button;Lsweet/tts/MainActivity;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget p0, Lsweet/tts/R$id;->btnClearAppData:I

    invoke-virtual {v2, p0}, Lsweet/tts/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    new-instance v0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, v2}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda10;-><init>(Lsweet/tts/MainActivity;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget-object p0, Lsweet/tts/Prefs;->INSTANCE:Lsweet/tts/Prefs;

    invoke-virtual {p0}, Lsweet/tts/Prefs;->whatsNewHidden()Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    const-string p0, "whats_new_open"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 113
    :cond_2
    sget-object p0, Lsweet/tts/WhatsNew;->INSTANCE:Lsweet/tts/WhatsNew;

    move-object p1, v2

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lsweet/tts/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, v2}, Lsweet/tts/MainActivity$$ExternalSyntheticLambda11;-><init>(Lsweet/tts/MainActivity;)V

    invoke-virtual {p0, p1, v0}, Lsweet/tts/WhatsNew;->show(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)Landroid/app/AlertDialog;

    move-result-object p0

    iput-object p0, v2, Lsweet/tts/MainActivity;->whatsNewDialog:Landroid/app/AlertDialog;

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 126
    iget-object v0, p0, Lsweet/tts/MainActivity;->whatsNewDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lsweet/tts/MainActivity;->whatsNewDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 128
    :cond_1
    iput-object v1, p0, Lsweet/tts/MainActivity;->whatsNewDialog:Landroid/app/AlertDialog;

    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 140
    invoke-direct {p0}, Lsweet/tts/MainActivity;->updateLanguageButtonDescription()V

    .line 141
    invoke-direct {p0}, Lsweet/tts/MainActivity;->applyDescriptions()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    iget-object p0, p0, Lsweet/tts/MainActivity;->whatsNewDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    const-string p0, "whats_new_open"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
