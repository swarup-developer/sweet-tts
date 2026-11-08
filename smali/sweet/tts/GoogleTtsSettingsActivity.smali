.class public final Lsweet/tts/GoogleTtsSettingsActivity;
.super Landroid/app/Activity;
.source "GoogleTtsSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoogleTtsSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleTtsSettingsActivity.kt\nsweet/tts/GoogleTtsSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1#2:105\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J(\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0005H\u0002J\u0008\u0010\u0012\u001a\u00020\u0005H\u0002J\u0008\u0010\u0013\u001a\u00020\u0005H\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lsweet/tts/GoogleTtsSettingsActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "actionButton",
        "Landroid/widget/Button;",
        "title",
        "",
        "description",
        "onClick",
        "Lkotlin/Function0;",
        "spacer",
        "Landroid/widget/TextView;",
        "openGoogleTtsAppInfo",
        "openGoogleTtsLanguageDetection",
        "openGoogleVoiceDownload",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final actionButton(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/Button;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/widget/Button;"
        }
    .end annotation

    .line 55
    new-instance v0, Landroid/widget/Button;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_0

    .line 56
    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p0, 0x41900000    # 18.0f

    .line 57
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p0, 0x0

    .line 58
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 59
    new-instance p0, Lsweet/tts/GoogleTtsSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {p0, p3}, Lsweet/tts/GoogleTtsSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method static final actionButton$lambda$6$lambda$5(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method static final onCreate$lambda$2(Lsweet/tts/GoogleTtsSettingsActivity;)Lkotlin/Unit;
    .locals 0

    .line 38
    invoke-direct {p0}, Lsweet/tts/GoogleTtsSettingsActivity;->openGoogleTtsAppInfo()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreate$lambda$3(Lsweet/tts/GoogleTtsSettingsActivity;)Lkotlin/Unit;
    .locals 0

    .line 43
    invoke-direct {p0}, Lsweet/tts/GoogleTtsSettingsActivity;->openGoogleTtsLanguageDetection()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreate$lambda$4(Lsweet/tts/GoogleTtsSettingsActivity;)Lkotlin/Unit;
    .locals 0

    .line 48
    invoke-direct {p0}, Lsweet/tts/GoogleTtsSettingsActivity;->openGoogleVoiceDownload()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openGoogleTtsAppInfo()V
    .locals 3

    .line 67
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    const-string v1, "package:com.google.android.tts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Lsweet/tts/GoogleTtsSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 71
    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t open App Info: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final openGoogleTtsLanguageDetection()V
    .locals 4

    .line 80
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.engine.CONFIGURE_ENGINE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v1, "com.google.android.tts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Lsweet/tts/GoogleTtsSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x1

    .line 87
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.TTS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lsweet/tts/GoogleTtsSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string v2, "Tap the gear next to Speech Services by Google"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 90
    check-cast p0, Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t open Text-to-Speech settings: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private final openGoogleVoiceDownload()V
    .locals 3

    .line 96
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.google.android.tts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Lsweet/tts/GoogleTtsSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 100
    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t open Google voice download: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final spacer()Landroid/widget/TextView;
    .locals 2

    .line 62
    new-instance v0, Landroid/widget/TextView;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    const/16 v1, 0x18

    invoke-virtual {v0, p0, v1, p0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const-string p1, "Google TTS Settings"

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lsweet/tts/GoogleTtsSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x30

    const/16 v3, 0x18

    .line 29
    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 30
    invoke-static {v1, p1}, Lsweet/tts/UiHelpersKt;->centeredHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 32
    sget-object p1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const-string v5, "\u0911\u0932 \u0907\u0928 \u0935\u0928 \u0915\u094b \u0920\u0940\u0915 \u0938\u0947 \u091a\u0932\u093e\u0928\u0947 \u0915\u0947 \u0932\u093f\u090f Google TTS \u0915\u0940 \u092f\u0947 \u0924\u0940\u0928 \u0938\u0947\u091f\u093f\u0902\u0917 \u0915\u0930\u0928\u093e \u091c\u093c\u0930\u0942\u0930\u0940 \u0939\u0948\u0964"

    invoke-static {p1, v5, v2, v4, v2}, Lsweet/tts/Desc;->pick$default(Lsweet/tts/Desc;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41900000    # 18.0f

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1, p1, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    :cond_0
    sget-object p1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v2, "App Info \u0915\u0940 \u0938\u094d\u0915\u094d\u0930\u0940\u0928 \u0916\u0941\u0932\u0947\u0917\u0940\u0964 \u0935\u0939\u093e\u0901 Clear data \u092c\u091f\u0928 \u0922\u0942\u0901\u0922\u0915\u0930 \u0921\u0947\u091f\u093e \u0938\u093e\u092b\u093c \u0915\u0940\u091c\u093f\u090f\u0964 \u0910\u092a \u0915\u0940 \u092a\u0939\u0932\u0940 \u0938\u0947\u091f\u093f\u0902\u0917 \u0915\u0947 \u0938\u092e\u092f \u092f\u0939 \u090f\u0915 \u092c\u093e\u0930 \u0915\u0930\u0928\u093e \u091c\u093c\u0930\u0942\u0930\u0940 \u0939\u0948\u0964 \u092c\u093e\u0926 \u092e\u0947\u0902 \u092d\u0940 \u091c\u092c Google TTS \u0905\u091f\u0915\u0947 \u092f\u093e \u0917\u0921\u093c\u092c\u0921\u093c \u0915\u0930\u0947, \u0924\u094b \u0926\u094b\u092c\u093e\u0930\u093e \u0915\u0930\u0928\u093e \u092a\u0921\u093c \u0938\u0915\u0924\u093e \u0939\u0948\u0964"

    const-string v3, "This will open Google TTS App Info screen, find Clear Data option & use it"

    invoke-virtual {p1, v2, v3}, Lsweet/tts/Desc;->pick(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v2, Lsweet/tts/GoogleTtsSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lsweet/tts/GoogleTtsSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lsweet/tts/GoogleTtsSettingsActivity;)V

    const-string v3, "Clear Google TTS Data"

    invoke-direct {p0, v3, p1, v2}, Lsweet/tts/GoogleTtsSettingsActivity;->actionButton(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/Button;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    invoke-direct {p0}, Lsweet/tts/GoogleTtsSettingsActivity;->spacer()Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 42
    sget-object p1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v2, "Google TTS \u0915\u0940 \u0938\u0947\u091f\u093f\u0902\u0917 \u0916\u0941\u0932\u0947\u0917\u0940\u0964 \u0935\u0939\u093e\u0901 Language detection \u092e\u0947\u0902 \u0924\u0940\u0928 \u0935\u093f\u0915\u0932\u094d\u092a \u0906\u0924\u0947 \u0939\u0948\u0902, \u0909\u0928\u092e\u0947\u0902 \u0938\u0947 Off \u091a\u0941\u0928 \u0932\u0940\u091c\u093f\u090f\u0964 \u0910\u092a \u0915\u0947 \u0920\u0940\u0915 \u0938\u0947 \u0915\u093e\u092e \u0915\u0930\u0928\u0947 \u0915\u0947 \u0932\u093f\u090f \u092f\u0939 \u091c\u093c\u0930\u0942\u0930\u0940 \u0939\u0948\u0964"

    const-string v3, "Opens Google TTS settings, find Language detection & turn it off"

    invoke-virtual {p1, v2, v3}, Lsweet/tts/Desc;->pick(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    new-instance v2, Lsweet/tts/GoogleTtsSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lsweet/tts/GoogleTtsSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lsweet/tts/GoogleTtsSettingsActivity;)V

    const-string v3, "Turn Off Language Detection in Google TTS"

    invoke-direct {p0, v3, p1, v2}, Lsweet/tts/GoogleTtsSettingsActivity;->actionButton(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/Button;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44
    invoke-direct {p0}, Lsweet/tts/GoogleTtsSettingsActivity;->spacer()Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    sget-object p1, Lsweet/tts/Desc;->INSTANCE:Lsweet/tts/Desc;

    const-string v2, "Google \u0915\u0940 \u0906\u0935\u093e\u091c\u093c\u0947\u0902 \u0921\u093e\u0909\u0928\u0932\u094b\u0921 \u0915\u0930\u0928\u0947 \u0915\u0940 \u0938\u094d\u0915\u094d\u0930\u0940\u0928 \u0916\u0941\u0932\u0947\u0917\u0940\u0964 \u0938\u093f\u0930\u094d\u092b \u0935\u0939\u0940 \u092d\u093e\u0937\u093e\u090f\u0901 \u0921\u093e\u0909\u0928\u0932\u094b\u0921 \u0915\u0940\u091c\u093f\u090f \u091c\u094b \u0906\u092a\u0915\u094b \u091a\u093e\u0939\u093f\u090f\u0964"

    const-string v3, "Opens Google TTS\'s own voice download screen"

    invoke-virtual {p1, v2, v3}, Lsweet/tts/Desc;->pick(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance v2, Lsweet/tts/GoogleTtsSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lsweet/tts/GoogleTtsSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lsweet/tts/GoogleTtsSettingsActivity;)V

    const-string v3, "Download Google TTS Voices for only the required languages"

    invoke-direct {p0, v3, p1, v2}, Lsweet/tts/GoogleTtsSettingsActivity;->actionButton(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/widget/Button;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 51
    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 52
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lsweet/tts/GoogleTtsSettingsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
