package aio.tts;

import android.app.AppOpsManager;
import android.app.usage.UsageEvents;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Process;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ForegroundApp.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\b\u001a\u00020\tH\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\b\u001a\u00020\tH\u0002J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\tR\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Laio/tts/ForegroundApp;", "", "<init>", "()V", "launchableAppsCache", "", "", "launchableApps", "context", "Landroid/content/Context;", "homeAppsCache", "homeApps", "hasPermission", "", "requestPermission", "", "lastKnownForegroundApp", "current", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ForegroundApp {
    public static final ForegroundApp INSTANCE = new ForegroundApp();
    private static Set<String> homeAppsCache;
    private static volatile String lastKnownForegroundApp;
    private static Set<String> launchableAppsCache;

    private ForegroundApp() {
    }

    private final Set<String> launchableApps(Context context) {
        Set<String> set = launchableAppsCache;
        if (set != null) {
            return set;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intentAddCategory = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER");
        Intrinsics.checkNotNullExpressionValue(intentAddCategory, "addCategory(...)");
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intentAddCategory, 0);
        Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities, "queryIntentActivities(...)");
        List<ResolveInfo> list = listQueryIntentActivities;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ResolveInfo) it.next()).activityInfo.packageName);
        }
        Set<String> set2 = CollectionsKt.toSet(arrayList);
        launchableAppsCache = set2;
        return set2;
    }

    private final Set<String> homeApps(Context context) {
        Set<String> set = homeAppsCache;
        if (set != null) {
            return set;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intentAddCategory = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME");
        Intrinsics.checkNotNullExpressionValue(intentAddCategory, "addCategory(...)");
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intentAddCategory, 0);
        Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities, "queryIntentActivities(...)");
        List<ResolveInfo> list = listQueryIntentActivities;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ResolveInfo) it.next()).activityInfo.packageName);
        }
        Set<String> set2 = CollectionsKt.toSet(arrayList);
        homeAppsCache = set2;
        return set2;
    }

    public final boolean hasPermission(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("appops");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.AppOpsManager");
        return ((AppOpsManager) systemService).checkOpNoThrow("android:get_usage_stats", Process.myUid(), context.getPackageName()) == 0;
    }

    public final void requestPermission(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intent intent = new Intent("android.settings.USAGE_ACCESS_SETTINGS");
        intent.addFlags(268435456);
        intent.setData(Uri.parse("package:" + context.getPackageName()));
        try {
            context.startActivity(intent);
        } catch (Exception unused) {
            context.startActivity(new Intent("android.settings.USAGE_ACCESS_SETTINGS").addFlags(268435456));
        }
    }

    public final String current(Context context) {
        boolean z;
        Intrinsics.checkNotNullParameter(context, "context");
        if (!hasPermission(context)) {
            return null;
        }
        Object systemService = context.getSystemService("usagestats");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.usage.UsageStatsManager");
        long jCurrentTimeMillis = System.currentTimeMillis();
        UsageEvents usageEventsQueryEvents = ((UsageStatsManager) systemService).queryEvents(jCurrentTimeMillis - 600000, jCurrentTimeMillis);
        Intrinsics.checkNotNullExpressionValue(usageEventsQueryEvents, "queryEvents(...)");
        Set<String> setLaunchableApps = launchableApps(context);
        Set<String> setHomeApps = homeApps(context);
        UsageEvents.Event event = new UsageEvents.Event();
        String packageName = null;
        loop0: while (true) {
            z = false;
            while (usageEventsQueryEvents.hasNextEvent()) {
                usageEventsQueryEvents.getNextEvent(event);
                if (event.getEventType() == 1 || event.getEventType() == 1) {
                    if (setHomeApps.contains(event.getPackageName())) {
                        packageName = null;
                        z = true;
                    } else if (setLaunchableApps.contains(event.getPackageName())) {
                        break;
                    }
                }
            }
            packageName = event.getPackageName();
        }
        if (packageName != null) {
            lastKnownForegroundApp = packageName;
        } else if (z) {
            lastKnownForegroundApp = null;
        }
        return lastKnownForegroundApp;
    }
}
