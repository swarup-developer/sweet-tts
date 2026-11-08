.class public final Lsweet/tts/SpeakerRoute;
.super Ljava/lang/Object;
.source "SpeakerRoute.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "speaker_route_enabled"

.field private static final PREFS:Ljava/lang/String; = "aiotts_settings"

.field private static volatile sSampleRate:I

.field private static volatile sStop:Z

.field private static sTrack:Landroid/media/AudioTrack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/16 v0, 0x5622

    sput v0, Lsweet/tts/SpeakerRoute;->sSampleRate:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static drain(Landroid/media/AudioTrack;II)V
    .registers 9

    .line 103
    div-int/lit8 p1, p1, 0x2

    int-to-long v0, p1

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    const/4 p1, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long p1, p1

    div-long/2addr v4, p1

    add-long/2addr v2, v4

    const-wide/16 p1, 0xbb8

    add-long/2addr v2, p1

    .line 105
    :goto_15
    sget-boolean p1, Lsweet/tts/SpeakerRoute;->sStop:Z

    if-nez p1, :cond_37

    .line 106
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide p1

    .line 107
    cmp-long p1, p1, v0

    if-ltz p1, :cond_26

    return-void

    .line 108
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-ltz p1, :cond_2f

    return-void

    .line 109
    :cond_2f
    const-wide/16 p1, 0x14

    :try_start_31
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_34} :catch_35

    .line 110
    goto :goto_15

    .line 109
    :catch_35
    move-exception p0

    return-void

    .line 111
    :cond_37
    return-void
.end method

.method private static findSpeaker(Landroid/content/Context;)Landroid/media/AudioDeviceInfo;
    .registers 6

    .line 115
    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 116
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    .line 117
    array-length v1, p0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 118
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_1d

    if-ne v4, v0, :cond_1a

    return-object v3

    .line 117
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 120
    :catchall_1d
    move-exception p0

    :cond_1e
    nop

    .line 121
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 5

    .line 24
    const-string v0, "speaker_route_enabled"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "aiotts_settings"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    if-eqz v2, :cond_12

    const/4 p0, 0x1

    return p0

    .line 25
    :catchall_11
    move-exception v2

    :cond_12
    nop

    .line 27
    :try_start_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_33

    return p0

    .line 28
    :catchall_33
    move-exception p0

    .line 29
    return v1
.end method

.method public static makeToggle(Landroid/content/Context;)Landroid/widget/CheckBox;
    .registers 3

    .line 125
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 126
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 127
    const-string v1, "Phone speaker for speech\nKeeps the screen reader voice on the phone speaker while music plays on Bluetooth or headphones. Works automatically, no switching needed. Experimental."

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-static {p0}, Lsweet/tts/SpeakerRoute;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    new-instance p0, Lsweet/tts/SpeakerRoute$1;

    invoke-direct {p0}, Lsweet/tts/SpeakerRoute$1;-><init>()V

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    return-object v0
.end method

.method public static noteSampleRate(I)V
    .registers 1

    .line 46
    if-lez p0, :cond_4

    sput p0, Lsweet/tts/SpeakerRoute;->sSampleRate:I

    .line 47
    :cond_4
    return-void
.end method

