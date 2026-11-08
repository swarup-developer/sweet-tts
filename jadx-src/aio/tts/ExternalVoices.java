package aio.tts;

import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.nuance.android.vocalizer.VocalizerExternalDataProvider;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;

/* compiled from: ExternalVoices.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0014\u001a\u00020\bJ\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\u0016J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001d\u001a\u00020\u0005J\u0010\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0005H\u0002J\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00050\u00162\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bJ&\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\b2\u0006\u0010%\u001a\u00020&2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00050(H\u0002J\b\u0010)\u001a\u00020\u0005H\u0016J\u0012\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010,\u001a\u00020\u0005H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R*\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0007j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b`\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R \u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006-"}, d2 = {"Laio/tts/ExternalVoices;", "Lcom/nuance/android/vocalizer/VocalizerExternalDataProvider;", "<init>", "()V", "TAG", "", "dataFiles", "Ljava/util/HashMap;", "Ljava/io/File;", "Lkotlin/collections/HashMap;", "NEVER", "", "BROKER", "Lkotlin/text/Regex;", "PACKAGE", "lastScan", "getLastScan", "()Ljava/lang/String;", "setLastScan", "(Ljava/lang/String;)V", "appFolder", "folders", "", "extraNames", "getExtraNames", "()Ljava/util/List;", "setExtraNames", "(Ljava/util/List;)V", "brokerOf", "header", "dataKey", "packageName", "scan", "builtIn", "walk", "", "dir", "depth", "", "headers", "", "getHeaders", "openDataFile", "Landroid/content/res/AssetFileDescriptor;", "name", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ExternalVoices implements VocalizerExternalDataProvider {
    private static final String TAG = "AllInOneTTS";
    public static final ExternalVoices INSTANCE = new ExternalVoices();
    private static final HashMap<String, File> dataFiles = new HashMap<>();
    private static final Set<String> NEVER = SetsKt.setOf((Object[]) new String[]{"clm.dat", "lid.dat", "sysdct.dat", "synth_med_fxd_bet3f22.dat"});
    private static final Regex BROKER = new Regex("<BROKERSTRING>(.*?)</BROKERSTRING>", RegexOption.DOT_MATCHES_ALL);
    private static final Regex PACKAGE = new Regex("<datapackagename>(.*?)</datapackagename>", RegexOption.DOT_MATCHES_ALL);
    private static volatile String lastScan = "not scanned yet";
    private static volatile List<String> extraNames = CollectionsKt.emptyList();

    private ExternalVoices() {
    }

    public final String getLastScan() {
        return lastScan;
    }

    public final void setLastScan(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        lastScan = str;
    }

    public final File appFolder() {
        File externalFilesDir = App.INSTANCE.getContext().getExternalFilesDir(null);
        if (externalFilesDir == null) {
            externalFilesDir = App.INSTANCE.getContext().getFilesDir();
        }
        File file = new File(externalFilesDir, "Voices");
        file.mkdirs();
        return file;
    }

    public final List<File> folders() {
        ArrayList arrayList = new ArrayList();
        try {
            if (VoiceFolder.INSTANCE.hasAccess() && VoiceFolder.INSTANCE.exists()) {
                arrayList.add(VoiceFolder.INSTANCE.dir());
            }
        } catch (Exception unused) {
        }
        arrayList.add(appFolder());
        return arrayList;
    }

    public final List<String> getExtraNames() {
        return extraNames;
    }

    public final void setExtraNames(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        extraNames = list;
    }

    public final String brokerOf(String header) {
        List<String> groupValues;
        String str;
        Intrinsics.checkNotNullParameter(header, "header");
        MatchResult matchResultFind$default = Regex.find$default(BROKER, header, 0, 2, null);
        if (matchResultFind$default == null || (groupValues = matchResultFind$default.getGroupValues()) == null || (str = groupValues.get(1)) == null) {
            return null;
        }
        return StringsKt.trim((CharSequence) str).toString();
    }

    private final String dataKey(String packageName) {
        String string = StringsKt.trim((CharSequence) packageName).toString();
        Locale ROOT = Locale.ROOT;
        Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
        String lowerCase = string.toLowerCase(ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String strReplace$default = StringsKt.replace$default(lowerCase, '/', '_', false, 4, (Object) null);
        if (StringsKt.endsWith$default(strReplace$default, ".xmf", false, 2, (Object) null) || StringsKt.endsWith$default(strReplace$default, ".dat", false, 2, (Object) null)) {
            strReplace$default = StringsKt.dropLast(strReplace$default, 4);
        }
        return strReplace$default + ".dat";
    }

    public final List<String> scan(Set<String> builtIn) {
        int i;
        String strSubstringBefore$default;
        String strSubstringAfter$default;
        List<String> groupValues;
        String str;
        Intrinsics.checkNotNullParameter(builtIn, "builtIn");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        HashMap<String, File> map = dataFiles;
        synchronized (map) {
            map.clear();
            ArrayList arrayList3 = new ArrayList();
            Iterator<File> it = INSTANCE.folders().iterator();
            while (it.hasNext()) {
                INSTANCE.walk(it.next(), 0, arrayList3);
            }
            HashSet hashSet = new HashSet();
            Iterator it2 = arrayList3.iterator();
            Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
            i = 0;
            while (it2.hasNext()) {
                Object next = it2.next();
                Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                String str2 = (String) next;
                ExternalVoices externalVoices = INSTANCE;
                String strBrokerOf = externalVoices.brokerOf(str2);
                if (strBrokerOf == null || hashSet.add(strBrokerOf)) {
                    if (strBrokerOf != null && builtIn.contains(strBrokerOf)) {
                        i++;
                        MatchResult matchResultFind$default = Regex.find$default(PACKAGE, str2, 0, 2, null);
                        if (matchResultFind$default != null && (groupValues = matchResultFind$default.getGroupValues()) != null && (str = groupValues.get(1)) != null) {
                            dataFiles.remove(externalVoices.dataKey(str));
                        }
                    } else {
                        arrayList.add(str2);
                        if (strBrokerOf == null || (strSubstringAfter$default = StringsKt.substringAfter$default(strBrokerOf, "pipeline/", (String) null, 2, (Object) null)) == null || (strSubstringBefore$default = StringsKt.substringBefore$default(strSubstringAfter$default, "/text", (String) null, 2, (Object) null)) == null) {
                            strSubstringBefore$default = "?";
                        }
                        arrayList2.add(strSubstringBefore$default);
                    }
                }
            }
            Unit unit = Unit.INSTANCE;
        }
        ArrayList<String> arrayList4 = arrayList2;
        ArrayList arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList4, 10));
        for (String string : arrayList4) {
            String str3 = (String) CollectionsKt.getOrNull(StringsKt.split$default((CharSequence) string, new char[]{'/'}, false, 0, 6, (Object) null), 1);
            if (str3 != null) {
                string = str3;
            }
            if (string.length() > 0) {
                StringBuilder sb = new StringBuilder();
                String strValueOf = String.valueOf(string.charAt(0));
                Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
                String upperCase = strValueOf.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                StringBuilder sbAppend = sb.append((Object) upperCase);
                String strSubstring = string.substring(1);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                string = sbAppend.append(strSubstring).toString();
            }
            arrayList5.add(string);
        }
        extraNames = arrayList5;
        lastScan = "folders " + folders() + ": " + arrayList.size() + " extra voice header(s) " + arrayList2 + ", " + i + " skipped as already built in, " + dataFiles.size() + " data file(s)";
        return arrayList;
    }

    private final void walk(File dir, int depth, List<String> headers) {
        File[] fileArrListFiles;
        try {
            fileArrListFiles = dir.listFiles();
        } catch (Exception unused) {
            fileArrListFiles = null;
        }
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : ArraysKt.sortedWith(fileArrListFiles, new Comparator() { // from class: aio.tts.ExternalVoices$walk$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(((File) t).getName(), ((File) t2).getName());
            }
        })) {
            try {
                if (!file.isDirectory()) {
                    String name = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    Locale ROOT = Locale.ROOT;
                    Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
                    String lowerCase = name.toLowerCase(ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    if (StringsKt.endsWith$default(lowerCase, ".hdr", false, 2, (Object) null)) {
                        Intrinsics.checkNotNull(file);
                        headers.add(FilesKt.readText(file, Charsets.UTF_8));
                    } else if (StringsKt.endsWith$default(lowerCase, ".dat", false, 2, (Object) null) && !NEVER.contains(lowerCase)) {
                        dataFiles.put(lowerCase, file);
                    }
                } else if (depth < 2) {
                    Intrinsics.checkNotNull(file);
                    walk(file, depth + 1, headers);
                }
            } catch (Exception e) {
                Log.e(TAG, "ExternalVoices: could not read " + file.getName(), e);
            }
        }
    }

    @Override // com.nuance.android.vocalizer.VocalizerExternalDataProvider
    public String getHeaders() {
        return CollectionsKt.joinToString$default(scan(SetsKt.emptySet()), "", null, null, 0, null, null, 62, null);
    }

    @Override // com.nuance.android.vocalizer.VocalizerExternalDataProvider
    public AssetFileDescriptor openDataFile(String name) throws FileNotFoundException {
        File file;
        Intrinsics.checkNotNullParameter(name, "name");
        HashMap<String, File> map = dataFiles;
        synchronized (map) {
            file = map.get(INSTANCE.dataKey(name));
        }
        if (file == null) {
            return null;
        }
        try {
            ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(file, 268435456);
            Log.d(TAG, "ExternalVoices: opened " + file.getName() + " for \"" + name + "\" (" + file.length() + " bytes)");
            return new AssetFileDescriptor(parcelFileDescriptorOpen, 0L, file.length());
        } catch (Exception e) {
            Log.e(TAG, "ExternalVoices: data file open failed for " + file.getName(), e);
            return null;
        }
    }
}
