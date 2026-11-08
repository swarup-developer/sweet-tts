package org.eloqium.tts.engine;

import kotlin.Metadata;
import kotlin.ranges.RangesKt;

/* compiled from: SpeechRateMapper.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0018\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\fJ@\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0015H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lorg/eloqium/tts/engine/SpeechRateMapper;", "", "<init>", "()V", "NORMAL_SPEED", "", "MIN_SPEED", "MAX_SPEED_NORMAL", "MAX_SPEED_UNLOCKED", "mapRelativeRate", "relative", "unlocked", "", "mapLegacyToRelative", "legacyValue", "mapSliderRate", "sliderValue", "mapAndroidRate", "requestRate", "interpolate", "minIn", "", "maxIn", "inVal", "midIn", "minOut", "maxOut", "midOut", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SpeechRateMapper {
    public static final SpeechRateMapper INSTANCE = new SpeechRateMapper();
    public static final int MAX_SPEED_NORMAL = 150;
    public static final int MAX_SPEED_UNLOCKED = 250;
    public static final int MIN_SPEED = 40;
    public static final int NORMAL_SPEED = 57;

    private SpeechRateMapper() {
    }

    public static /* synthetic */ int mapRelativeRate$default(SpeechRateMapper speechRateMapper, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return speechRateMapper.mapRelativeRate(i, z);
    }

    public final int mapRelativeRate(int relative, boolean unlocked) {
        long jRound;
        int iCoerceIn = RangesKt.coerceIn(relative, -10, 10);
        if (iCoerceIn == 0) {
            return 57;
        }
        int i = unlocked ? 250 : MAX_SPEED_NORMAL;
        if (iCoerceIn > 0) {
            jRound = Math.round((i - 57) * (iCoerceIn / 10.0d));
        } else {
            jRound = Math.round(17.0d * (iCoerceIn / 10.0d));
        }
        return RangesKt.coerceIn(((int) jRound) + 57, 40, i);
    }

    public final int mapLegacyToRelative(int legacyValue) {
        return RangesKt.coerceIn((int) Math.round((RangesKt.coerceIn(legacyValue, 0, 100) - 50) / 5.0d), -10, 10);
    }

    public static /* synthetic */ int mapSliderRate$default(SpeechRateMapper speechRateMapper, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return speechRateMapper.mapSliderRate(i, z);
    }

    public final int mapSliderRate(int sliderValue, boolean unlocked) {
        return interpolate(0.0f, 100.0f, sliderValue, 50.0f, 40.0f, unlocked ? 250.0f : 150.0f, 57.0f);
    }

    public static /* synthetic */ int mapAndroidRate$default(SpeechRateMapper speechRateMapper, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return speechRateMapper.mapAndroidRate(i, z);
    }

    public final int mapAndroidRate(int requestRate, boolean unlocked) {
        return interpolate(10.0f, 600.0f, requestRate, 100.0f, 40.0f, unlocked ? 250.0f : 150.0f, 57.0f);
    }

    private final int interpolate(float minIn, float maxIn, float inVal, float midIn, float minOut, float maxOut, float midOut) {
        float f;
        float f2;
        if (inVal == midIn) {
            return (int) midOut;
        }
        float fCoerceIn = RangesKt.coerceIn(inVal, minIn, maxIn);
        if (fCoerceIn >= midIn) {
            f = (fCoerceIn - midIn) / (maxIn - midIn);
            f2 = maxOut - midOut;
        } else {
            f = (fCoerceIn - midIn) / (midIn - minIn);
            f2 = midOut - minOut;
        }
        return RangesKt.coerceIn(Math.round(midOut + (f2 * f)), 40, (int) maxOut);
    }
}
