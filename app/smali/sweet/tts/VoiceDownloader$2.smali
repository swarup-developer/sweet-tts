.class Lsweet/tts/VoiceDownloader$2;
.super Ljava/lang/Object;
.source "VoiceDownloader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsweet/tts/VoiceDownloader;->showRetry(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 203
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 204
    return-void
.end method