.method public static playBlocking(Landroid/content/Context;[B)Z
    .registers 15

    .line 58
    nop

    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    sput-boolean v0, Lsweet/tts/SpeakerRoute;->sStop:Z

    .line 61
    sget v2, Lsweet/tts/SpeakerRoute;->sSampleRate:I

    .line 62
    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v2, v4, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 63
    if-gtz v5, :cond_11

    const/16 v5, 0x2000

    .line 64
    :cond_11
    array-length v6, p1

    const/high16 v7, 0x10000

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 65
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 66
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 67
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 68
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v8

    .line 69
    new-instance v5, Landroid/media/AudioFormat$Builder;

    invoke-direct {v5}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 70
    invoke-virtual {v5, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    .line 71
    invoke-virtual {v5, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    .line 72
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v9

    .line 74
    new-instance v3, Landroid/media/AudioTrack;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_d1

    .line 75
    :try_start_4d
    invoke-static {p0}, Lsweet/tts/SpeakerRoute;->findSpeaker(Landroid/content/Context;)Landroid/media/AudioDeviceInfo;

    move-result-object p0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_cf

    .line 76
    if-eqz p0, :cond_58

    .line 77
    :try_start_53
    invoke-virtual {v3, p0}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_58

    :catchall_57
    move-exception p0

    .line 79
    :cond_58
    :goto_58
    :try_start_58
    const-class p0, Lsweet/tts/SpeakerRoute;

    monitor-enter p0
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_cf

    :try_start_5b
    sput-object v3, Lsweet/tts/SpeakerRoute;->sTrack:Landroid/media/AudioTrack;

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_cc

    .line 80
    :try_start_5e
    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    .line 81
    move p0, v0

    .line 82
    :goto_62
    array-length v4, p1

    if-ge p0, v4, :cond_ae

    .line 83
    sget-boolean v4, Lsweet/tts/SpeakerRoute;->sStop:Z
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_cf

    if-eqz v4, :cond_82

    .line 94
    const-class v4, Lsweet/tts/SpeakerRoute;

    monitor-enter v4

    :try_start_6c
    sget-object p0, Lsweet/tts/SpeakerRoute;->sTrack:Landroid/media/AudioTrack;

    if-ne p0, v3, :cond_72

    sput-object v1, Lsweet/tts/SpeakerRoute;->sTrack:Landroid/media/AudioTrack;

    :cond_72
    monitor-exit v4
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_7f

    .line 95
    nop

    .line 96
    :try_start_74
    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_79

    :catchall_78
    move-exception p0

    .line 97
    :goto_79
    :try_start_79
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    goto :goto_7e

    :catchall_7d
    move-exception p0

    .line 83
    :goto_7e
    return v6

    .line 94
    :catchall_7f
    move-exception p0

    :try_start_80
    monitor-exit v4
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw p0

    .line 84
    :cond_82
    :try_start_82
    array-length v4, p1

    sub-int/2addr v4, p0

    const/16 v5, 0x1000

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 85
    invoke-virtual {v3, p1, p0, v4}, Landroid/media/AudioTrack;->write([BII)I

    move-result v4
    :try_end_8e
    .catchall {:try_start_82 .. :try_end_8e} :catchall_cf

    .line 86
    if-gtz v4, :cond_ac

    if-lez p0, :cond_93

    move v0, v6

    .line 94
    :cond_93
    const-class v5, Lsweet/tts/SpeakerRoute;

    monitor-enter v5

    :try_start_96
    sget-object p0, Lsweet/tts/SpeakerRoute;->sTrack:Landroid/media/AudioTrack;

    if-ne p0, v3, :cond_9c

    sput-object v1, Lsweet/tts/SpeakerRoute;->sTrack:Landroid/media/AudioTrack;

    :cond_9c
    monitor-exit v5
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_a9

    .line 95
    nop

    .line 96
    :try_start_9e
    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a2

    goto :goto_a3

    :catchall_a2
    move-exception p0

    .line 97
    :goto_a3
    :try_start_a3
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_a8

    :catchall_a7
    move-exception p0

    .line 86
    :goto_a8
    return v0

    .line 94
    :catchall_a9
    move-exception p0

    :try_start_aa
    monitor-exit v5
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw p0

    .line 87
    :cond_ac
    add-int/2addr p0, v4

    .line 88
    goto :goto_62

    .line 89
    :cond_ae
    :try_start_ae
    array-length p0, p1

    invoke-static {v3, p0, v2}, Lsweet/tts/SpeakerRoute;->drain(Landroid/media/AudioTrack;II)V
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_cf

    .line 90
    nop

    .line 94
    const-class p0, Lsweet/tts/SpeakerRoute;

    monitor-enter p0

    :try_start_b6
    sget-object p1, Lsweet/tts/SpeakerRoute;->sTrack:Landroid/media/AudioTrack;

    if-ne p1, v3, :cond_bc

    sput-object v1, Lsweet/tts/SpeakerRoute;->sTrack:Landroid/media/AudioTrack;

    :cond_bc
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_c9

    .line 95
    nop

    .line 96
    :try_start_be
    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_c2

    goto :goto_c3

    :catchall_c2
    move-exception p0

    .line 97
    :goto_c3
    :try_start_c3
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_c7

    goto :goto_c8

    :catchall_c7
    move-exception p0

    .line 90
    :goto_c8
    return v6

    .line 94
    :catchall_c9
    move-exception p1

    :try_start_ca
    monitor-exit p0
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw p1

    .line 79
    :catchall_cc
    move-exception p1

    :try_start_cd
    monitor-exit p0
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    :try_start_ce
    throw p1
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cf

    .line 91
    :catchall_cf
    move-exception p0

    goto :goto_d3

    :catchall_d1
    move-exception p0

    move-object v3, v1

    .line 92
    :goto_d3
    nop

    .line 94
    const-class p0, Lsweet/tts/SpeakerRoute;

    monitor-enter p0

    :try_start_d7
    sget-object p1, Lsweet/tts/SpeakerRoute;->sTrack:Landroid/media/AudioTrack;

    if-ne p1, v3, :cond_dd

    sput-object v1, Lsweet/tts/SpeakerRoute;->sTrack:Landroid/media/AudioTrack;

    :cond_dd
    monitor-exit p0
    :try_end_de
    .catchall {:try_start_d7 .. :try_end_de} :catchall_eb

    .line 95
    if-eqz v3, :cond_ea

    .line 96
    :try_start_e0
    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e4

    goto :goto_e5

    :catchall_e4
    move-exception p0

    .line 97
    :goto_e5
    :try_start_e5
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_e9

    goto :goto_ea

    :catchall_e9
    move-exception p0

    .line 92
    :cond_ea
    :goto_ea
    return v0

    .line 94
    :catchall_eb
    move-exception p1

    :try_start_ec
    monitor-exit p0
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw p1
.end method

.method public static declared-synchronized requestStop()V
    .registers 2

    const-class v0, Lsweet/tts/SpeakerRoute;

    monitor-enter v0

    .line 50
    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Lsweet/tts/SpeakerRoute;->sStop:Z

    .line 51
    sget-object v1, Lsweet/tts/SpeakerRoute;->sTrack:Landroid/media/AudioTrack;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    .line 52
    if-eqz v1, :cond_12

    .line 53
    :try_start_a
    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_11

    goto :goto_12

    :catchall_11
    move-exception v1

    .line 55
    :cond_12
    :goto_12
    monitor-exit v0

    return-void

    .line 49
    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .registers 6

    .line 35
    const-string v0, "speaker_route_enabled"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "aiotts_settings"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 36
    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    goto :goto_16

    .line 37
    :catchall_15
    move-exception v2

    :goto_16
    nop

    .line 39
    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 40
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_3e

    goto :goto_3f

    .line 41
    :catchall_3e
    move-exception p0

    :goto_3f
    nop

    .line 42
    if-nez p1, :cond_45

    invoke-static {}, Lsweet/tts/SpeakerRoute;->requestStop()V

    .line 43
    :cond_45
    return-void
.end method
