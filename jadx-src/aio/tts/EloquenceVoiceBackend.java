package aio.tts;

import android.content.Context;
import android.speech.tts.SynthesisCallback;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.eloqium.tts.engine.EloqiumEngine;

/* compiled from: EloquenceVoiceBackend.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u0007H\u0016J\b\u0010\u000f\u001a\u00020\rH\u0016J:\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0016J0\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Laio/tts/EloquenceVoiceBackend;", "Laio/tts/VoiceBackend;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "stopRequested", "", "resolveVoiceName", "", "lang", "appPackage", "beginUtterance", "", "wasStopped", "stop", "speak", "text", "callback", "Landroid/speech/tts/SynthesisCallback;", "callerRate", "", "callerPitch", "speakLocked", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EloquenceVoiceBackend implements VoiceBackend {
    private static final int STREAM_BUFFER_SIZE = 4096;
    private volatile boolean stopRequested;

    public EloquenceVoiceBackend(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        EloquenceHub.INSTANCE.engine();
    }

    @Override // aio.tts.VoiceBackend
    public String resolveVoiceName(String lang, String appPackage) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        return VoiceCatalog.ELOQUENCE_VOICE_NAME;
    }

    @Override // aio.tts.VoiceBackend
    public void beginUtterance() {
        this.stopRequested = false;
    }

    @Override // aio.tts.VoiceBackend
    /* renamed from: wasStopped, reason: from getter */
    public boolean getStopRequested() {
        return this.stopRequested;
    }

    @Override // aio.tts.VoiceBackend
    public void stop() {
        this.stopRequested = true;
    }

    @Override // aio.tts.VoiceBackend
    public void speak(String text, String lang, SynthesisCallback callback, int callerRate, int callerPitch, String appPackage) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(lang, "lang");
        Intrinsics.checkNotNullParameter(callback, "callback");
        EloquenceHub.INSTANCE.getUtteranceLock().lock();
        try {
            speakLocked(text, lang, callback, callerRate, callerPitch);
        } finally {
            EloquenceHub.INSTANCE.getUtteranceLock().unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x026e, code lost:
    
        r0 = "engine read failed (" + r7 + ")";
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0285, code lost:
    
        aio.tts.EloquenceHub.INSTANCE.disarm();
        aio.tts.EloquenceHub.INSTANCE.reportBroken(r4, r0);
        r39 = r0;
        r32 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x029b, code lost:
    
        aio.tts.EloquenceHub.INSTANCE.disarm();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x02a0, code lost:
    
        r5 = r5 + 1;
        r29 = r6;
        r32 = r12;
        r6 = r41;
        r13 = r43;
        r12 = r0;
        r0 = r40;
     */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x047f  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x03e6 A[EXC_TOP_SPLITTER, LOOP:1: B:188:0x03e6->B:121:0x03ec, LOOP_START, PHI: r34
      0x03e6: PHI (r34v4 long) = (r34v3 long), (r34v5 long) binds: [B:118:0x03e4, B:121:0x03ec] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void speakLocked(java.lang.String r45, java.lang.String r46, android.speech.tts.SynthesisCallback r47, int r48, int r49) {
        /*
            Method dump skipped, instructions count: 1712
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.EloquenceVoiceBackend.speakLocked(java.lang.String, java.lang.String, android.speech.tts.SynthesisCallback, int, int):void");
    }

    private static final void speakLocked$configure(int i, Map<Integer, Integer> map, int i2, int i3, int i4, EloqiumEngine eloqiumEngine) {
        eloqiumEngine.applyVoice(i, map);
        eloqiumEngine.setSpeed(i2);
        eloqiumEngine.setPitchPercent(i3);
        eloqiumEngine.setVolume(i4);
    }
}
