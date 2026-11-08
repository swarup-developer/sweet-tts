package com.nuance.android.vocalizer;

import kotlin.Metadata;

/* compiled from: VocalizerAudioOutputListener.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0017\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/nuance/android/vocalizer/VocalizerAudioOutputListener;", "", "onAudioData", "", "settings", "Lcom/nuance/android/vocalizer/VocalizerAudioSettings;", "samples", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public interface VocalizerAudioOutputListener {
    void onAudioData(VocalizerAudioSettings settings, short[] samples);
}
