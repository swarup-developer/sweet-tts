.class public interface abstract Lcom/nuance/android/vocalizer/VocalizerEngineListener;
.super Ljava/lang/Object;
.source "VocalizerEngineListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\u0003H&\u00a8\u0006\u000c\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/nuance/android/vocalizer/VocalizerEngineListener;",
        "",
        "onReload",
        "",
        "onSpeakElementCompleted",
        "elementId",
        "",
        "onSpeakElementStarted",
        "onStateChanged",
        "state",
        "",
        "onVoiceListChanged",
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


# virtual methods
.method public abstract onReload()V
.end method

.method public abstract onSpeakElementCompleted(Ljava/lang/String;)V
.end method

.method public abstract onSpeakElementStarted(Ljava/lang/String;)V
.end method

.method public abstract onStateChanged(I)V
.end method

.method public abstract onVoiceListChanged()V
.end method
