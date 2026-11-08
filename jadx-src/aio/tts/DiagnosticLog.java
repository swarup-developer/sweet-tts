package aio.tts;

import java.io.File;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Logging.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u0019\u001a\u00020\u000eJ\u0006\u0010\u001a\u001a\u00020\u0007J\u0006\u0010\u001b\u001a\u00020\u0005J\u0006\u0010\u001c\u001a\u00020\nJ\u0016\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0005J\u0010\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR$\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Laio/tts/DiagnosticLog;", "", "<init>", "()V", "FILE_NAME", "", "MAX_BYTES", "", "TRIM_TO_BYTES", "file", "Ljava/io/File;", "getFile", "()Ljava/io/File;", "value", "", "active", "getActive", "()Z", "setActive", "(Z)V", "writer", "Laio/tts/AsyncLogWriter;", "clear", "", "flushNow", "hasContent", "sizeBytes", "readText", "fileForSharing", "log", "tag", "message", "line", "text", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DiagnosticLog {
    private static final String FILE_NAME = "aiotts_diagnostic_log.txt";
    public static final DiagnosticLog INSTANCE = new DiagnosticLog();
    private static final long MAX_BYTES = 25000000;
    private static final long TRIM_TO_BYTES = 20000000;
    private static final AsyncLogWriter writer = new AsyncLogWriter("diagnostic", MAX_BYTES, TRIM_TO_BYTES, false, new Function0() { // from class: aio.tts.DiagnosticLog$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DiagnosticLog.INSTANCE.getFile();
        }
    }, new Function0() { // from class: aio.tts.DiagnosticLog$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LoggingKt.logHeader();
        }
    });

    private DiagnosticLog() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File getFile() {
        return new File(ImportExport.INSTANCE.folder$app(), FILE_NAME);
    }

    public final boolean getActive() {
        return Prefs.INSTANCE.diagnosticLogEnabled();
    }

    public final void setActive(boolean z) {
        boolean zDiagnosticLogEnabled = Prefs.INSTANCE.diagnosticLogEnabled();
        Prefs.INSTANCE.setDiagnosticLogEnabled(z);
        if (z && !zDiagnosticLogEnabled) {
            line("=== Diagnostic log turned ON (" + LoggingKt.sessionHeader() + ") ===");
            Iterator<T> it = LoggingKt.deviceReportLines().iterator();
            while (it.hasNext()) {
                INSTANCE.line("    " + ((String) it.next()));
            }
        }
        if (z || !zDiagnosticLogEnabled) {
            return;
        }
        line("=== Diagnostic log turned OFF ===");
    }

    public final void clear() {
        writer.clear();
    }

    public final void flushNow() {
        writer.flush();
    }

    public final boolean hasContent() {
        return getFile().exists() && getFile().length() > 0;
    }

    public final long sizeBytes() {
        if (getFile().exists()) {
            return getFile().length();
        }
        return 0L;
    }

    public final String readText() {
        writer.flush();
        return getFile().exists() ? FilesKt.readText$default(getFile(), null, 1, null) : "";
    }

    public final File fileForSharing() {
        writer.flush();
        return getFile();
    }

    public final void log(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        if (getActive()) {
            line("[" + tag + "] " + message);
        }
    }

    private final void line(String text) {
        writer.add(text);
    }
}
