package org.eloqium.tts.engine;

import android.util.Log;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* compiled from: NativeEngine.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0016\n\u0002\u0010\u0015\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0087 J\u0011\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000fH\u0087 J\u0019\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0087 J\u0019\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0017H\u0087 J\u0011\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000fH\u0087 J!\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0005H\u0087 J)\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u0017H\u0087 J#\u0010!\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0017H\u0087 J\u0011\u0010\"\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000fH\u0087 J!\u0010#\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020\u00112\u0006\u0010%\u001a\u00020\u0011H\u0087 J\u0019\u0010&\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020\u0011H\u0087 J)\u0010'\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u00112\u0006\u0010%\u001a\u00020\u0011H\u0087 J!\u0010)\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u0011H\u0087 J!\u0010*\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u0011H\u0087 J\t\u0010-\u001a\u00020.H\u0087 J\t\u0010/\u001a\u00020\u0005H\u0087 R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u00060"}, d2 = {"Lorg/eloqium/tts/engine/NativeEngine;", "", "<init>", "()V", "TAG", "", "loaded", "", "getLoaded", "()Z", "loadError", "", "getLoadError", "()Ljava/lang/Throwable;", "create", "", "language", "", "destroy", "", "handle", "speak", "text", "", "read", "dst", "stop", "loadDictionary", "volume", "path", "teachWord", "key", "say", "lookUpWord", "forgetDictionaries", "setParam", "param", "value", "getParam", "setVoiceParam", "voice", "getVoiceParam", "copyVoice", "from", "to", "languages", "", "version", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NativeEngine {
    public static final NativeEngine INSTANCE = new NativeEngine();
    private static final String TAG = "NativeEngine";
    private static final Throwable loadError;
    private static final boolean loaded;

    @JvmStatic
    public static final native int copyVoice(long handle, int from, int to);

    @JvmStatic
    public static final native long create(int language);

    @JvmStatic
    public static final native void destroy(long handle);

    @JvmStatic
    public static final native void forgetDictionaries(long handle);

    @JvmStatic
    public static final native int getParam(long handle, int param);

    @JvmStatic
    public static final native int getVoiceParam(long handle, int voice, int param);

    @JvmStatic
    public static final native int[] languages();

    @JvmStatic
    public static final native int loadDictionary(long handle, int volume, String path);

    @JvmStatic
    public static final native String lookUpWord(long handle, int volume, byte[] key);

    @JvmStatic
    public static final native int read(long handle, byte[] dst);

    @JvmStatic
    public static final native int setParam(long handle, int param, int value);

    @JvmStatic
    public static final native int setVoiceParam(long handle, int voice, int param, int value);

    @JvmStatic
    public static final native boolean speak(long handle, byte[] text);

    @JvmStatic
    public static final native void stop(long handle);

    @JvmStatic
    public static final native int teachWord(long handle, int volume, byte[] key, byte[] say);

    @JvmStatic
    public static final native String version();

    private NativeEngine() {
    }

    public final boolean getLoaded() {
        return loaded;
    }

    public final Throwable getLoadError() {
        return loadError;
    }

    static {
        boolean z;
        try {
            System.loadLibrary("eloqiumjni");
            th = null;
            z = true;
        } catch (Throwable th) {
            th = th;
            Log.e(TAG, "Failed to load libeloqiumjni.so", th);
            z = false;
        }
        loaded = z;
        loadError = th;
    }
}
