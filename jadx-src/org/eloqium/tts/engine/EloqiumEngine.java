package org.eloqium.tts.engine;

import android.util.Log;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import org.eloqium.tts.pipeline.OpenEVVEncoder;
import org.eloqium.tts.pipeline.UnicodeNormalizer;

/* compiled from: EloqiumEngine.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010$\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\u0018\u0000 62\u00020\u0001:\u00016B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J\u0006\u0010\u0015\u001a\u00020\u0013J\u000e\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\fJ$\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u00052\u0014\b\u0002\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050!J\u0016\u0010\"\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0005J\u000e\u0010$\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u0005J\u000e\u0010&\u001a\u00020\u00132\u0006\u0010'\u001a\u00020\u0005J\u000e\u0010(\u001a\u00020\u00132\u0006\u0010)\u001a\u00020\u0005J\u000e\u0010*\u001a\u00020\u00132\u0006\u0010+\u001a\u00020\u0005J\u000e\u0010,\u001a\u00020\u00132\u0006\u0010+\u001a\u00020\u0005J\u000e\u0010-\u001a\u00020\f2\u0006\u0010.\u001a\u00020/J\u000e\u00100\u001a\u00020\f2\u0006\u00101\u001a\u000202J\u000e\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u000202J\u0006\u00105\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\tR\u000e\u0010\u0010\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0018\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\tR\u0011\u0010\u001a\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\t¨\u00067"}, d2 = {"Lorg/eloqium/tts/engine/EloqiumEngine;", "", "handle", "", "language", "", "<init>", "(JI)V", "getLanguage", "()I", "lock", "closed", "", "value", "sampleRateHz", "getSampleRateHz", "baseSpeed", "basePitch", "configure", "", "initialSampleRateHz", "close", "setSampleRate", "hz", "currentBasePitch", "getCurrentBasePitch", "currentBaseSpeed", "getCurrentBaseSpeed", "setAbbreviations", "enabled", "applyVoice", "presetIndex", "shape", "", "presetParam", "param", "setSpeed", "speed", "setPitch", "pitch", "setVolume", "volume", "setRatePercent", "percent", "setPitchPercent", "speak", "text", "", "speakBytes", "bytes", "", "read", "dst", "emergencyStop", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EloqiumEngine {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "EloqiumEngine";
    private int basePitch;
    private int baseSpeed;
    private volatile boolean closed;
    private final long handle;
    private final int language;
    private final Object lock;
    private int sampleRateHz;

    public /* synthetic */ EloqiumEngine(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, i);
    }

    private EloqiumEngine(long j, int i) {
        this.handle = j;
        this.language = i;
        this.lock = new Object();
        this.sampleRateHz = Eci.INSTANCE.sampleRateHz(1);
        this.baseSpeed = 50;
        this.basePitch = 50;
    }

    public final int getLanguage() {
        return this.language;
    }

    public final int getSampleRateHz() {
        return this.sampleRateHz;
    }

    /* compiled from: EloqiumEngine.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lorg/eloqium/tts/engine/EloqiumEngine$Companion;", "", "<init>", "()V", "TAG", "", "open", "Lorg/eloqium/tts/engine/EloqiumEngine;", "language", "", "initialSampleRateHz", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ EloqiumEngine open$default(Companion companion, int i, int i2, int i3, Object obj) {
            if ((i3 & 2) != 0) {
                i2 = 11025;
            }
            return companion.open(i, i2);
        }

        public final EloqiumEngine open(int language, int initialSampleRateHz) {
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (!NativeEngine.INSTANCE.getLoaded()) {
                Log.e(EloqiumEngine.TAG, "Native library not loaded", NativeEngine.INSTANCE.getLoadError());
                return null;
            }
            long jCreate = NativeEngine.create(language);
            if (jCreate == 0) {
                String str = String.format("Failed to create native engine for language 0x%08x", Arrays.copyOf(new Object[]{Integer.valueOf(language)}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                Log.e(EloqiumEngine.TAG, str);
                return null;
            }
            EloqiumEngine eloqiumEngine = new EloqiumEngine(jCreate, language, defaultConstructorMarker);
            eloqiumEngine.configure(initialSampleRateHz);
            return eloqiumEngine;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void configure(int initialSampleRateHz) {
        NativeEngine.setParam(this.handle, 9, this.language);
        NativeEngine.setParam(this.handle, 0, 0);
        NativeEngine.setParam(this.handle, 8, 0);
        NativeEngine.setParam(this.handle, 1, 1);
        setSampleRate(initialSampleRateHz);
        applyVoice$default(this, 0, null, 2, null);
    }

    public final void close() {
        synchronized (this.lock) {
            if (!this.closed) {
                this.closed = true;
                NativeEngine.stop(this.handle);
                NativeEngine.destroy(this.handle);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean setSampleRate(int hz) {
        synchronized (this.lock) {
            boolean z = false;
            if (this.closed) {
                return false;
            }
            int iSampleRateIndex = Eci.INSTANCE.sampleRateIndex(hz);
            int param = NativeEngine.setParam(this.handle, 5, iSampleRateIndex);
            int iSampleRateHz = Eci.INSTANCE.sampleRateHz(NativeEngine.getParam(this.handle, 5));
            this.sampleRateHz = iSampleRateHz;
            if (param >= 0) {
                if (iSampleRateHz == Eci.INSTANCE.sampleRateHz(iSampleRateIndex)) {
                    z = true;
                }
            }
            return z;
        }
    }

    /* renamed from: getCurrentBasePitch, reason: from getter */
    public final int getBasePitch() {
        return this.basePitch;
    }

    /* renamed from: getCurrentBaseSpeed, reason: from getter */
    public final int getBaseSpeed() {
        return this.baseSpeed;
    }

    public final void setAbbreviations(boolean enabled) {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            NativeEngine.setParam(this.handle, 3, !enabled ? 1 : 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void applyVoice$default(EloqiumEngine eloqiumEngine, int i, Map map, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        eloqiumEngine.applyVoice(i, map);
    }

    public final void applyVoice(int presetIndex, Map<Integer, Integer> shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            NativeEngine.copyVoice(this.handle, RangesKt.coerceIn(presetIndex + 1, 1, 8), 9);
            long j = this.handle;
            Integer num = shape.get(6);
            NativeEngine.setVoiceParam(j, 9, 6, num != null ? num.intValue() : 50);
            for (Map.Entry<Integer, Integer> entry : shape.entrySet()) {
                int iIntValue = entry.getKey().intValue();
                NativeEngine.setVoiceParam(this.handle, 9, iIntValue, Eci.INSTANCE.clampVoice(iIntValue, entry.getValue().intValue()));
            }
            NativeEngine.copyVoice(this.handle, 9, 0);
            this.baseSpeed = NativeEngine.getVoiceParam(this.handle, 0, 6);
            this.basePitch = NativeEngine.getVoiceParam(this.handle, 0, 2);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final int presetParam(int presetIndex, int param) {
        synchronized (this.lock) {
            if (this.closed) {
                return -1;
            }
            return NativeEngine.getVoiceParam(this.handle, RangesKt.coerceIn(presetIndex + 1, 1, 8), param);
        }
    }

    public final void setSpeed(int speed) {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            NativeEngine.setVoiceParam(this.handle, 0, 6, RangesKt.coerceIn(speed, 0, 250));
        }
    }

    public final void setPitch(int pitch) {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            NativeEngine.setVoiceParam(this.handle, 0, 2, RangesKt.coerceIn(pitch, 0, 100));
        }
    }

    public final void setVolume(int volume) {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            NativeEngine.setVoiceParam(this.handle, 0, 7, RangesKt.coerceIn(volume, 0, 100));
        }
    }

    public final void setRatePercent(int percent) {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            NativeEngine.setVoiceParam(this.handle, 0, 6, SpeechRateMapper.mapAndroidRate$default(SpeechRateMapper.INSTANCE, percent, false, 2, null));
        }
    }

    public final void setPitchPercent(int percent) {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            NativeEngine.setVoiceParam(this.handle, 0, 2, RangesKt.coerceIn((int) ((this.basePitch * percent) / 100), 0, 100));
        }
    }

    public final boolean speak(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        synchronized (this.lock) {
            if (this.closed) {
                return false;
            }
            return NativeEngine.speak(this.handle, OpenEVVEncoder.INSTANCE.encode(UnicodeNormalizer.INSTANCE.normalize(text)));
        }
    }

    public final boolean speakBytes(byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        synchronized (this.lock) {
            if (this.closed) {
                return false;
            }
            return NativeEngine.speak(this.handle, bytes);
        }
    }

    public final int read(byte[] dst) {
        Intrinsics.checkNotNullParameter(dst, "dst");
        if (this.closed) {
            return -1;
        }
        return NativeEngine.read(this.handle, dst);
    }

    public final void emergencyStop() {
        if (this.closed) {
            return;
        }
        NativeEngine.stop(this.handle);
    }
}
