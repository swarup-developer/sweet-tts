package androidx.collection;

import aio.tts.PunctuationReader;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* compiled from: FloatFloatMap.kt */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002J&\u0010\u0015\u001a\u00020\u00162\u0018\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00160\u0018H\u0086\bø\u0001\u0000J\u0006\u0010\u001a\u001a\u00020\u0016J&\u0010\u001a\u001a\u00020\u00162\u0018\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00160\u0018H\u0086\bø\u0001\u0000J\u0011\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0019H\u0086\u0002J\u000e\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0019J\u000e\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u0019J\u0006\u0010 \u001a\u00020\u0004J&\u0010 \u001a\u00020\u00042\u0018\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00160\u0018H\u0086\bø\u0001\u0000J\u0013\u0010!\u001a\u00020\u00162\b\u0010\"\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0019H\u0001JD\u0010$\u001a\u00020%26\u0010&\u001a2\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b(\u001c\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020%0\u0018H\u0086\bø\u0001\u0000J/\u0010)\u001a\u00020%2!\u0010&\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020%0*H\u0081\bø\u0001\u0000J/\u0010,\u001a\u00020%2!\u0010&\u001a\u001d\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020%0*H\u0086\bø\u0001\u0000J/\u0010-\u001a\u00020%2!\u0010&\u001a\u001d\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020%0*H\u0086\bø\u0001\u0000J\u0011\u0010.\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0019H\u0086\u0002J\u0016\u0010/\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00192\u0006\u00100\u001a\u00020\u0019J\"\u00101\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00192\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u001902H\u0086\bø\u0001\u0000J\b\u00103\u001a\u00020\u0004H\u0016J\u0006\u00104\u001a\u00020\u0016J\u0006\u00105\u001a\u00020\u0016J:\u00106\u001a\u0002072\b\b\u0002\u00108\u001a\u0002092\b\b\u0002\u0010:\u001a\u0002092\b\b\u0002\u0010;\u001a\u0002092\b\b\u0002\u0010<\u001a\u00020\u00042\b\b\u0002\u0010=\u001a\u000209H\u0007Jx\u00106\u001a\u0002072\b\b\u0002\u00108\u001a\u0002092\b\b\u0002\u0010:\u001a\u0002092\b\b\u0002\u0010;\u001a\u0002092\b\b\u0002\u0010<\u001a\u00020\u00042\b\b\u0002\u0010=\u001a\u00020928\b\u0004\u0010>\u001a2\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b(\u001c\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u0002090\u0018H\u0087\bø\u0001\u0000J\u0006\u0010?\u001a\u00020\u0016J\b\u0010@\u001a\u000207H\u0016R\u0018\u0010\u0003\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002R\u0018\u0010\u0006\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0002R\u0011\u0010\b\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0018\u0010\u000b\u001a\u00020\f8\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0000\u0012\u0004\b\r\u0010\u0002R\u0018\u0010\u000e\u001a\u00020\u000f8\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0010\u0010\u0002R\u0011\u0010\u0011\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\nR\u0018\u0010\u0013\u001a\u00020\f8\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0014\u0010\u0002\u0082\u0001\u0001A\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006B"}, d2 = {"Landroidx/collection/FloatFloatMap;", "", "()V", "_capacity", "", "get_capacity$collection$annotations", "_size", "get_size$collection$annotations", "capacity", "getCapacity", "()I", "keys", "", "getKeys$annotations", "metadata", "", "getMetadata$annotations", "size", "getSize", "values", "getValues$annotations", PunctuationReader.ALL, "", "predicate", "Lkotlin/Function2;", "", "any", "contains", "key", "containsKey", "containsValue", "value", "count", "equals", "other", "findKeyIndex", "forEach", "", "block", "Lkotlin/ParameterName;", "name", "forEachIndexed", "Lkotlin/Function1;", "index", "forEachKey", "forEachValue", "get", "getOrDefault", "defaultValue", "getOrElse", "Lkotlin/Function0;", "hashCode", "isEmpty", "isNotEmpty", "joinToString", "", "separator", "", "prefix", "postfix", "limit", "truncated", "transform", PunctuationReader.NONE, "toString", "Landroidx/collection/MutableFloatFloatMap;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class FloatFloatMap {
    public int _capacity;
    public int _size;
    public float[] keys;
    public long[] metadata;
    public float[] values;

    public /* synthetic */ FloatFloatMap(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ void getKeys$annotations() {
    }

    public static /* synthetic */ void getMetadata$annotations() {
    }

    public static /* synthetic */ void getValues$annotations() {
    }

    public static /* synthetic */ void get_capacity$collection$annotations() {
    }

    public static /* synthetic */ void get_size$collection$annotations() {
    }

    public final String joinToString() {
        return joinToString$default(this, null, null, null, 0, null, 31, null);
    }

    public final String joinToString(CharSequence separator) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        return joinToString$default(this, separator, null, null, 0, null, 30, null);
    }

    public final String joinToString(CharSequence separator, CharSequence prefix) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return joinToString$default(this, separator, prefix, null, 0, null, 28, null);
    }

    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, 0, null, 24, null);
    }

    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix, int i) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, i, null, 16, null);
    }

    private FloatFloatMap() {
        this.metadata = ScatterMapKt.EmptyGroup;
        this.keys = FloatSetKt.getEmptyFloatArray();
        this.values = FloatSetKt.getEmptyFloatArray();
    }

    /* renamed from: getCapacity, reason: from getter */
    public final int get_capacity() {
        return this._capacity;
    }

    /* renamed from: getSize, reason: from getter */
    public final int get_size() {
        return this._size;
    }

    public final boolean any() {
        return this._size != 0;
    }

    public final boolean none() {
        return this._size == 0;
    }

    public final boolean isEmpty() {
        return this._size == 0;
    }

    public final boolean isNotEmpty() {
        return this._size != 0;
    }

    public final float get(float key) {
        int iFindKeyIndex = findKeyIndex(key);
        if (iFindKeyIndex < 0) {
            throw new NoSuchElementException("Cannot find value for key " + key);
        }
        return this.values[iFindKeyIndex];
    }

    public final float getOrDefault(float key, float defaultValue) {
        int iFindKeyIndex = findKeyIndex(key);
        return iFindKeyIndex >= 0 ? this.values[iFindKeyIndex] : defaultValue;
    }

    public final float getOrElse(float key, Function0<Float> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        int iFindKeyIndex = findKeyIndex(key);
        if (iFindKeyIndex < 0) {
            return defaultValue.invoke().floatValue();
        }
        return this.values[iFindKeyIndex];
    }

    public final void forEachIndexed(Function1<? super Integer, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        block.invoke(Integer.valueOf((i << 3) + i3));
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void forEach(Function2<? super Float, ? super Float, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        float[] fArr = this.keys;
        float[] fArr2 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        block.invoke(Float.valueOf(fArr[i4]), Float.valueOf(fArr2[i4]));
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void forEachKey(Function1<? super Float, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        float[] fArr = this.keys;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        block.invoke(Float.valueOf(fArr[(i << 3) + i3]));
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void forEachValue(Function1<? super Float, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        float[] fArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        block.invoke(Float.valueOf(fArr[(i << 3) + i3]));
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final int count() {
        return get_size();
    }

    public final boolean contains(float key) {
        return findKeyIndex(key) >= 0;
    }

    public final boolean containsKey(float key) {
        return findKeyIndex(key) >= 0;
    }

    public static /* synthetic */ String joinToString$default(FloatFloatMap floatFloatMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
        }
        if ((i2 & 1) != 0) {
        }
        if ((i2 & 2) != 0) {
        }
        if ((i2 & 4) != 0) {
        }
        if ((i2 & 8) != 0) {
            i = -1;
        }
        if ((i2 & 16) != 0) {
        }
        CharSequence charSequence5 = charSequence4;
        CharSequence charSequence6 = charSequence3;
        return floatFloatMap.joinToString(charSequence, charSequence2, charSequence6, i, charSequence5);
    }

    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix, int limit, CharSequence truncated) {
        long[] jArr;
        long[] jArr2;
        int i;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        float[] fArr = this.keys;
        float[] fArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i2 = 0;
            int i3 = 0;
            loop0: while (true) {
                long j = jArr3[i2];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8;
                    int i5 = 8 - ((~(i2 - length)) >>> 31);
                    int i6 = 0;
                    while (i6 < i5) {
                        if ((j & 255) < 128) {
                            int i7 = (i2 << 3) + i6;
                            float f = fArr[i7];
                            i = i4;
                            float f2 = fArr2[i7];
                            jArr2 = jArr3;
                            if (i3 == limit) {
                                sb.append(truncated);
                                break loop0;
                            }
                            if (i3 != 0) {
                                sb.append(separator);
                            }
                            sb.append(f);
                            sb.append('=');
                            sb.append(f2);
                            i3++;
                        } else {
                            jArr2 = jArr3;
                            i = i4;
                        }
                        j >>= i;
                        i6++;
                        i4 = i;
                        jArr3 = jArr2;
                    }
                    jArr = jArr3;
                    if (i5 != i4) {
                        break;
                    }
                } else {
                    jArr = jArr3;
                }
                if (i2 == length) {
                    break;
                }
                i2++;
                jArr3 = jArr;
            }
            sb.append(postfix);
        } else {
            sb.append(postfix);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static /* synthetic */ String joinToString$default(FloatFloatMap floatFloatMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function2 transform, int i2, Object obj) {
        long[] jArr;
        long[] jArr2;
        int i3;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
        }
        CharSequence separator = (i2 & 1) != 0 ? ", " : charSequence;
        CharSequence prefix = (i2 & 2) != 0 ? "" : charSequence2;
        CharSequence postfix = (i2 & 4) != 0 ? "" : charSequence3;
        int i4 = (i2 & 8) != 0 ? -1 : i;
        CharSequence truncated = (i2 & 16) != 0 ? "..." : charSequence4;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        float[] fArr = floatFloatMap.keys;
        float[] fArr2 = floatFloatMap.values;
        long[] jArr3 = floatFloatMap.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i5 = 0;
            int i6 = 0;
            loop0: while (true) {
                long j = jArr3[i5];
                int i7 = i5;
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i8 = 8;
                    int i9 = 8 - ((~(i7 - length)) >>> 31);
                    int i10 = 0;
                    while (i10 < i9) {
                        if ((j & 255) < 128) {
                            int i11 = (i7 << 3) + i10;
                            float f = fArr[i11];
                            float f2 = fArr2[i11];
                            if (i6 == i4) {
                                sb.append(truncated);
                                break loop0;
                            }
                            if (i6 != 0) {
                                sb.append(separator);
                            }
                            i3 = i8;
                            Float fValueOf = Float.valueOf(f);
                            jArr2 = jArr3;
                            sb.append((CharSequence) transform.invoke(fValueOf, Float.valueOf(f2)));
                            i6++;
                        } else {
                            jArr2 = jArr3;
                            i3 = i8;
                        }
                        j >>= i3;
                        i10++;
                        i8 = i3;
                        jArr3 = jArr2;
                    }
                    jArr = jArr3;
                    if (i9 != i8) {
                        break;
                    }
                } else {
                    jArr = jArr3;
                }
                if (i7 == length) {
                    break;
                }
                i5 = i7 + 1;
                jArr3 = jArr;
            }
            sb.append(postfix);
        } else {
            sb.append(postfix);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix, int limit, CharSequence truncated, Function2<? super Float, ? super Float, ? extends CharSequence> transform) {
        long[] jArr;
        long[] jArr2;
        int i;
        CharSequence separator2 = separator;
        Intrinsics.checkNotNullParameter(separator2, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        float[] fArr = this.keys;
        float[] fArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i2 = 0;
            int i3 = 0;
            loop0: while (true) {
                long j = jArr3[i2];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8;
                    int i5 = 8 - ((~(i2 - length)) >>> 31);
                    int i6 = 0;
                    while (i6 < i5) {
                        if ((j & 255) < 128) {
                            int i7 = (i2 << 3) + i6;
                            float f = fArr[i7];
                            float f2 = fArr2[i7];
                            i = i4;
                            if (i3 == limit) {
                                sb.append(truncated);
                                break loop0;
                            }
                            if (i3 != 0) {
                                sb.append(separator2);
                            }
                            jArr2 = jArr3;
                            sb.append(transform.invoke(Float.valueOf(f), Float.valueOf(f2)));
                            i3++;
                        } else {
                            jArr2 = jArr3;
                            i = i4;
                        }
                        j >>= i;
                        i6++;
                        separator2 = separator;
                        i4 = i;
                        jArr3 = jArr2;
                    }
                    jArr = jArr3;
                    if (i5 != i4) {
                        break;
                    }
                } else {
                    jArr = jArr3;
                }
                if (i2 == length) {
                    break;
                }
                i2++;
                separator2 = separator;
                jArr3 = jArr;
            }
            sb.append(postfix);
        } else {
            sb.append(postfix);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = 1
            if (r1 != r0) goto L8
            return r2
        L8:
            boolean r3 = r1 instanceof androidx.collection.FloatFloatMap
            r4 = 0
            if (r3 != 0) goto Le
            return r4
        Le:
            androidx.collection.FloatFloatMap r1 = (androidx.collection.FloatFloatMap) r1
            int r3 = r1.get_size()
            int r5 = r0.get_size()
            if (r3 == r5) goto L1b
            return r4
        L1b:
            float[] r3 = r0.keys
            float[] r5 = r0.values
            long[] r0 = r0.metadata
            int r6 = r0.length
            int r6 = r6 + (-2)
            if (r6 < 0) goto L68
            r7 = r4
        L27:
            r8 = r0[r7]
            long r10 = ~r8
            r12 = 7
            long r10 = r10 << r12
            long r10 = r10 & r8
            r12 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r10 = r10 & r12
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 == 0) goto L63
            int r10 = r7 - r6
            int r10 = ~r10
            int r10 = r10 >>> 31
            r11 = 8
            int r10 = 8 - r10
            r12 = r4
        L41:
            if (r12 >= r10) goto L61
            r13 = 255(0xff, double:1.26E-321)
            long r13 = r13 & r8
            r15 = 128(0x80, double:6.32E-322)
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 >= 0) goto L5d
            int r13 = r7 << 3
            int r13 = r13 + r12
            r14 = r3[r13]
            r13 = r5[r13]
            float r14 = r1.get(r14)
            int r13 = (r13 > r14 ? 1 : (r13 == r14 ? 0 : -1))
            if (r13 != 0) goto L5c
            goto L5d
        L5c:
            return r4
        L5d:
            long r8 = r8 >> r11
            int r12 = r12 + 1
            goto L41
        L61:
            if (r10 != r11) goto L68
        L63:
            if (r7 == r6) goto L68
            int r7 = r7 + 1
            goto L27
        L68:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.FloatFloatMap.equals(java.lang.Object):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0068 A[PHI: r8
      0x0068: PHI (r8v2 int) = (r8v1 int), (r8v3 int) binds: [B:10:0x002e, B:19:0x0066] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r18 = this;
            r0 = r18
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto Lb
            java.lang.String r0 = "{}"
            return r0
        Lb:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "{"
            r1.<init>(r2)
            float[] r2 = r0.keys
            float[] r3 = r0.values
            long[] r4 = r0.metadata
            int r5 = r4.length
            int r5 = r5 + (-2)
            if (r5 < 0) goto L6d
            r6 = 0
            r7 = r6
            r8 = r7
        L20:
            r9 = r4[r7]
            long r11 = ~r9
            r13 = 7
            long r11 = r11 << r13
            long r11 = r11 & r9
            r13 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r11 = r11 & r13
            int r11 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r11 == 0) goto L68
            int r11 = r7 - r5
            int r11 = ~r11
            int r11 = r11 >>> 31
            r12 = 8
            int r11 = 8 - r11
            r13 = r6
        L3a:
            if (r13 >= r11) goto L66
            r14 = 255(0xff, double:1.26E-321)
            long r14 = r14 & r9
            r16 = 128(0x80, double:6.32E-322)
            int r14 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r14 >= 0) goto L62
            int r14 = r7 << 3
            int r14 = r14 + r13
            r15 = r2[r14]
            r14 = r3[r14]
            r1.append(r15)
            java.lang.String r15 = "="
            r1.append(r15)
            r1.append(r14)
            int r8 = r8 + 1
            int r14 = r0._size
            if (r8 >= r14) goto L62
            java.lang.String r14 = ", "
            r1.append(r14)
        L62:
            long r9 = r9 >> r12
            int r13 = r13 + 1
            goto L3a
        L66:
            if (r11 != r12) goto L6d
        L68:
            if (r7 == r5) goto L6d
            int r7 = r7 + 1
            goto L20
        L6d:
            r0 = 125(0x7d, float:1.75E-43)
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "s.append('}').toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.FloatFloatMap.toString():java.lang.String");
    }

    public final boolean all(Function2<? super Float, ? super Float, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        float[] fArr = this.keys;
        float[] fArr2 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        if (!predicate.invoke(Float.valueOf(fArr[i4]), Float.valueOf(fArr2[i4])).booleanValue()) {
                            return false;
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return true;
                }
            }
            if (i == length) {
                return true;
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean any(kotlin.jvm.functions.Function2<? super java.lang.Float, ? super java.lang.Float, java.lang.Boolean> r15) {
        /*
            r14 = this;
            java.lang.String r0 = "predicate"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            float[] r0 = r14.keys
            float[] r1 = r14.values
            long[] r14 = r14.metadata
            int r2 = r14.length
            int r2 = r2 + (-2)
            r3 = 0
            if (r2 < 0) goto L5f
            r4 = r3
        L12:
            r5 = r14[r4]
            long r7 = ~r5
            r9 = 7
            long r7 = r7 << r9
            long r7 = r7 & r5
            r9 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r7 = r7 & r9
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 == 0) goto L5a
            int r7 = r4 - r2
            int r7 = ~r7
            int r7 = r7 >>> 31
            r8 = 8
            int r7 = 8 - r7
            r9 = r3
        L2c:
            if (r9 >= r7) goto L58
            r10 = 255(0xff, double:1.26E-321)
            long r10 = r10 & r5
            r12 = 128(0x80, double:6.32E-322)
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 >= 0) goto L54
            int r10 = r4 << 3
            int r10 = r10 + r9
            r11 = r0[r10]
            r10 = r1[r10]
            java.lang.Float r11 = java.lang.Float.valueOf(r11)
            java.lang.Float r10 = java.lang.Float.valueOf(r10)
            java.lang.Object r10 = r15.invoke(r11, r10)
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L54
            r14 = 1
            return r14
        L54:
            long r5 = r5 >> r8
            int r9 = r9 + 1
            goto L2c
        L58:
            if (r7 != r8) goto L5f
        L5a:
            if (r4 == r2) goto L5f
            int r4 = r4 + 1
            goto L12
        L5f:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.FloatFloatMap.any(kotlin.jvm.functions.Function2):boolean");
    }

    public final int count(Function2<? super Float, ? super Float, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        float[] fArr = this.keys;
        float[] fArr2 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return 0;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j) < 128) {
                        int i5 = (i << 3) + i4;
                        if (predicate.invoke(Float.valueOf(fArr[i5]), Float.valueOf(fArr2[i5])).booleanValue()) {
                            i2++;
                        }
                    }
                    j >>= 8;
                }
                if (i3 != 8) {
                    return i2;
                }
            }
            if (i == length) {
                return i2;
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean containsValue(float r14) {
        /*
            r13 = this;
            float[] r0 = r13.values
            long[] r13 = r13.metadata
            int r1 = r13.length
            int r1 = r1 + (-2)
            r2 = 0
            if (r1 < 0) goto L46
            r3 = r2
        Lb:
            r4 = r13[r3]
            long r6 = ~r4
            r8 = 7
            long r6 = r6 << r8
            long r6 = r6 & r4
            r8 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r6 = r6 & r8
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r6 == 0) goto L41
            int r6 = r3 - r1
            int r6 = ~r6
            int r6 = r6 >>> 31
            r7 = 8
            int r6 = 8 - r6
            r8 = r2
        L25:
            if (r8 >= r6) goto L3f
            r9 = 255(0xff, double:1.26E-321)
            long r9 = r9 & r4
            r11 = 128(0x80, double:6.32E-322)
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 >= 0) goto L3b
            int r9 = r3 << 3
            int r9 = r9 + r8
            r9 = r0[r9]
            int r9 = (r14 > r9 ? 1 : (r14 == r9 ? 0 : -1))
            if (r9 != 0) goto L3b
            r13 = 1
            return r13
        L3b:
            long r4 = r4 >> r7
            int r8 = r8 + 1
            goto L25
        L3f:
            if (r6 != r7) goto L46
        L41:
            if (r3 == r1) goto L46
            int r3 = r3 + 1
            goto Lb
        L46:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.FloatFloatMap.containsValue(float):boolean");
    }

    public int hashCode() {
        float[] fArr = this.keys;
        float[] fArr2 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return 0;
        }
        int i = 0;
        int iHashCode = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        float f = fArr[i4];
                        iHashCode += Float.hashCode(fArr2[i4]) ^ Float.hashCode(f);
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return iHashCode;
                }
            }
            if (i == length) {
                return iHashCode;
            }
            i++;
        }
    }

    public final int findKeyIndex(float key) {
        int iHashCode = Float.hashCode(key) * ScatterMapKt.MurmurHashC1;
        int i = iHashCode ^ (iHashCode << 16);
        int i2 = i & WorkQueueKt.MASK;
        int i3 = this._capacity;
        int i4 = (i >>> 7) & i3;
        int i5 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i6 = i4 >> 3;
            int i7 = (i4 & 7) << 3;
            long j = ((jArr[i6 + 1] << (64 - i7)) & ((-i7) >> 63)) | (jArr[i6] >>> i7);
            long j2 = (i2 * ScatterMapKt.BitmaskLsb) ^ j;
            for (long j3 = (~j2) & (j2 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j3 != 0; j3 &= j3 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j3) >> 3) + i4) & i3;
                if (this.keys[iNumberOfTrailingZeros] == key) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((j & ((~j) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i5 += 8;
            i4 = (i4 + i5) & i3;
        }
    }

    public final String joinToString(CharSequence charSequence, CharSequence prefix, CharSequence postfix, int i, Function2<? super Float, ? super Float, ? extends CharSequence> transform) {
        long[] jArr;
        long[] jArr2;
        int i2;
        CharSequence separator = charSequence;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        float[] fArr = this.keys;
        float[] fArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i3 = 0;
            int i4 = 0;
            loop0: while (true) {
                long j = jArr3[i3];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i5 = 8;
                    int i6 = 8 - ((~(i3 - length)) >>> 31);
                    int i7 = 0;
                    while (i7 < i6) {
                        if ((j & 255) < 128) {
                            int i8 = (i3 << 3) + i7;
                            float f = fArr[i8];
                            float f2 = fArr2[i8];
                            i2 = i5;
                            if (i4 == i) {
                                sb.append((CharSequence) str);
                                break loop0;
                            }
                            if (i4 != 0) {
                                sb.append(separator);
                            }
                            jArr2 = jArr3;
                            sb.append(transform.invoke(Float.valueOf(f), Float.valueOf(f2)));
                            i4++;
                        } else {
                            jArr2 = jArr3;
                            i2 = i5;
                        }
                        j >>= i2;
                        i7++;
                        separator = charSequence;
                        i5 = i2;
                        jArr3 = jArr2;
                    }
                    jArr = jArr3;
                    if (i6 != i5) {
                        break;
                    }
                } else {
                    jArr = jArr3;
                }
                if (i3 == length) {
                    break;
                }
                i3++;
                separator = charSequence;
                jArr3 = jArr;
            }
            sb.append(postfix);
        } else {
            sb.append(postfix);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix, Function2<? super Float, ? super Float, ? extends CharSequence> transform) {
        long[] jArr;
        long[] jArr2;
        int i;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        float[] fArr = this.keys;
        float[] fArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i2 = 0;
            int i3 = 0;
            loop0: while (true) {
                long j = jArr3[i2];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8;
                    int i5 = 8 - ((~(i2 - length)) >>> 31);
                    int i6 = 0;
                    while (i6 < i5) {
                        if ((j & 255) < 128) {
                            int i7 = (i2 << 3) + i6;
                            float f = fArr[i7];
                            float f2 = fArr2[i7];
                            i = i4;
                            if (i3 == -1) {
                                sb.append((CharSequence) str);
                                break loop0;
                            }
                            if (i3 != 0) {
                                sb.append(separator);
                            }
                            Float fValueOf = Float.valueOf(f);
                            jArr2 = jArr3;
                            sb.append(transform.invoke(fValueOf, Float.valueOf(f2)));
                            i3++;
                        } else {
                            jArr2 = jArr3;
                            i = i4;
                        }
                        j >>= i;
                        i6++;
                        i4 = i;
                        jArr3 = jArr2;
                    }
                    jArr = jArr3;
                    if (i5 != i4) {
                        break;
                    }
                } else {
                    jArr = jArr3;
                }
                if (i2 == length) {
                    break;
                }
                i2++;
                jArr3 = jArr;
            }
            sb.append(postfix);
        } else {
            sb.append(postfix);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String joinToString(CharSequence separator, CharSequence prefix, Function2<? super Float, ? super Float, ? extends CharSequence> transform) {
        long[] jArr;
        long[] jArr2;
        int i;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        float[] fArr = this.keys;
        float[] fArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i2 = 0;
            int i3 = 0;
            loop0: while (true) {
                long j = jArr3[i2];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8;
                    int i5 = 8 - ((~(i2 - length)) >>> 31);
                    int i6 = 0;
                    while (i6 < i5) {
                        if ((j & 255) < 128) {
                            int i7 = (i2 << 3) + i6;
                            float f = fArr[i7];
                            float f2 = fArr2[i7];
                            i = i4;
                            if (i3 == -1) {
                                sb.append((CharSequence) str);
                                break loop0;
                            }
                            if (i3 != 0) {
                                sb.append(separator);
                            }
                            Float fValueOf = Float.valueOf(f);
                            jArr2 = jArr3;
                            sb.append(transform.invoke(fValueOf, Float.valueOf(f2)));
                            i3++;
                        } else {
                            jArr2 = jArr3;
                            i = i4;
                        }
                        j >>= i;
                        i6++;
                        i4 = i;
                        jArr3 = jArr2;
                    }
                    jArr = jArr3;
                    if (i5 != i4) {
                        break;
                    }
                } else {
                    jArr = jArr3;
                }
                if (i2 == length) {
                    break;
                }
                i2++;
                jArr3 = jArr;
            }
            sb.append((CharSequence) str);
        } else {
            sb.append((CharSequence) str);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String joinToString(CharSequence separator, Function2<? super Float, ? super Float, ? extends CharSequence> transform) {
        long[] jArr;
        long[] jArr2;
        int i;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        float[] fArr = this.keys;
        float[] fArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i2 = 0;
            int i3 = 0;
            loop0: while (true) {
                long j = jArr3[i2];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8;
                    int i5 = 8 - ((~(i2 - length)) >>> 31);
                    int i6 = 0;
                    while (i6 < i5) {
                        if ((j & 255) < 128) {
                            int i7 = (i2 << 3) + i6;
                            float f = fArr[i7];
                            float f2 = fArr2[i7];
                            i = i4;
                            if (i3 == -1) {
                                sb.append((CharSequence) str);
                                break loop0;
                            }
                            if (i3 != 0) {
                                sb.append(separator);
                            }
                            Float fValueOf = Float.valueOf(f);
                            jArr2 = jArr3;
                            sb.append(transform.invoke(fValueOf, Float.valueOf(f2)));
                            i3++;
                        } else {
                            jArr2 = jArr3;
                            i = i4;
                        }
                        j >>= i;
                        i6++;
                        jArr3 = jArr2;
                        i4 = i;
                    }
                    jArr = jArr3;
                    if (i5 != i4) {
                        break;
                    }
                } else {
                    jArr = jArr3;
                }
                if (i2 == length) {
                    break;
                }
                i2++;
                jArr3 = jArr;
            }
            sb.append((CharSequence) str);
        } else {
            sb.append((CharSequence) str);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String joinToString(Function2<? super Float, ? super Float, ? extends CharSequence> transform) {
        long[] jArr;
        long[] jArr2;
        int i;
        Intrinsics.checkNotNullParameter(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        float[] fArr = this.keys;
        float[] fArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i2 = 0;
            int i3 = 0;
            loop0: while (true) {
                long j = jArr3[i2];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8;
                    int i5 = 8 - ((~(i2 - length)) >>> 31);
                    int i6 = 0;
                    while (i6 < i5) {
                        if ((j & 255) < 128) {
                            int i7 = (i2 << 3) + i6;
                            float f = fArr[i7];
                            float f2 = fArr2[i7];
                            i = i4;
                            if (i3 == -1) {
                                sb.append((CharSequence) str);
                                break loop0;
                            }
                            if (i3 != 0) {
                                sb.append((CharSequence) str);
                            }
                            Float fValueOf = Float.valueOf(f);
                            jArr2 = jArr3;
                            sb.append(transform.invoke(fValueOf, Float.valueOf(f2)));
                            i3++;
                        } else {
                            jArr2 = jArr3;
                            i = i4;
                        }
                        j >>= i;
                        i6++;
                        jArr3 = jArr2;
                        i4 = i;
                    }
                    jArr = jArr3;
                    if (i5 != i4) {
                        break;
                    }
                } else {
                    jArr = jArr3;
                }
                if (i2 == length) {
                    break;
                }
                i2++;
                jArr3 = jArr;
            }
            sb.append((CharSequence) str);
        } else {
            sb.append((CharSequence) str);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
