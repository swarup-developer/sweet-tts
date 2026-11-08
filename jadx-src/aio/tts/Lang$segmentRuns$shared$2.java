package aio.tts;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Lang.kt */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
final /* synthetic */ class Lang$segmentRuns$shared$2 extends FunctionReferenceImpl implements Function1<String, Boolean> {
    Lang$segmentRuns$shared$2(Object obj) {
        super(1, obj, Lang.class, "languageOn", "languageOn(Ljava/lang/String;)Z", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(String p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return Boolean.valueOf(((Lang) this.receiver).languageOn(p0));
    }
}
