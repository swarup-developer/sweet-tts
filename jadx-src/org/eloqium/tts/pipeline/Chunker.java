package org.eloqium.tts.pipeline;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;

/* compiled from: Chunker.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007J\u001e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\u000e\u001a\u00020\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u0005J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\u000e\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lorg/eloqium/tts/pipeline/Chunker;", "", "<init>", "()V", "PIECE_CAP", "", "CLOSERS", "", "ENDERS", "endsSentence", "", "word", "chunk", "", "text", "cap", "runs", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Chunker {
    private static final String CLOSERS = "\"')]}»”’";
    private static final String ENDERS = "?!…";
    public static final Chunker INSTANCE = new Chunker();
    public static final int PIECE_CAP = 500;

    private Chunker() {
    }

    public final boolean endsSentence(String word) {
        String strSubSequence;
        Intrinsics.checkNotNullParameter(word, "word");
        if (StringsKt.startsWith$default(word, "`[", false, 2, (Object) null) && StringsKt.endsWith$default(word, "]", false, 2, (Object) null)) {
            return false;
        }
        String str = word;
        int length = str.length() - 1;
        if (length >= 0) {
            while (true) {
                int i = length - 1;
                if (!StringsKt.contains$default((CharSequence) CLOSERS, str.charAt(length), false, 2, (Object) null)) {
                    strSubSequence = str.subSequence(0, length + 1);
                    break;
                }
                if (i < 0) {
                    break;
                }
                length = i;
            }
        }
        String string = strSubSequence.toString();
        String str2 = string;
        if (str2.length() == 0) {
            return false;
        }
        if (StringsKt.contains$default((CharSequence) ENDERS, StringsKt.last(str2), false, 2, (Object) null)) {
            return true;
        }
        if (!StringsKt.endsWith$default((CharSequence) str2, '.', false, 2, (Object) null) || string.length() < 2 || Character.isDigit(string.charAt(string.length() - 2))) {
            return false;
        }
        String strDropLast = StringsKt.dropLast(string, 1);
        String str3 = strDropLast;
        if (StringsKt.contains$default((CharSequence) str3, '.', false, 2, (Object) null)) {
            return false;
        }
        return strDropLast.length() > 3 || !Character.isUpperCase(StringsKt.first(str3));
    }

    public static /* synthetic */ List chunk$default(Chunker chunker, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = PIECE_CAP;
        }
        return chunker.chunk(str, i);
    }

    public final List<String> chunk(String text, int cap) {
        Intrinsics.checkNotNullParameter(text, "text");
        String str = text;
        if (str.length() == 0) {
            return CollectionsKt.emptyList();
        }
        if (text.length() <= cap) {
            for (int i = 0; i < str.length(); i++) {
                if (!CharsKt.isWhitespace(str.charAt(i))) {
                }
            }
            return CollectionsKt.listOf(text);
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int length = 0;
        boolean zEndsSentence = false;
        for (String str2 : runs(text)) {
            sb.append(str2);
            length += str2.length();
            if (StringsKt.isBlank(str2)) {
                if (zEndsSentence || length >= cap) {
                    String string = sb.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    if (!StringsKt.isBlank(string)) {
                        arrayList.add(string);
                    }
                    sb.setLength(0);
                    length = 0;
                }
                zEndsSentence = false;
            } else {
                zEndsSentence = endsSentence(str2);
            }
        }
        StringBuilder sb2 = sb;
        if (!StringsKt.isBlank(sb2)) {
            arrayList.add(sb.toString());
        } else if (sb2.length() > 0 && !arrayList.isEmpty()) {
            ArrayList arrayList2 = arrayList;
            arrayList.set(CollectionsKt.getLastIndex(arrayList2), new StringBuilder().append(CollectionsKt.last((List) arrayList2)).append((Object) sb).toString());
        }
        return arrayList.isEmpty() ? CollectionsKt.listOf(text) : arrayList;
    }

    private final List<String> runs(String text) {
        int i;
        int i2;
        int iIndexOf$default;
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        while (i3 < text.length()) {
            if (text.charAt(i3) == '`' && (i2 = i3 + 1) < text.length() && text.charAt(i2) == '[' && (iIndexOf$default = StringsKt.indexOf$default((CharSequence) text, ']', i3 + 2, false, 4, (Object) null)) != -1) {
                String strSubstring = text.substring(i3, iIndexOf$default);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                if (!StringsKt.contains$default((CharSequence) strSubstring, '\n', false, 2, (Object) null)) {
                    int i4 = iIndexOf$default + 1;
                    String strSubstring2 = text.substring(i3, i4);
                    Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                    arrayList.add(strSubstring2);
                    i3 = i4;
                }
            }
            boolean zIsWhitespace = CharsKt.isWhitespace(text.charAt(i3));
            int i5 = i3;
            while (i5 < text.length() && CharsKt.isWhitespace(text.charAt(i5)) == zIsWhitespace && (zIsWhitespace || text.charAt(i5) != '`' || (i = i5 + 1) >= text.length() || text.charAt(i) != '[')) {
                i5++;
            }
            String strSubstring3 = text.substring(i3, i5);
            Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
            arrayList.add(strSubstring3);
            i3 = i5;
        }
        return arrayList;
    }
}
