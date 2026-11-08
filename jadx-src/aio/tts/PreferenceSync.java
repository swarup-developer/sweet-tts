package aio.tts;

import android.content.Context;
import android.util.Log;
import com.nuance.android.vocalizer.VocalizerVoice;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: PreferenceSync.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Laio/tts/PreferenceSync;", "", "<init>", "()V", "TAG", "", "updateAll", "", "context", "Landroid/content/Context;", "reconnectGoogle", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PreferenceSync {
    public static final PreferenceSync INSTANCE = new PreferenceSync();
    private static final String TAG = "PreferenceSync";

    private PreferenceSync() {
    }

    public final void updateAll(Context context, boolean reconnectGoogle) {
        String str;
        VocalizerVoice vocalizerVoiceDefaultVoiceFor;
        String str2;
        VocalizerVoice vocalizerVoiceDefaultVoiceFor2;
        String str3;
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        try {
            if (reconnectGoogle) {
                PlaySample playSample = PlaySample.INSTANCE;
                Intrinsics.checkNotNull(applicationContext);
                Boolean.valueOf(PlaySample.refreshEngines$default(playSample, applicationContext, 0L, 2, null));
            } else {
                PlaySample playSample2 = PlaySample.INSTANCE;
                Intrinsics.checkNotNull(applicationContext);
                playSample2.resolveVoiceName(applicationContext, "en");
            }
            if (VoiceCatalog.INSTANCE.getVoices().isEmpty()) {
                return;
            }
            List<VocalizerVoice> voices = VoiceCatalog.INSTANCE.getVoices();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(voices, 10));
            Iterator<T> it = voices.iterator();
            while (it.hasNext()) {
                arrayList.add(((VocalizerVoice) it.next()).mVoiceName);
            }
            Set set = CollectionsKt.toSet(arrayList);
            String strEmojiVoice = Prefs.INSTANCE.emojiVoice();
            if (!Intrinsics.areEqual(strEmojiVoice, Prefs.MATCH_LANGUAGE) && !updateAll$isKept(set, strEmojiVoice) && (vocalizerVoiceDefaultVoiceFor2 = VoiceCatalog.INSTANCE.defaultVoiceFor("emoji", VoiceCatalog.INSTANCE.getVoices())) != null && (str3 = vocalizerVoiceDefaultVoiceFor2.mVoiceName) != null) {
                Prefs.INSTANCE.setEmojiVoice(str3);
            }
            String strNumberVoice = Prefs.INSTANCE.numberVoice();
            if (!Intrinsics.areEqual(strNumberVoice, Prefs.MATCH_LANGUAGE) && !updateAll$isKept(set, strNumberVoice) && (vocalizerVoiceDefaultVoiceFor = VoiceCatalog.INSTANCE.defaultVoiceFor("number", VoiceCatalog.INSTANCE.getVoices())) != null && (str2 = vocalizerVoiceDefaultVoiceFor.mVoiceName) != null) {
                Prefs.INSTANCE.setNumberVoice(str2);
            }
            Iterator<Pair<String, String>> it2 = VoiceCatalog.INSTANCE.getLANGUAGES().iterator();
            while (it2.hasNext()) {
                String strComponent1 = it2.next().component1();
                if (Prefs.INSTANCE.isLanguageEnabled(strComponent1)) {
                    List<VocalizerVoice> listSortedForDisplay = VoiceCatalog.INSTANCE.sortedForDisplay(VoiceCatalog.INSTANCE.voicesFor(strComponent1));
                    List<VocalizerVoice> list = listSortedForDisplay;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator<T> it3 = list.iterator();
                    while (it3.hasNext()) {
                        arrayList2.add(((VocalizerVoice) it3.next()).mVoiceName);
                    }
                    Set set2 = CollectionsKt.toSet(arrayList2);
                    String strVoiceFor = Prefs.INSTANCE.voiceFor(strComponent1);
                    if (strVoiceFor == null || (!set2.contains(strVoiceFor) && !StringsKt.startsWith$default(strVoiceFor, VoiceCatalog.GOOGLE_VOICE_PREFIX, false, 2, (Object) null))) {
                        VocalizerVoice vocalizerVoiceDefaultVoiceFor3 = VoiceCatalog.INSTANCE.defaultVoiceFor(strComponent1, listSortedForDisplay);
                        if (vocalizerVoiceDefaultVoiceFor3 != null && (str = vocalizerVoiceDefaultVoiceFor3.mVoiceName) != null) {
                            Prefs.INSTANCE.setVoiceFor(strComponent1, str);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.e(TAG, "updateAll failed", th);
        }
    }

    private static final boolean updateAll$isKept(Set<String> set, String str) {
        return str != null && (set.contains(str) || StringsKt.startsWith$default(str, VoiceCatalog.GOOGLE_VOICE_PREFIX, false, 2, (Object) null));
    }
}
