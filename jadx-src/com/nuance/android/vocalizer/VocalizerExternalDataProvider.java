package com.nuance.android.vocalizer;

import android.content.res.AssetFileDescriptor;
import kotlin.Metadata;

/* compiled from: VocalizerExternalDataProvider.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007À\u0006\u0003"}, d2 = {"Lcom/nuance/android/vocalizer/VocalizerExternalDataProvider;", "", "getHeaders", "", "openDataFile", "Landroid/content/res/AssetFileDescriptor;", "name", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public interface VocalizerExternalDataProvider {
    String getHeaders();

    AssetFileDescriptor openDataFile(String name);
}
