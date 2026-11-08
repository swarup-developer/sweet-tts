.class Lsweet/tts/VoiceDownloader$3;
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


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lsweet/tts/VoiceDownloader$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 198
    iget-object p1, p0, Lsweet/tts/VoiceDownloader$3;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lsweet/tts/VoiceDownloader;->-$$Nest$smstartDownload(Landroid/app/Activity;)V

    .line 199
    return-void
.end method
