package com.nuance.android.vocalizer;

import kotlin.Metadata;

/* compiled from: VocalizerAudioSettings.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\n\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\t\b\u0016¢\u0006\u0004\b\u0005\u0010\u0007J\u0006\u0010\u000b\u001a\u00020\u0003R\u0012\u0010\b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/nuance/android/vocalizer/VocalizerAudioSettings;", "", "rate", "", "channels", "<init>", "(II)V", "()V", "mRate", "mChannels", "mAudioBufferSize", "convertToAudioStreamChannel", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VocalizerAudioSettings {
    public static final int MONO = 1;
    public static final int STEREO = 2;
    public int mAudioBufferSize;
    public int mChannels;
    public int mRate;

    public VocalizerAudioSettings(int i, int i2) {
        this.mRate = i;
        this.mChannels = i2;
    }

    public VocalizerAudioSettings() {
        this(-1, 1);
    }

    public final int convertToAudioStreamChannel() {
        return this.mChannels == 1 ? 4 : 12;
    }
}
