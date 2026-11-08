package aio.tts;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import org.eloqium.tts.pipeline.Chunker;

/* compiled from: EloquencePieces.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\tJ\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\f\u001a\u00020\tH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Laio/tts/EloquencePieces;", "", "<init>", "()V", "SHORT", "", "MIN", "split", "", "", "text", "clauses", "s", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EloquencePieces {
    public static final EloquencePieces INSTANCE = new EloquencePieces();
    public static final int MIN = 12;
    public static final int SHORT = 40;

    private EloquencePieces() {
    }

    public final List<String> split(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        ArrayList arrayList = new ArrayList();
        for (String str : Chunker.chunk$default(Chunker.INSTANCE, text, 0, 2, null)) {
            if (str.length() <= 40) {
                arrayList.add(str);
            } else {
                arrayList.addAll(clauses(str));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!StringsKt.isBlank((String) obj)) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayListListOf = arrayList2;
        if (arrayListListOf.isEmpty()) {
            arrayListListOf = CollectionsKt.listOf(text);
        }
        return arrayListListOf;
    }

    private final List<String> clauses(String s) {
        int i;
        int i2;
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        loop0: while (true) {
            i = i3;
            while (i3 < s.length()) {
                char cCharAt = s.charAt(i3);
                if ((cCharAt == ',' || cCharAt == ';' || cCharAt == ':') && (i2 = i3 + 1) < s.length() && CharsKt.isWhitespace(s.charAt(i2)) && i2 - i >= 12) {
                    i3 = i2;
                    while (i3 < s.length() && CharsKt.isWhitespace(s.charAt(i3))) {
                        i3++;
                    }
                    if (s.length() - i3 >= 12) {
                        break;
                    }
                } else {
                    i3++;
                }
            }
            String strSubstring = s.substring(i, i3);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            arrayList.add(strSubstring);
        }
        if (i < s.length()) {
            String strSubstring2 = s.substring(i);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
            arrayList.add(strSubstring2);
        }
        return arrayList;
    }
}
