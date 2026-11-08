package org.eloqium.tts.pipeline;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OpenEVVEncoder.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lorg/eloqium/tts/pipeline/OpenEVVEncoder;", "", "<init>", "()V", "MAX_BYTE", "", "encode", "", "text", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OpenEVVEncoder {
    public static final OpenEVVEncoder INSTANCE = new OpenEVVEncoder();
    private static final int MAX_BYTE = 255;

    private OpenEVVEncoder() {
    }

    public final byte[] encode(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        byte[] bArr = new byte[text.length()];
        int length = text.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = text.charAt(i);
            bArr[i] = (1 > cCharAt || cCharAt >= 256) ? (byte) 32 : (byte) cCharAt;
        }
        return bArr;
    }
}
