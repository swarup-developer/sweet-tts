package aio.tts;

import android.content.res.AssetManager;
import com.nuance.android.vocalizer.VocalizerEngine;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VocalizerAssetManager.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Laio/tts/VocalizerAssetManager;", "", "assets", "Landroid/content/res/AssetManager;", "engine", "Lcom/nuance/android/vocalizer/VocalizerEngine;", "<init>", "(Landroid/content/res/AssetManager;Lcom/nuance/android/vocalizer/VocalizerEngine;)V", "initialize", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VocalizerAssetManager {
    private final AssetManager assets;
    private final VocalizerEngine engine;

    public VocalizerAssetManager(AssetManager assets, VocalizerEngine engine) {
        Intrinsics.checkNotNullParameter(assets, "assets");
        Intrinsics.checkNotNullParameter(engine, "engine");
        this.assets = assets;
        this.engine = engine;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0137 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean initialize() {
        /*
            Method dump skipped, instructions count: 419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.VocalizerAssetManager.initialize():boolean");
    }
}
