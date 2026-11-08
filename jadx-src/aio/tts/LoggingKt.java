package aio.tts;

import android.app.ActivityManager;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.util.DisplayMetrics;
import androidx.core.os.EnvironmentCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.DebugKt;

/* compiled from: Logging.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u000e\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0002\u001a\b\u0010\u0003\u001a\u00020\u0002H\u0002\u001a\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0000\u001a\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0000\u001a\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0002\u001a\b\u0010\u000b\u001a\u00020\u0002H\u0000\"\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"logHeader", "", "", "sessionHeader", "deviceReportLines", "KNOWN_READERS", "readerLabel", "pkg", "screenReaderReport", "ctx", "Landroid/content/Context;", "compactEnv", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LoggingKt {
    private static final List<String> KNOWN_READERS = CollectionsKt.listOf((Object[]) new String[]{"com.google.android.marvin.talkback", "com.samsung.android.accessibility.talkback", "com.nirenr.talkman", "com.nirenr.talkman.geek"});

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<String> logHeader() {
        List listListOf = CollectionsKt.listOf("=== log header (kept after trimming) ===");
        List<String> listDeviceReportLines = deviceReportLines();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listDeviceReportLines, 10));
        Iterator<T> it = listDeviceReportLines.iterator();
        while (it.hasNext()) {
            arrayList.add("    " + ((String) it.next()));
        }
        return CollectionsKt.plus((Collection) listListOf, (Iterable) arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String sessionHeader() {
        String str;
        try {
            str = App.INSTANCE.getContext().getPackageManager().getPackageInfo(App.INSTANCE.getContext().getPackageName(), 0).versionName;
        } catch (Throwable unused) {
            str = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        return "app=" + str + " android=" + Build.VERSION.RELEASE + " (SDK " + Build.VERSION.SDK_INT + ") device=" + Build.MANUFACTURER + " " + Build.MODEL;
    }

    public static final List<String> deviceReportLines() {
        ArrayList arrayList = new ArrayList();
        final Application context = App.INSTANCE.getContext();
        deviceReportLines$add(arrayList, "App", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoggingKt.deviceReportLines$lambda$1(context);
            }
        });
        deviceReportLines$add(arrayList, "Device", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoggingKt.deviceReportLines$lambda$2();
            }
        });
        deviceReportLines$add(arrayList, "Android", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoggingKt.deviceReportLines$lambda$3();
            }
        });
        deviceReportLines$add(arrayList, "Build", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoggingKt.deviceReportLines$lambda$4();
            }
        });
        deviceReportLines$add(arrayList, "CPU ABIs", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoggingKt.deviceReportLines$lambda$5();
            }
        });
        deviceReportLines$add(arrayList, "App process", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoggingKt.deviceReportLines$lambda$6(context);
            }
        });
        deviceReportLines$add(arrayList, "Screen readers", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoggingKt.screenReaderReport(context);
            }
        });
        deviceReportLines$add(arrayList, "Accessibility services (raw)", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoggingKt.deviceReportLines$lambda$8(context);
            }
        });
        deviceReportLines$add(arrayList, "Cores", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return String.valueOf(Runtime.getRuntime().availableProcessors());
            }
        });
        deviceReportLines$add(arrayList, "RAM", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoggingKt.deviceReportLines$lambda$10(context);
            }
        });
        deviceReportLines$add(arrayList, "Screen", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoggingKt.deviceReportLines$lambda$11(context);
            }
        });
        deviceReportLines$add(arrayList, "Locale", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoggingKt.deviceReportLines$lambda$12();
            }
        });
        deviceReportLines$add(arrayList, "Default TTS engine", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoggingKt.deviceReportLines$lambda$13(context);
            }
        });
        deviceReportLines$add(arrayList, "Installed TTS engines", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoggingKt.deviceReportLines$lambda$16(context);
            }
        });
        deviceReportLines$add(arrayList, "Google TTS", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return String.valueOf(context.getPackageManager().getPackageInfo(GoogleVoiceBackend.ENGINE_PACKAGE, 0).versionName);
            }
        });
        deviceReportLines$add(arrayList, "Usage Access (Per-App)", new Function0() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return String.valueOf(ForegroundApp.INSTANCE.hasPermission(context));
            }
        });
        return arrayList;
    }

    private static final void deviceReportLines$add(List<String> list, String str, Function0<String> function0) {
        String strInvoke;
        try {
            strInvoke = function0.invoke();
        } catch (Throwable th) {
            strInvoke = "unavailable (" + th.getClass().getSimpleName() + ")";
        }
        list.add(str + ": " + strInvoke);
    }

    static final String deviceReportLines$lambda$1(Application application) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo = application.getPackageManager().getPackageInfo(application.getPackageName(), 0);
        return packageInfo.versionName + " (versionCode " + packageInfo.getLongVersionCode() + ")";
    }

    static final String deviceReportLines$lambda$2() {
        return Build.MANUFACTURER + " " + Build.MODEL + " (brand=" + Build.BRAND + ", device=" + Build.DEVICE + ", product=" + Build.PRODUCT + ", hardware=" + Build.HARDWARE + ", board=" + Build.BOARD + ")";
    }

    static final String deviceReportLines$lambda$3() {
        return Build.VERSION.RELEASE + " (SDK " + Build.VERSION.SDK_INT + "), security patch " + Build.VERSION.SECURITY_PATCH + ", incremental " + Build.VERSION.INCREMENTAL;
    }

    static final String deviceReportLines$lambda$4() {
        String FINGERPRINT = Build.FINGERPRINT;
        Intrinsics.checkNotNullExpressionValue(FINGERPRINT, "FINGERPRINT");
        return FINGERPRINT;
    }

    static final String deviceReportLines$lambda$5() {
        String[] SUPPORTED_ABIS = Build.SUPPORTED_ABIS;
        Intrinsics.checkNotNullExpressionValue(SUPPORTED_ABIS, "SUPPORTED_ABIS");
        return ArraysKt.joinToString$default(SUPPORTED_ABIS, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null);
    }

    static final String deviceReportLines$lambda$6(Application application) {
        return (Process.is64Bit() ? "64-bit" : "32-bit") + ", native libs: " + application.getApplicationInfo().nativeLibraryDir;
    }

    static final String deviceReportLines$lambda$8(Application application) {
        String string = Settings.Secure.getString(application.getContentResolver(), "enabled_accessibility_services");
        return string == null ? PunctuationReader.NONE : string;
    }

    static final String deviceReportLines$lambda$10(Application application) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        Object systemService = application.getSystemService("activity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
        return "total " + (memoryInfo.totalMem / 1048576) + " MB, available " + (memoryInfo.availMem / 1048576) + " MB, low-memory=" + memoryInfo.lowMemory;
    }

    static final String deviceReportLines$lambda$11(Application application) {
        DisplayMetrics displayMetrics = application.getResources().getDisplayMetrics();
        return displayMetrics.widthPixels + "x" + displayMetrics.heightPixels + " px, density " + displayMetrics.densityDpi + " dpi";
    }

    static final String deviceReportLines$lambda$12() {
        String string = Locale.getDefault().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    static final String deviceReportLines$lambda$13(Application application) {
        String string = Settings.Secure.getString(application.getContentResolver(), "tts_default_synth");
        return string == null ? "none set" : string;
    }

    static final String deviceReportLines$lambda$16(Application application) {
        final PackageManager packageManager = application.getPackageManager();
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(new Intent("android.intent.action.TTS_SERVICE"), 131072);
        Intrinsics.checkNotNullExpressionValue(listQueryIntentServices, "queryIntentServices(...)");
        String strJoinToString$default = CollectionsKt.joinToString$default(listQueryIntentServices, "; ", null, null, 0, null, new Function1() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LoggingKt.deviceReportLines$lambda$16$lambda$14(packageManager, (ResolveInfo) obj);
            }
        }, 30, null);
        if (strJoinToString$default.length() == 0) {
            strJoinToString$default = "none found";
        }
        return strJoinToString$default;
    }

    static final CharSequence deviceReportLines$lambda$16$lambda$14(PackageManager packageManager, ResolveInfo resolveInfo) {
        String str;
        String str2 = resolveInfo.serviceInfo.packageName;
        try {
            str = packageManager.getPackageInfo(str2, 0).versionName;
        } catch (Throwable unused) {
            str = "?";
        }
        return str2 + " " + str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:31)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:60)
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String readerLabel(java.lang.String r4) {
        /*
            java.lang.String r0 = "pkg"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            int r0 = r4.hashCode()
            java.lang.String r1 = ""
            switch(r0) {
                case -2022312257: goto L54;
                case -1179567085: goto L48;
                case -924273603: goto L3c;
                case -361104429: goto L33;
                case -120126428: goto L27;
                case 285500553: goto L1b;
                case 708520957: goto Lf;
                default: goto Le;
            }
        Le:
            goto L60
        Lf:
            java.lang.String r0 = "com.samsung.android.dialer"
            boolean r0 = r4.equals(r0)
            if (r0 != 0) goto L18
            goto L60
        L18:
            java.lang.String r0 = "Samsung Phone"
            goto L61
        L1b:
            java.lang.String r0 = "com.android.dialer"
            boolean r0 = r4.equals(r0)
            if (r0 != 0) goto L24
            goto L60
        L24:
            java.lang.String r0 = "Phone"
            goto L61
        L27:
            java.lang.String r0 = "com.google.android.dialer"
            boolean r0 = r4.equals(r0)
            if (r0 != 0) goto L30
            goto L60
        L30:
            java.lang.String r0 = "Google Phone"
            goto L61
        L33:
            java.lang.String r0 = "com.nirenr.talkman.geek"
            boolean r0 = r4.equals(r0)
            if (r0 != 0) goto L5d
            goto L60
        L3c:
            java.lang.String r0 = "com.google.android.marvin.talkback"
            boolean r0 = r4.equals(r0)
            if (r0 != 0) goto L45
            goto L60
        L45:
            java.lang.String r0 = "Google TalkBack"
            goto L61
        L48:
            java.lang.String r0 = "com.samsung.android.accessibility.talkback"
            boolean r0 = r4.equals(r0)
            if (r0 != 0) goto L51
            goto L60
        L51:
            java.lang.String r0 = "Samsung TalkBack"
            goto L61
        L54:
            java.lang.String r0 = "com.nirenr.talkman"
            boolean r0 = r4.equals(r0)
            if (r0 != 0) goto L5d
            goto L60
        L5d:
            java.lang.String r0 = "Jieshuo"
            goto L61
        L60:
            r0 = r1
        L61:
            aio.tts.App$Companion r2 = aio.tts.App.INSTANCE     // Catch: java.lang.Throwable -> L73
            android.app.Application r2 = r2.getContext()     // Catch: java.lang.Throwable -> L73
            android.content.pm.PackageManager r2 = r2.getPackageManager()     // Catch: java.lang.Throwable -> L73
            r3 = 0
            android.content.pm.PackageInfo r2 = r2.getPackageInfo(r4, r3)     // Catch: java.lang.Throwable -> L73
            java.lang.String r2 = r2.versionName     // Catch: java.lang.Throwable -> L73
            goto L74
        L73:
            r2 = 0
        L74:
            r3 = r0
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3
            int r3 = r3.length()
            if (r3 <= 0) goto L96
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r0)
            java.lang.String r0 = " ("
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.StringBuilder r4 = r0.append(r4)
            java.lang.String r0 = ")"
            java.lang.StringBuilder r4 = r4.append(r0)
            java.lang.String r4 = r4.toString()
        L96:
            if (r2 == 0) goto La7
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = " "
            r0.<init>(r1)
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r1 = r0.toString()
        La7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.StringBuilder r4 = r0.append(r4)
            java.lang.StringBuilder r4 = r4.append(r1)
            java.lang.String r4 = r4.toString()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: aio.tts.LoggingKt.readerLabel(java.lang.String):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String screenReaderReport(Context context) {
        PackageManager packageManager = context.getPackageManager();
        ContentResolver contentResolver = context.getContentResolver();
        String str = Settings.Secure.getInt(contentResolver, "accessibility_enabled", 0) == 1 ? DebugKt.DEBUG_PROPERTY_VALUE_ON : DebugKt.DEBUG_PROPERTY_VALUE_OFF;
        String string = Settings.Secure.getString(contentResolver, "enabled_accessibility_services");
        if (string == null) {
            string = "";
        }
        List listSplit$default = StringsKt.split$default((CharSequence) string, new char[]{':'}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listSplit$default) {
            if (!StringsKt.isBlank((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(StringsKt.substringBefore$default((String) it.next(), '/', (String) null, 2, (Object) null));
        }
        List listDistinct = CollectionsKt.distinct(arrayList3);
        List<String> list = KNOWN_READERS;
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : list) {
            try {
                packageManager.getPackageInfo((String) obj2, 0);
                arrayList4.add(obj2);
            } catch (Throwable unused) {
            }
        }
        ArrayList arrayList5 = arrayList4;
        String strJoinToString$default = CollectionsKt.joinToString$default(listDistinct, "; ", null, null, 0, null, new Function1() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj3) {
                return LoggingKt.screenReaderReport$lambda$22((String) obj3);
            }
        }, 30, null);
        if (strJoinToString$default.length() == 0) {
            strJoinToString$default = PunctuationReader.NONE;
        }
        String strJoinToString$default2 = CollectionsKt.joinToString$default(arrayList5, "; ", null, null, 0, null, new Function1() { // from class: aio.tts.LoggingKt$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj3) {
                return LoggingKt.screenReaderReport$lambda$24((String) obj3);
            }
        }, 30, null);
        if (strJoinToString$default2.length() == 0) {
            strJoinToString$default2 = "none visible";
        }
        return "accessibility " + str + "; enabled: " + ((Object) strJoinToString$default) + " | known readers installed: " + ((Object) strJoinToString$default2);
    }

    static final CharSequence screenReaderReport$lambda$22(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return readerLabel(it);
    }

    static final CharSequence screenReaderReport$lambda$24(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return readerLabel(it);
    }

    public static final String compactEnv() throws PackageManager.NameNotFoundException {
        Application context = App.INSTANCE.getContext();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        return "app=" + packageInfo.versionName + "(" + packageInfo.getLongVersionCode() + ") android=" + Build.VERSION.RELEASE + "/SDK" + Build.VERSION.SDK_INT + " device=" + Build.MANUFACTURER + " " + Build.MODEL + " process=" + (Process.is64Bit() ? "64" : "32") + "-bit readers=" + screenReaderReport(context);
    }
}
