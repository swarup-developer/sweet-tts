package com.nuance.android.vocalizer.internal;

import aio.tts.BuildConfig;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.util.Log;
import com.nuance.android.vocalizer.VocalizerExternalDataProvider;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* compiled from: VocalizerAssetManager.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\nJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\nJ\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0014\u001a\u00020\nJ\u0006\u0010\u001a\u001a\u00020\u0010J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tj\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00060\rj\u0002`\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/nuance/android/vocalizer/internal/VocalizerAssetManager;", "", "context", "Landroid/content/Context;", "externalDataProvider", "Lcom/nuance/android/vocalizer/VocalizerExternalDataProvider;", "<init>", "(Landroid/content/Context;Lcom/nuance/android/vocalizer/VocalizerExternalDataProvider;)V", "assetPaths", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "pipelineHeaders", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "initialize", "", "getPipelineHeaders", "openAssetFile", "Lcom/nuance/android/vocalizer/internal/VocalizerFileInfo;", "name", "closeAssetFile", "descriptor", "", "readFileContents", "", BuildConfig.BUILD_TYPE, "resolvePath", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VocalizerAssetManager {
    private final HashMap<String, String> assetPaths;
    private final Context context;
    private final VocalizerExternalDataProvider externalDataProvider;
    private StringBuilder pipelineHeaders;

    public final void release() {
    }

    public VocalizerAssetManager(Context context, VocalizerExternalDataProvider vocalizerExternalDataProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.externalDataProvider = vocalizerExternalDataProvider;
        this.assetPaths = new HashMap<>();
        this.pipelineHeaders = new StringBuilder();
    }

    public final void initialize() throws IOException {
        AssetManager assets = this.context.getAssets();
        String[] list = assets.list("vocalizer");
        if (list == null) {
            list = new String[0];
        }
        for (String str : list) {
            Intrinsics.checkNotNull(str);
            if (StringsKt.contains$default((CharSequence) str, '.', false, 2, (Object) null)) {
                String str2 = "vocalizer/" + str;
                this.assetPaths.put(str, str2);
                HashMap<String, String> map = this.assetPaths;
                String lowerCase = str.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                map.put(lowerCase, str2);
                String lowerCase2 = str.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                if (StringsKt.endsWith$default(lowerCase2, ".jet", false, 2, (Object) null)) {
                    try {
                        StringBuilder sb = this.pipelineHeaders;
                        InputStream inputStreamOpen = assets.open(str2);
                        try {
                            InputStream inputStream = inputStreamOpen;
                            Intrinsics.checkNotNull(inputStream);
                            byte[] bytes = ByteStreamsKt.readBytes(inputStream);
                            CloseableKt.closeFinally(inputStreamOpen, null);
                            sb.append(new String(bytes, Charsets.UTF_8));
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(inputStreamOpen, th);
                                throw th2;
                            }
                        }
                    } catch (Exception e) {
                        Log.e("AllInOneTTS", "AssetManager: failed reading pipeline " + str2, e);
                    }
                } else {
                    continue;
                }
            }
        }
        Log.d("AllInOneTTS", "AssetManager: initialized, " + this.assetPaths.size() + " asset name(s) indexed");
    }

    public final String getPipelineHeaders() {
        String string = this.pipelineHeaders.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public final VocalizerFileInfo openAssetFile(String name) throws IOException {
        Intrinsics.checkNotNullParameter(name, "name");
        Log.d("AllInOneTTS", "openAssetFile requested: " + name);
        try {
            VocalizerExternalDataProvider vocalizerExternalDataProvider = this.externalDataProvider;
            AssetFileDescriptor assetFileDescriptorOpenDataFile = vocalizerExternalDataProvider != null ? vocalizerExternalDataProvider.openDataFile(name) : null;
            if (assetFileDescriptorOpenDataFile != null) {
                long startOffset = assetFileDescriptorOpenDataFile.getStartOffset();
                long length = assetFileDescriptorOpenDataFile.getLength();
                int iDetachFd = assetFileDescriptorOpenDataFile.getParcelFileDescriptor().detachFd();
                if (iDetachFd > 0) {
                    VocalizerFileInfo vocalizerFileInfo = new VocalizerFileInfo();
                    vocalizerFileInfo.descriptor = iDetachFd;
                    vocalizerFileInfo.startOffset = startOffset;
                    vocalizerFileInfo.length = length;
                    return vocalizerFileInfo;
                }
            }
        } catch (Exception e) {
            Log.e("AllInOneTTS", "openAssetFile: external folder failed for '" + name + "'", e);
        }
        String strResolvePath = resolvePath(name);
        if (strResolvePath == null) {
            Log.e("AllInOneTTS", "openAssetFile: no match for '" + name + "'");
            return null;
        }
        try {
            AssetFileDescriptor assetFileDescriptorOpenFd = this.context.getAssets().openFd(strResolvePath);
            Intrinsics.checkNotNullExpressionValue(assetFileDescriptorOpenFd, "openFd(...)");
            long startOffset2 = assetFileDescriptorOpenFd.getStartOffset();
            long length2 = assetFileDescriptorOpenFd.getLength();
            int iDetachFd2 = assetFileDescriptorOpenFd.getParcelFileDescriptor().detachFd();
            if (iDetachFd2 <= 0) {
                return null;
            }
            VocalizerFileInfo vocalizerFileInfo2 = new VocalizerFileInfo();
            vocalizerFileInfo2.descriptor = iDetachFd2;
            vocalizerFileInfo2.startOffset = startOffset2;
            vocalizerFileInfo2.length = length2;
            return vocalizerFileInfo2;
        } catch (Exception e2) {
            Log.e("AllInOneTTS", "openAssetFile EXCEPTION for '" + name + "' -> '" + strResolvePath + "'", e2);
            return null;
        }
    }

    public final void closeAssetFile(int descriptor) {
        Log.d("AllInOneTTS", "closeAssetFile: fd=" + descriptor + " (native owns detached fds; no action taken)");
    }

    public final byte[] readFileContents(String name) throws IOException {
        Intrinsics.checkNotNullParameter(name, "name");
        String strResolvePath = resolvePath(name);
        if (strResolvePath == null) {
            return null;
        }
        try {
            InputStream inputStreamOpen = this.context.getAssets().open(strResolvePath);
            try {
                InputStream inputStream = inputStreamOpen;
                Intrinsics.checkNotNull(inputStream);
                byte[] bytes = ByteStreamsKt.readBytes(inputStream);
                CloseableKt.closeFinally(inputStreamOpen, null);
                return bytes;
            } finally {
            }
        } catch (Exception e) {
            Log.e("AllInOneTTS", "readFileContents EXCEPTION for '" + name + "' -> '" + strResolvePath + "'", e);
            return null;
        }
    }

    private final String resolvePath(String name) {
        String lowerCase = name.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String str = this.assetPaths.get(name);
        if (str != null) {
            return str;
        }
        String str2 = this.assetPaths.get(lowerCase);
        if (str2 != null) {
            return str2;
        }
        String str3 = this.assetPaths.get(name + ".xmf");
        if (str3 != null) {
            return str3;
        }
        String str4 = this.assetPaths.get(lowerCase + ".xmf");
        if (str4 != null) {
            return str4;
        }
        String strReplace$default = StringsKt.replace$default(name, '/', '_', false, 4, (Object) null);
        String str5 = this.assetPaths.get(strReplace$default + ".xmf");
        if (str5 != null) {
            return str5;
        }
        HashMap<String, String> map = this.assetPaths;
        String lowerCase2 = strReplace$default.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        String str6 = map.get(lowerCase2 + ".xmf");
        if (str6 != null) {
            return str6;
        }
        String strSubstringAfterLast$default = StringsKt.substringAfterLast$default(name, '/', (String) null, 2, (Object) null);
        String str7 = this.assetPaths.get(strSubstringAfterLast$default);
        if (str7 != null) {
            return str7;
        }
        String str8 = this.assetPaths.get(strSubstringAfterLast$default + ".xmf");
        if (str8 != null) {
            return str8;
        }
        return null;
    }
}
