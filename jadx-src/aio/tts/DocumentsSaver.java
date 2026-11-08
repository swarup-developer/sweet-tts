package aio.tts;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DocumentsSaver.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Laio/tts/DocumentsSaver;", "", "<init>", "()V", "FOLDER", "", "saveCopy", "context", "Landroid/content/Context;", "source", "Ljava/io/File;", "displayName", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DocumentsSaver {
    private static final String FOLDER = "Sweet TTS";
    public static final DocumentsSaver INSTANCE = new DocumentsSaver();

    private DocumentsSaver() {
    }

    public final String saveCopy(Context context, File source, String displayName) {
        Uri uriInsert;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        try {
            if (source.exists() && source.length() != 0) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_display_name", displayName);
                contentValues.put("mime_type", "text/plain");
                contentValues.put("relative_path", Environment.DIRECTORY_DOCUMENTS + "/Sweet TTS");
                ContentResolver contentResolver = context.getContentResolver();
                uriInsert = contentResolver.insert(MediaStore.Files.getContentUri("external"), contentValues);
                if (uriInsert == null) {
                    return null;
                }
                try {
                    OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uriInsert);
                    if (outputStreamOpenOutputStream != null) {
                        FileInputStream fileInputStream = outputStreamOpenOutputStream;
                        try {
                            OutputStream outputStream = fileInputStream;
                            fileInputStream = new FileInputStream(source);
                            try {
                                ByteStreamsKt.copyTo$default(fileInputStream, outputStream, 0, 2, null);
                                CloseableKt.closeFinally(fileInputStream, null);
                                CloseableKt.closeFinally(fileInputStream, null);
                                return "Documents/Sweet TTS/" + displayName;
                            } finally {
                            }
                        } finally {
                        }
                    } else {
                        try {
                            contentResolver.delete(uriInsert, null, null);
                        } catch (Throwable unused) {
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    Log.e("AllInOneTTS", "DocumentsSaver.saveCopy failed", th);
                    if (uriInsert != null) {
                        try {
                            Integer.valueOf(context.getContentResolver().delete(uriInsert, null, null));
                        } catch (Throwable unused2) {
                            Unit unit = Unit.INSTANCE;
                        }
                    }
                    return null;
                }
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            uriInsert = null;
        }
    }
}
