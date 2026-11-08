package aio.tts;

import aio.tts.Dictionary;
import android.app.Activity;
import android.content.Context;
import android.widget.Toast;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ImportExport.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\r\u0010\u000f\u001a\u00020\u0010H\u0000¢\u0006\u0002\b\u0011J\u000e\u0010\u0012\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0013J\u000e\u0010\u0015\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0013J\u000e\u0010\u0016\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Laio/tts/ImportExport;", "", "<init>", "()V", "DICTIONARY_FILE_NAME", "", "SETTINGS_FILE_NAME", "onRequestPermissionsResult", "", "activity", "Landroid/app/Activity;", "requestCode", "", "grantResults", "", "folder", "Ljava/io/File;", "folder$app", "exportDictionary", "Landroid/content/Context;", "importDictionary", "exportSettings", "importSettings", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ImportExport {
    private static final String DICTIONARY_FILE_NAME = "Dictionary.json";
    public static final ImportExport INSTANCE = new ImportExport();
    private static final String SETTINGS_FILE_NAME = "Settings.json";

    public final void onRequestPermissionsResult(Activity activity, int requestCode, int[] grantResults) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
    }

    private ImportExport() {
    }

    public final File folder$app() {
        File file = new File(App.INSTANCE.getContext().getExternalFilesDir(null), "All In One TTS");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public final void exportDictionary(Context activity) throws JSONException {
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            JSONObject jSONObject = new JSONObject();
            for (Dictionary.Target target : Dictionary.INSTANCE.allTargets()) {
                JSONArray jSONArray = new JSONArray();
                for (Dictionary.Entry entry : Dictionary.INSTANCE.entriesFor(target.getKey())) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("find", entry.getFind());
                    jSONObject2.put("replace", entry.getReplace());
                    jSONObject2.put("caseSensitive", entry.getCaseSensitive());
                    jSONArray.put(jSONObject2);
                }
                jSONObject.put(target.getKey(), jSONArray);
            }
            File file = new File(folder$app(), DICTIONARY_FILE_NAME);
            String string = jSONObject.toString(2);
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            FilesKt.writeText$default(file, string, null, 2, null);
            Toast.makeText(activity, "Dictionary backed up to " + file.getAbsolutePath(), 1).show();
        } catch (Exception e) {
            Toast.makeText(activity, "Dictionary backup failed: " + e.getMessage(), 1).show();
        }
    }

    public final void importDictionary(Context activity) throws JSONException {
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            File file = new File(folder$app(), DICTIONARY_FILE_NAME);
            if (!file.exists()) {
                Toast.makeText(activity, "No Dictionary.json found in " + folder$app().getAbsolutePath(), 1).show();
                return;
            }
            JSONObject jSONObject = new JSONObject(FilesKt.readText$default(file, null, 1, null));
            Iterator<String> itKeys = jSONObject.keys();
            Intrinsics.checkNotNullExpressionValue(itKeys, "keys(...)");
            int size = 0;
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
                if (jSONArrayOptJSONArray != null) {
                    IntRange intRangeUntil = RangesKt.until(0, jSONArrayOptJSONArray.length());
                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRangeUntil, 10));
                    Iterator<Integer> it = intRangeUntil.iterator();
                    while (it.hasNext()) {
                        JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(((IntIterator) it).nextInt());
                        String string = jSONObject2.getString("find");
                        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                        String string2 = jSONObject2.getString("replace");
                        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                        arrayList.add(new Dictionary.Entry(string, string2, jSONObject2.optBoolean("caseSensitive", false)));
                    }
                    ArrayList arrayList2 = arrayList;
                    Dictionary dictionary = Dictionary.INSTANCE;
                    Intrinsics.checkNotNull(next);
                    dictionary.setEntriesFor(next, arrayList2);
                    size += arrayList2.size();
                }
            }
            Toast.makeText(activity, "Dictionary restored (" + size + " entries)", 1).show();
        } catch (Exception e) {
            Toast.makeText(activity, "Dictionary restore failed: " + e.getMessage(), 1).show();
        }
    }

    public final void exportSettings(Context activity) throws JSONException {
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, Object> entry : Prefs.INSTANCE.exportableEntries().entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (value != null) {
                    jSONObject.put(key, value);
                }
            }
            File file = new File(folder$app(), SETTINGS_FILE_NAME);
            String string = jSONObject.toString(2);
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            FilesKt.writeText$default(file, string, null, 2, null);
            Toast.makeText(activity, "Settings backed up to " + file.getAbsolutePath(), 1).show();
        } catch (Exception e) {
            Toast.makeText(activity, "Settings backup failed: " + e.getMessage(), 1).show();
        }
    }

    public final void importSettings(Context activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            File file = new File(folder$app(), SETTINGS_FILE_NAME);
            if (!file.exists()) {
                Toast.makeText(activity, "No Settings.json found in " + folder$app().getAbsolutePath(), 1).show();
                return;
            }
            JSONObject jSONObject = new JSONObject(FilesKt.readText$default(file, null, 1, null));
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObject.keys();
            Intrinsics.checkNotNullExpressionValue(itKeys, "keys(...)");
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.get(next));
            }
            Prefs.INSTANCE.importEntries(map);
            Toast.makeText(activity, "Settings restored (" + map.size() + " values). Reopen each settings screen to see them applied.", 1).show();
        } catch (Exception e) {
            Toast.makeText(activity, "Settings restore failed: " + e.getMessage(), 1).show();
        }
    }
}
