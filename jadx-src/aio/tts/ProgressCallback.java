package aio.tts;

import android.speech.tts.SynthesisCallback;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Watchdog.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\fH\u0016J\b\u0010\u0010\u001a\u00020\fH\u0016J \u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000eH\u0016J\"\u0010\u0015\u001a\u00020\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000eH\u0016J\b\u0010\u001a\u001a\u00020\u000eH\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000eH\u0016J \u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Laio/tts/ProgressCallback;", "Landroid/speech/tts/SynthesisCallback;", "real", "<init>", "(Landroid/speech/tts/SynthesisCallback;)V", "realClass", "", "getRealClass", "()Ljava/lang/String;", "createdNs", "", "firstAudioLogged", "", "getMaxBufferSize", "", "hasStarted", "hasFinished", "start", "sampleRateInHz", "audioFormat", "channelCount", "audioAvailable", "buffer", "", "offset", "length", "done", "error", "", "errorCode", "rangeStart", "markerInFrames", "end", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ProgressCallback implements SynthesisCallback {
    private final long createdNs;
    private boolean firstAudioLogged;
    private final SynthesisCallback real;

    public ProgressCallback(SynthesisCallback real) {
        Intrinsics.checkNotNullParameter(real, "real");
        this.real = real;
        this.createdNs = System.nanoTime();
    }

    public final String getRealClass() {
        String name = this.real.getClass().getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return name;
    }

    @Override // android.speech.tts.SynthesisCallback
    public int getMaxBufferSize() {
        return this.real.getMaxBufferSize();
    }

    @Override // android.speech.tts.SynthesisCallback
    public boolean hasStarted() {
        return this.real.hasStarted();
    }

    @Override // android.speech.tts.SynthesisCallback
    public boolean hasFinished() {
        return this.real.hasFinished();
    }

    @Override // android.speech.tts.SynthesisCallback
    public int start(int sampleRateInHz, int audioFormat, int channelCount) {
        StallWatch.INSTANCE.progress();
        if (!this.firstAudioLogged) {
            this.firstAudioLogged = true;
            DetailedLog.INSTANCE.log("Audio", "first audio ready " + ((System.nanoTime() - this.createdNs) / 1000000) + "ms after the request reached the engine");
        }
        return this.real.start(sampleRateInHz, audioFormat, channelCount);
    }

    @Override // android.speech.tts.SynthesisCallback
    public int audioAvailable(byte[] buffer, int offset, int length) {
        int iAudioAvailable = this.real.audioAvailable(buffer, offset, length);
        StallWatch.INSTANCE.progress();
        return iAudioAvailable;
    }

    @Override // android.speech.tts.SynthesisCallback
    public int done() {
        if (Intrinsics.areEqual(this.real.getClass().getName(), "android.speech.tts.FileSynthesisCallback") && !this.real.hasStarted()) {
            DetailedLog.INSTANCE.log("Speak", "file request ended without audio: empty WAV written");
            this.real.start(EloquenceHub.SAMPLE_RATE_HZ, 2, 1);
        }
        return this.real.done();
    }

    @Override // android.speech.tts.SynthesisCallback
    public void error() {
        this.real.error();
    }

    @Override // android.speech.tts.SynthesisCallback
    public void error(int errorCode) {
        this.real.error(errorCode);
    }

    @Override // android.speech.tts.SynthesisCallback
    public void rangeStart(int markerInFrames, int start, int end) {
        this.real.rangeStart(markerInFrames, start, end);
    }
}
