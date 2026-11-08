.class public final Lsweet/tts/AppVoiceActivity$AppVoiceFragment$Companion;
.super Ljava/lang/Object;
.source "AppVoiceActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsweet/tts/AppVoiceActivity$AppVoiceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppVoiceActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppVoiceActivity.kt\nsweet/tts/AppVoiceActivity$AppVoiceFragment$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lsweet/tts/AppVoiceActivity$AppVoiceFragment$Companion;",
        "",
        "<init>",
        "()V",
        "newInstance",
        "Lsweet/tts/AppVoiceActivity$AppVoiceFragment;",
        "packageName",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lsweet/tts/AppVoiceActivity$AppVoiceFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;)Lsweet/tts/AppVoiceActivity$AppVoiceFragment;
    .locals 2

    const-string p0, "packageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance p0, Lsweet/tts/AppVoiceActivity$AppVoiceFragment;

    invoke-direct {p0}, Lsweet/tts/AppVoiceActivity$AppVoiceFragment;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lsweet/tts/AppVoiceActivity$AppVoiceFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method
