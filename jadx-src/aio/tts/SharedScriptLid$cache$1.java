package aio.tts;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Triple;

/* compiled from: SharedScriptLid.kt */
@Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010'\n\u0000*\u0001\u0000\b\n\u0018\u00002^\u0012\u0004\u0012\u00020\u0002\u0012$\u0012\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u00050\u00030\u0001j.\u0012\u0004\u0012\u00020\u0002\u0012$\u0012\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u00050\u0003`\u0006J>\u0010\u0007\u001a\u00020\b24\u0010\t\u001a0\u0012\u0004\u0012\u00020\u0002\u0012$\u0012\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u00050\u0003\u0018\u00010\nH\u0014¨\u0006\u000b"}, d2 = {"aio/tts/SharedScriptLid$cache$1", "Ljava/util/LinkedHashMap;", "", "Lkotlin/Triple;", "", "", "Lkotlin/collections/LinkedHashMap;", "removeEldestEntry", "", "eldest", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SharedScriptLid$cache$1 extends LinkedHashMap<String, Triple<? extends String, ? extends Float, ? extends Map<String, ? extends Float>>> {
    SharedScriptLid$cache$1() {
        super(64, 0.75f, true);
    }

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

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof Triple) {
            return containsValue((Triple<String, Float, ? extends Map<String, Float>>) obj);
        }
        return false;
    }

    public /* bridge */ boolean containsValue(Triple<String, Float, ? extends Map<String, Float>> triple) {
        return super.containsValue((Object) triple);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<Map.Entry<String, Triple<String, Float, Map<String, Float>>>> entrySet() {
        return getEntries();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        if (obj instanceof String) {
            return get((String) obj);
        }
        return null;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Triple<String, Float, Map<String, Float>> get(Object obj) {
        if (obj instanceof String) {
            return get((String) obj);
        }
        return null;
    }

    public /* bridge */ Triple<String, Float, Map<String, Float>> get(String str) {
        return (Triple) super.get((Object) str);
    }

    public /* bridge */ Set<Map.Entry<String, Triple<String, Float, Map<String, Float>>>> getEntries() {
        return super.entrySet();
    }

    public /* bridge */ Set<String> getKeys() {
        return super.keySet();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
        return !(obj instanceof String) ? obj2 : getOrDefault((String) obj, (Triple<String, Float, ? extends Map<String, Float>>) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* bridge */ Triple<String, Float, Map<String, Float>> getOrDefault(Object obj, Triple<String, Float, ? extends Map<String, Float>> triple) {
        return !(obj instanceof String) ? triple : getOrDefault((String) obj, triple);
    }

    public /* bridge */ Triple<String, Float, Map<String, Float>> getOrDefault(String str, Triple<String, Float, ? extends Map<String, Float>> triple) {
        return (Triple) super.getOrDefault((Object) str, (String) triple);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ Collection<Triple<String, Float, Map<String, Float>>> getValues() {
        return super.values();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<String> keySet() {
        return getKeys();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object remove(Object obj) {
        if (obj instanceof String) {
            return remove((String) obj);
        }
        return null;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Triple<String, Float, Map<String, Float>> remove(Object obj) {
        if (obj instanceof String) {
            return remove((String) obj);
        }
        return null;
    }

    public /* bridge */ Triple<String, Float, Map<String, Float>> remove(String str) {
        return (Triple) super.remove((Object) str);
    }

    @Override // java.util.HashMap, java.util.Map
    public final /* bridge */ boolean remove(Object obj, Object obj2) {
        if ((obj instanceof String) && (obj2 instanceof Triple)) {
            return remove((String) obj, (Triple<String, Float, ? extends Map<String, Float>>) obj2);
        }
        return false;
    }

    public /* bridge */ boolean remove(String str, Triple<String, Float, ? extends Map<String, Float>> triple) {
        return super.remove((Object) str, (Object) triple);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Collection<Triple<String, Float, Map<String, Float>>> values() {
        return getValues();
    }

    @Override // java.util.LinkedHashMap
    protected boolean removeEldestEntry(Map.Entry<String, Triple<? extends String, ? extends Float, ? extends Map<String, ? extends Float>>> eldest) {
        return size() > 400;
    }
}
