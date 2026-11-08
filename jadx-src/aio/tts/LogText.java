package aio.tts;

import android.content.Context;
import androidx.core.internal.view.SupportMenu;
import java.io.File;
import java.lang.Character;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlinx.coroutines.DebugKt;

/* compiled from: LogText.kt */
@Metadata(d1 = {"\u00007\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\n\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007J\b\u0010\u0011\u001a\u00020\u0007H\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005J\u0018\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005H\u0002J\u001d\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0019R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0010\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006\u001a"}, d2 = {"Laio/tts/LogText;", "", "<init>", "()V", "FILE_NAME", "", "debugOn", "", "Ljava/lang/Boolean;", "written", "aio/tts/LogText$written$1", "Laio/tts/LogText$written$1;", "setDebugOn", "", "context", "Landroid/content/Context;", DebugKt.DEBUG_PROPERTY_VALUE_ON, "isOn", "file", "Ljava/io/File;", "of", "text", "rememberText", "id", "describe", "describe$app", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LogText {
    private static final String FILE_NAME = "aiotts_text_debug.txt";
    private static volatile Boolean debugOn;
    public static final LogText INSTANCE = new LogText();
    private static final LogText$written$1 written = new LinkedHashMap<String, Boolean>() { // from class: aio.tts.LogText$written$1
        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsKey(Object obj) {
            if (obj instanceof String) {
                return containsKey((String) obj);
            }
            return false;
        }

        public /* bridge */ boolean containsKey(String str) {
            return super.containsKey((Object) str);
        }

        public /* bridge */ boolean containsValue(Boolean bool) {
            return super.containsValue((Object) bool);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsValue(Object obj) {
            if (obj instanceof Boolean) {
                return containsValue((Boolean) obj);
            }
            return false;
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<Map.Entry<String, Boolean>> entrySet() {
            return getEntries();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Boolean get(Object obj) {
            if (obj instanceof String) {
                return get((String) obj);
            }
            return null;
        }

        public /* bridge */ Boolean get(String str) {
            return (Boolean) super.get((Object) str);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            if (obj instanceof String) {
                return get((String) obj);
            }
            return null;
        }

        public /* bridge */ Set<Map.Entry<String, Boolean>> getEntries() {
            return super.entrySet();
        }

        public /* bridge */ Set<String> getKeys() {
            return super.keySet();
        }

        public final /* bridge */ Boolean getOrDefault(Object obj, Boolean bool) {
            return !(obj instanceof String) ? bool : getOrDefault((String) obj, bool);
        }

        public /* bridge */ Boolean getOrDefault(String str, Boolean bool) {
            return (Boolean) super.getOrDefault((Object) str, (String) bool);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
            return !(obj instanceof String) ? obj2 : getOrDefault((String) obj, (Boolean) obj2);
        }

        public /* bridge */ int getSize() {
            return super.size();
        }

        public /* bridge */ Collection<Boolean> getValues() {
            return super.values();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<String> keySet() {
            return getKeys();
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Boolean remove(Object obj) {
            if (obj instanceof String) {
                return remove((String) obj);
            }
            return null;
        }

        public /* bridge */ Boolean remove(String str) {
            return (Boolean) super.remove((Object) str);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object remove(Object obj) {
            if (obj instanceof String) {
                return remove((String) obj);
            }
            return null;
        }

        @Override // java.util.HashMap, java.util.Map
        public final /* bridge */ boolean remove(Object obj, Object obj2) {
            if ((obj instanceof String) && (obj2 instanceof Boolean)) {
                return remove((String) obj, (Boolean) obj2);
            }
            return false;
        }

        public /* bridge */ boolean remove(String str, Boolean bool) {
            return super.remove((Object) str, (Object) bool);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Collection<Boolean> values() {
            return getValues();
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<String, Boolean> eldest) {
            return size() > 500;
        }
    };

    /* compiled from: LogText.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Character.UnicodeScript.values().length];
            try {
                iArr[Character.UnicodeScript.LATIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Character.UnicodeScript.DEVANAGARI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Character.UnicodeScript.ARABIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Character.UnicodeScript.BENGALI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private LogText() {
    }

    public final void setDebugOn(Context context, boolean on) {
        Intrinsics.checkNotNullParameter(context, "context");
        debugOn = Boolean.valueOf(on);
        Prefs.INSTANCE.setDebugLogText(on);
        if (on) {
            return;
        }
        try {
            file(context).delete();
        } catch (Throwable unused) {
        }
    }

    private final boolean isOn() {
        boolean zDebugLogText;
        Boolean bool = debugOn;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            zDebugLogText = Prefs.INSTANCE.debugLogText();
        } catch (Throwable unused) {
            zDebugLogText = false;
        }
        debugOn = Boolean.valueOf(zDebugLogText);
        return zDebugLogText;
    }

    private final File file(Context context) {
        return new File(ImportExport.INSTANCE.folder$app(), FILE_NAME);
    }

    public final String of(String text) {
        if (text == null) {
            return "‹null›";
        }
        if (text.length() == 0) {
            return "‹empty›";
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format(Locale.US, "%04x", Arrays.copyOf(new Object[]{Integer.valueOf(text.hashCode() & SupportMenu.USER_MASK)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        if (isOn()) {
            rememberText(str, text);
        }
        return "‹" + describe$app(text, str) + "›";
    }

    private final void rememberText(String id, String text) {
        try {
            LogText$written$1 logText$written$1 = written;
            synchronized (logText$written$1) {
                if (logText$written$1.put(id + text.length(), true) != null) {
                    return;
                }
                Unit unit = Unit.INSTANCE;
                FilesKt.appendText$default(file(App.INSTANCE.getContext()), id + ": " + StringsKt.replace$default(text, '\n', ' ', false, 4, (Object) null) + "\n", null, 2, null);
            }
        } catch (Throwable unused) {
        }
    }

    public final String describe$app(String text, String id) {
        int i;
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(id, "id");
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        loop0: while (true) {
            boolean z = false;
            while (i2 < text.length()) {
                int iCodePointAt = text.codePointAt(i2);
                int iCharCount = i2 + Character.charCount(iCodePointAt);
                if (Character.isDigit(iCodePointAt)) {
                    i6++;
                    i3++;
                } else if (i3 > 0) {
                    arrayList.add(Integer.valueOf(i3));
                    i3 = 0;
                }
                if (Character.isDigit(iCodePointAt) || Character.isWhitespace(iCodePointAt)) {
                    i = iCharCount;
                } else if (Character.isLetter(iCodePointAt)) {
                    Character.UnicodeScript unicodeScriptOf = Character.UnicodeScript.of(iCodePointAt);
                    i = iCharCount;
                    int i12 = unicodeScriptOf == null ? -1 : WhenMappings.$EnumSwitchMapping$0[unicodeScriptOf.ordinal()];
                    if (i12 == 1) {
                        i4++;
                    } else if (i12 == 2) {
                        i7++;
                    } else if (i12 == 3) {
                        i8++;
                    } else if (i12 != 4) {
                        i10++;
                    } else {
                        i9++;
                    }
                } else {
                    i = iCharCount;
                    if (!Character.isLetterOrDigit(iCodePointAt)) {
                        i11++;
                    }
                }
                boolean z2 = Character.isLetterOrDigit(iCodePointAt) || Character.getType(iCodePointAt) == 6 || Character.getType(iCodePointAt) == 8;
                if (!z2 || z) {
                    i2 = i;
                    if (!z2) {
                        break;
                    }
                } else {
                    i5++;
                    i2 = i;
                    z = true;
                }
            }
        }
        if (i3 > 0) {
            arrayList.add(Integer.valueOf(i3));
        }
        StringBuilder sbAppend = new StringBuilder(id).append(": ").append(text.codePointCount(0, text.length())).append("c ").append(i5).append("w");
        if (i4 > 0) {
            sbAppend.append(" latin").append(i4);
        }
        if (i7 > 0) {
            sbAppend.append(" deva").append(i7);
        }
        if (i8 > 0) {
            sbAppend.append(" arabic").append(i8);
        }
        if (i9 > 0) {
            sbAppend.append(" bengali").append(i9);
        }
        if (i10 > 0) {
            sbAppend.append(" otherLetters").append(i10);
        }
        if (i6 > 0) {
            sbAppend.append(" digits").append(i6).append(CollectionsKt.joinToString$default(CollectionsKt.take(arrayList, 6), ",", "[", arrayList.size() > 6 ? ",..]" : "]", 0, null, null, 56, null));
        }
        if (i11 > 0) {
            sbAppend.append(" symbols").append(i11);
        }
        String string = sbAppend.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
