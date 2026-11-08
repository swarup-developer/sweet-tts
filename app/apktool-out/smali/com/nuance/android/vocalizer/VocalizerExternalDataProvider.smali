.class public interface abstract Lcom/nuance/android/vocalizer/VocalizerExternalDataProvider;
.super Ljava/lang/Object;
.source "VocalizerExternalDataProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0003H&\u00a8\u0006\u0007\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/nuance/android/vocalizer/VocalizerExternalDataProvider;",
        "",
        "getHeaders",
        "",
        "openDataFile",
        "Landroid/content/res/AssetFileDescriptor;",
        "name",
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
.method public abstract getHeaders()Ljava/lang/String;
.end method

.method public abstract openDataFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
.end method
