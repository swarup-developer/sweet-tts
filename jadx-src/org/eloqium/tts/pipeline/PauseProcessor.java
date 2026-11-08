package org.eloqium.tts.pipeline;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: PauseProcessor.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J,\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\b\b\u0002\u0010\u0012\u001a\u00020\u00052\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lorg/eloqium/tts/pipeline/PauseProcessor;", "", "<init>", "()V", "PAUSE_KEEP", "", "PAUSE_END_ONLY", "PAUSE_ALL", "PHRASE_PREDICTION_ON", "", "PHRASE_PREDICTION_OFF", "MARKS", "AT_A_MARK", "Lkotlin/text/Regex;", "BRIEF_PAUSE", "END_PAUSE", "process", "text", "pauseMode", "phrasePrediction", "", "isLastChunk", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PauseProcessor {
    private static final String BRIEF_PAUSE = "`p1";
    private static final String END_PAUSE = "`p100";
    private static final String MARKS = "-,.:;?!–—";
    public static final int PAUSE_ALL = 2;
    public static final int PAUSE_END_ONLY = 1;
    public static final int PAUSE_KEEP = 0;
    private static final String PHRASE_PREDICTION_OFF = "`pp0 ";
    private static final String PHRASE_PREDICTION_ON = "`pp1 ";
    public static final PauseProcessor INSTANCE = new PauseProcessor();
    private static final Regex AT_A_MARK = new Regex("([A-Za-z0-9])([-,.:;?!–—])(\\2*)(?=\\s|$)");

    private PauseProcessor() {
    }

    public static /* synthetic */ String process$default(PauseProcessor pauseProcessor, String str, int i, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = true;
        }
        if ((i2 & 8) != 0) {
            z2 = true;
        }
        return pauseProcessor.process(str, i, z, z2);
    }

    public final String process(String text, int pauseMode, boolean phrasePrediction, boolean isLastChunk) {
        Intrinsics.checkNotNullParameter(text, "text");
        String str = text;
        if (str.length() == 0) {
            return text;
        }
        if (pauseMode == 2) {
            text = AT_A_MARK.replace(str, "$1 `p1$2$3");
        }
        if (isLastChunk && pauseMode != 0) {
            String string = StringsKt.trimEnd((CharSequence) text).toString();
            String str2 = string;
            if (str2.length() > 0 && !StringsKt.contains$default((CharSequence) MARKS, StringsKt.last(str2), false, 2, (Object) null)) {
                text = string + " `p100";
            }
        }
        return (phrasePrediction ? PHRASE_PREDICTION_ON : PHRASE_PREDICTION_OFF) + text;
    }
}
