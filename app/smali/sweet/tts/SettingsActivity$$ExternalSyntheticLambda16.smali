.class public final synthetic Lsweet/tts/SettingsActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lsweet/tts/SettingsActivity;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lsweet/tts/SettingsActivity;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsweet/tts/SettingsActivity$$ExternalSyntheticLambda16;->f$0:Lsweet/tts/SettingsActivity;

    iput-object p2, p0, Lsweet/tts/SettingsActivity$$ExternalSyntheticLambda16;->f$1:Ljava/io/File;

    iput-object p3, p0, Lsweet/tts/SettingsActivity$$ExternalSyntheticLambda16;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lsweet/tts/SettingsActivity$$ExternalSyntheticLambda16;->f$0:Lsweet/tts/SettingsActivity;

    iget-object v1, p0, Lsweet/tts/SettingsActivity$$ExternalSyntheticLambda16;->f$1:Ljava/io/File;

    iget-object p0, p0, Lsweet/tts/SettingsActivity$$ExternalSyntheticLambda16;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lsweet/tts/SettingsActivity;->saveLogToDocuments$lambda$40(Lsweet/tts/SettingsActivity;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
