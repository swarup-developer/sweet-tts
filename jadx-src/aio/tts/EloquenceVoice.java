package aio.tts;

import aio.tts.EloquenceVoice;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import org.eloqium.tts.engine.EloqiumEngine;

/* compiled from: EloquenceVoice.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001!B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0011\u001a\u00020\u0007J\u000e\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0007J\u0016\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007J\u001e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007J\u000e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0007J\u001a\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00192\u0006\u0010\u0011\u001a\u00020\u0007J\u000e\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001fJ\u0018\u0010 \u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0002R#\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u000e\u0010\u000e\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u001c\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Laio/tts/EloquenceVoice;", "", "<init>", "()V", "VOICES", "", "Lkotlin/Pair;", "", "", "getVOICES", "()Ljava/util/List;", "SLIDERS", "Laio/tts/EloquenceVoice$Slider;", "getSLIDERS", "MAX_STEP", "NATURAL_DEFAULT", "UNIT", "preset", "name", "step", "param", "setStep", "", "reset", "shape", "", "builtIn", "noteBuiltIn", "e", "Lorg/eloqium/tts/engine/EloqiumEngine;", "hasBuiltIn", "", "builtInStep", "Slider", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EloquenceVoice {
    public static final int MAX_STEP = 20;
    public static final int NATURAL_DEFAULT = 10;
    private static final int UNIT = 5;
    private static volatile Map<String, Integer> builtIn;
    public static final EloquenceVoice INSTANCE = new EloquenceVoice();
    private static final List<Pair<Integer, String>> VOICES = CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to(0, "Reed"), TuplesKt.to(1, "Shelley"), TuplesKt.to(2, "Bobby"), TuplesKt.to(3, "Rocko"), TuplesKt.to(4, "Glen"), TuplesKt.to(5, "Sandy")});
    private static final List<Slider> SLIDERS = CollectionsKt.listOf((Object[]) new Slider[]{new Slider(3, "Natural voice"), new Slider(1, "Deep voice"), new Slider(4, "Rough voice"), new Slider(5, "Breathy voice")});

    private EloquenceVoice() {
    }

    public final List<Pair<Integer, String>> getVOICES() {
        return VOICES;
    }

    /* compiled from: EloquenceVoice.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Laio/tts/EloquenceVoice$Slider;", "", "param", "", "title", "", "<init>", "(ILjava/lang/String;)V", "getParam", "()I", "getTitle", "()Ljava/lang/String;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Slider {
        private final int param;
        private final String title;

        public Slider(int i, String title) {
            Intrinsics.checkNotNullParameter(title, "title");
            this.param = i;
            this.title = title;
        }

        public final int getParam() {
            return this.param;
        }

        public final String getTitle() {
            return this.title;
        }
    }

    public final List<Slider> getSLIDERS() {
        return SLIDERS;
    }

    public final int preset() {
        Integer numValueOf = Integer.valueOf(Prefs.INSTANCE.eloquencePreset());
        int iIntValue = numValueOf.intValue();
        List<Pair<Integer, String>> list = VOICES;
        if ((list instanceof Collection) && list.isEmpty()) {
            numValueOf = null;
        } else {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((Number) ((Pair) it.next()).getFirst()).intValue() == iIntValue) {
                    break;
                }
            }
            numValueOf = null;
        }
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return 0;
    }

    public final String name(int preset) {
        Object next;
        String str;
        Iterator<T> it = VOICES.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((Number) ((Pair) next).getFirst()).intValue() == preset) {
                break;
            }
        }
        Pair pair = (Pair) next;
        return (pair == null || (str = (String) pair.getSecond()) == null) ? "Reed" : str;
    }

    public final int step(int preset, int param) {
        Integer numEloquenceStep = Prefs.INSTANCE.eloquenceStep(preset, param);
        if (numEloquenceStep != null) {
            return numEloquenceStep.intValue();
        }
        if (param == 3) {
            return 10;
        }
        return builtInStep(preset, param);
    }

    public final void setStep(int preset, int param, int step) {
        Prefs.INSTANCE.setEloquenceStep(preset, param, RangesKt.coerceIn(step, 0, 20));
    }

    public final void reset(int preset) {
        Prefs.INSTANCE.clearEloquenceSteps(preset);
    }

    public final Map<Integer, Integer> shape(int preset) {
        Integer numEloquenceStep;
        HashMap map = new HashMap();
        Integer numEloquenceStep2 = Prefs.INSTANCE.eloquenceStep(preset, 3);
        map.put(3, Integer.valueOf((numEloquenceStep2 != null ? numEloquenceStep2.intValue() : 10) * 5));
        for (Slider slider : SLIDERS) {
            if (slider.getParam() != 3 && (numEloquenceStep = Prefs.INSTANCE.eloquenceStep(preset, slider.getParam())) != null) {
                map.put(Integer.valueOf(slider.getParam()), Integer.valueOf(RangesKt.coerceIn(numEloquenceStep.intValue() * 5, 0, 100)));
            }
        }
        return map;
    }

    public final void noteBuiltIn(EloqiumEngine e) {
        Intrinsics.checkNotNullParameter(e, "e");
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Pair<Integer, String>> it = VOICES.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().component1().intValue();
            for (Slider slider : SLIDERS) {
                linkedHashMap.put(iIntValue + ":" + slider.getParam(), Integer.valueOf(e.presetParam(iIntValue, slider.getParam())));
            }
        }
        builtIn = linkedHashMap;
        Set setEntrySet = linkedHashMap.entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet, "<get-entries>(...)");
        String strJoinToString$default = CollectionsKt.joinToString$default(setEntrySet, ",", null, null, 0, null, new Function1() { // from class: aio.tts.EloquenceVoice$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return EloquenceVoice.noteBuiltIn$lambda$4((Map.Entry) obj);
            }
        }, 30, null);
        if (!Intrinsics.areEqual(Prefs.INSTANCE.eloquenceBuiltIn(), strJoinToString$default)) {
            Prefs.INSTANCE.setEloquenceBuiltIn(strJoinToString$default);
        }
        DiagnosticLog.INSTANCE.log("Eloquence", "built-in values of Reed (engine 0-100): " + CollectionsKt.joinToString$default(SLIDERS, " ", null, null, 0, null, new Function1() { // from class: aio.tts.EloquenceVoice$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return EloquenceVoice.noteBuiltIn$lambda$5(linkedHashMap, (EloquenceVoice.Slider) obj);
            }
        }, 30, null));
    }

    static final CharSequence noteBuiltIn$lambda$4(Map.Entry it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getKey() + "=" + it.getValue();
    }

    static final CharSequence noteBuiltIn$lambda$5(LinkedHashMap linkedHashMap, Slider it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getTitle() + "=" + linkedHashMap.get("0:" + it.getParam());
    }

    public final boolean hasBuiltIn() {
        return (builtIn == null && Prefs.INSTANCE.eloquenceBuiltIn() == null) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int builtInStep(int r11, int r12) {
        /*
            r10 = this;
            java.util.Map<java.lang.String, java.lang.Integer> r10 = aio.tts.EloquenceVoice.builtIn
            r0 = 0
            if (r10 != 0) goto L84
            aio.tts.Prefs r10 = aio.tts.Prefs.INSTANCE
            java.lang.String r10 = r10.eloquenceBuiltIn()
            r1 = 0
            if (r10 == 0) goto L83
            r2 = r10
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2
            r10 = 1
            char[] r3 = new char[r10]
            r10 = 44
            r3[r0] = r10
            r6 = 6
            r7 = 0
            r4 = 0
            r5 = 0
            java.util.List r10 = kotlin.text.StringsKt.split$default(r2, r3, r4, r5, r6, r7)
            if (r10 == 0) goto L83
            java.lang.Iterable r10 = (java.lang.Iterable) r10
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Collection r2 = (java.util.Collection) r2
            java.util.Iterator r10 = r10.iterator()
        L2f:
            boolean r3 = r10.hasNext()
            if (r3 == 0) goto L76
            java.lang.Object r3 = r10.next()
            java.lang.String r3 = (java.lang.String) r3
            r4 = r3
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4
            r8 = 6
            r9 = 0
            r5 = 61
            r6 = 0
            r7 = 0
            int r4 = kotlin.text.StringsKt.indexOf$default(r4, r5, r6, r7, r8, r9)
            if (r4 > 0) goto L4c
        L4a:
            r3 = r1
            goto L70
        L4c:
            java.lang.String r5 = r3.substring(r0, r4)
            java.lang.String r6 = "substring(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            int r4 = r4 + 1
            java.lang.String r3 = r3.substring(r4)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r6)
            java.lang.Integer r3 = kotlin.text.StringsKt.toIntOrNull(r3)
            if (r3 == 0) goto L4a
            int r3 = r3.intValue()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            kotlin.Pair r3 = kotlin.TuplesKt.to(r5, r3)
        L70:
            if (r3 == 0) goto L2f
            r2.add(r3)
            goto L2f
        L76:
            java.util.List r2 = (java.util.List) r2
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.Map r10 = kotlin.collections.MapsKt.toMap(r2)
            if (r10 == 0) goto L83
            aio.tts.EloquenceVoice.builtIn = r10
            goto L84
        L83:
            r10 = r1
        L84:
            if (r10 == 0) goto Lb4
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r11 = r1.append(r11)
            java.lang.String r1 = ":"
            java.lang.StringBuilder r11 = r11.append(r1)
            java.lang.StringBuilder r11 = r11.append(r12)
            java.lang.String r11 = r11.toString()
            java.lang.Object r10 = r10.get(r11)
            java.lang.Integer r10 = (java.lang.Integer) r10
            if (r10 == 0) goto Lb4
            int r10 = r10.intValue()
            int r10 = r10 + 2
            int r10 = r10 / 5
            r11 = 20
            int r10 = kotlin.ranges.RangesKt.coerceIn(r10, r0, r11)
            return r10
        Lb4:
            r10 = 10
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.EloquenceVoice.builtInStep(int, int):int");
    }
}
