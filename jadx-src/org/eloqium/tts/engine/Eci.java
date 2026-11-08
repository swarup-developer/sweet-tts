package org.eloqium.tts.engine;

import aio.tts.EloquenceHub;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: Eci.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u001c\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u0005J\u000e\u0010'\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u0005J\u000e\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u0005J\u0016\u00102\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010!\u001a\u00020\"¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0019\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*¢\u0006\n\n\u0002\u0010.\u001a\u0004\b,\u0010-¨\u00064"}, d2 = {"Lorg/eloqium/tts/engine/Eci;", "", "<init>", "()V", "PARAM_SYNTH_MODE", "", "PARAM_INPUT_TYPE", "PARAM_TEXT_MODE", "PARAM_DICTIONARY", "PARAM_SAMPLE_RATE", "PARAM_REAL_WORLD_UNITS", "PARAM_LANGUAGE_DIALECT", "PARAM_NUMBER_MODE", "PARAM_PHRASE_PREDICTION", "VOICE_GENDER", "VOICE_HEAD_SIZE", "VOICE_PITCH_BASELINE", "VOICE_PITCH_FLUCTUATION", "VOICE_ROUGHNESS", "VOICE_BREATHINESS", "VOICE_SPEED", "VOICE_VOLUME", "VOICE_CURRENT", "FIRST_PRESET", "LAST_PRESET", "SCRATCH_VOICE", "NUM_VOICE_PARAMS", "DICT_MAIN", "DICT_ROOT", "DICT_ABBREVIATION", "DEFAULT_SPEED", "SPEED_MAX", "PERCENT_MAX", "SAMPLE_RATES", "", "getSAMPLE_RATES", "()[I", "sampleRateHz", "indexOrHz", "sampleRateIndex", "hzOrIndex", "PRESET_NAMES", "", "", "getPRESET_NAMES", "()[Ljava/lang/String;", "[Ljava/lang/String;", "voiceRange", "Lkotlin/ranges/IntRange;", "param", "clampVoice", "value", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Eci {
    public static final int DEFAULT_SPEED = 50;
    public static final int DICT_ABBREVIATION = 2;
    public static final int DICT_MAIN = 0;
    public static final int DICT_ROOT = 1;
    public static final int FIRST_PRESET = 1;
    public static final int LAST_PRESET = 8;
    public static final int NUM_VOICE_PARAMS = 8;
    public static final int PARAM_DICTIONARY = 3;
    public static final int PARAM_INPUT_TYPE = 1;
    public static final int PARAM_LANGUAGE_DIALECT = 9;
    public static final int PARAM_NUMBER_MODE = 10;
    public static final int PARAM_PHRASE_PREDICTION = 12;
    public static final int PARAM_REAL_WORLD_UNITS = 8;
    public static final int PARAM_SAMPLE_RATE = 5;
    public static final int PARAM_SYNTH_MODE = 0;
    public static final int PARAM_TEXT_MODE = 2;
    public static final int PERCENT_MAX = 100;
    public static final int SCRATCH_VOICE = 9;
    public static final int SPEED_MAX = 250;
    public static final int VOICE_BREATHINESS = 5;
    public static final int VOICE_CURRENT = 0;
    public static final int VOICE_GENDER = 0;
    public static final int VOICE_HEAD_SIZE = 1;
    public static final int VOICE_PITCH_BASELINE = 2;
    public static final int VOICE_PITCH_FLUCTUATION = 3;
    public static final int VOICE_ROUGHNESS = 4;
    public static final int VOICE_SPEED = 6;
    public static final int VOICE_VOLUME = 7;
    public static final Eci INSTANCE = new Eci();
    private static final int[] SAMPLE_RATES = {8000, 11025, EloquenceHub.SAMPLE_RATE_HZ, 16000, 32000, 44100, 48000};
    private static final String[] PRESET_NAMES = {"Reed", "Shelley", "Bobby", "Rocko", "Glen", "Sandy", "Grandma", "Grandpa"};

    private Eci() {
    }

    public final int[] getSAMPLE_RATES() {
        return SAMPLE_RATES;
    }

    public final int sampleRateHz(int indexOrHz) {
        int[] iArr = SAMPLE_RATES;
        return ArraysKt.contains(iArr, indexOrHz) ? indexOrHz : (indexOrHz < 0 || indexOrHz >= iArr.length) ? iArr[1] : iArr[indexOrHz];
    }

    public final int sampleRateIndex(int hzOrIndex) {
        if (hzOrIndex >= 0 && hzOrIndex < SAMPLE_RATES.length) {
            return hzOrIndex;
        }
        int iIndexOf = ArraysKt.indexOf(SAMPLE_RATES, hzOrIndex);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        return 1;
    }

    public final String[] getPRESET_NAMES() {
        return PRESET_NAMES;
    }

    public final IntRange voiceRange(int param) {
        if (param == 0) {
            return new IntRange(0, 1);
        }
        if (param == 6) {
            return new IntRange(0, 250);
        }
        return new IntRange(0, 100);
    }

    public final int clampVoice(int param, int value) {
        IntRange intRangeVoiceRange = voiceRange(param);
        return RangesKt.coerceIn(value, intRangeVoiceRange.getFirst(), intRangeVoiceRange.getLast());
    }
}
