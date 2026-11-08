package aio.tts;

import android.os.Debug;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* compiled from: Logging.kt */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001:\u0001,BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0016\b\u0002\u0010\f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\r\u0018\u00010\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0003J\u0006\u0010&\u001a\u00020$J\u0006\u0010'\u001a\u00020$J\b\u0010(\u001a\u00020$H\u0002J\b\u0010)\u001a\u00020$H\u0002J\u0010\u0010*\u001a\u00020$2\u0006\u0010+\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\r\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00010\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Laio/tts/AsyncLogWriter;", "", "name", "", "maxBytes", "", "trimToBytes", "reportPerf", "", "fileProvider", "Lkotlin/Function0;", "Ljava/io/File;", "headerLines", "", "<init>", "(Ljava/lang/String;JJZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "queue", "Ljava/util/concurrent/LinkedBlockingQueue;", "lock", "fmt", "Ljava/text/SimpleDateFormat;", "enqCount", "Ljava/util/concurrent/atomic/AtomicLong;", "enqNs", "enqMaxNs", "winStartMs", "batches", "", "wLines", "wNs", "wMaxNs", "qMax", "trims", "trimNs", "lastHealthMs", "add", "", "text", "flush", "clear", "run", "maybeReport", "trim", "f", "Entry", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
final class AsyncLogWriter {
    private int batches;
    private final AtomicLong enqCount;
    private final AtomicLong enqMaxNs;
    private final AtomicLong enqNs;
    private final Function0<File> fileProvider;
    private final SimpleDateFormat fmt;
    private final Function0<List<String>> headerLines;
    private long lastHealthMs;
    private final Object lock;
    private final long maxBytes;
    private final String name;
    private int qMax;
    private final LinkedBlockingQueue<Object> queue;
    private final boolean reportPerf;
    private long trimNs;
    private final long trimToBytes;
    private int trims;
    private int wLines;
    private long wMaxNs;
    private long wNs;
    private long winStartMs;

    /* JADX WARN: Multi-variable type inference failed */
    public AsyncLogWriter(String name, long j, long j2, boolean z, Function0<? extends File> fileProvider, Function0<? extends List<String>> function0) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(fileProvider, "fileProvider");
        this.name = name;
        this.maxBytes = j;
        this.trimToBytes = j2;
        this.reportPerf = z;
        this.fileProvider = fileProvider;
        this.headerLines = function0;
        this.queue = new LinkedBlockingQueue<>();
        this.lock = new Object();
        this.fmt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        this.enqCount = new AtomicLong();
        this.enqNs = new AtomicLong();
        this.enqMaxNs = new AtomicLong();
        this.winStartMs = System.currentTimeMillis();
        Thread thread = new Thread(new Runnable() { // from class: aio.tts.AsyncLogWriter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.run();
            }
        }, "aiotts-log-" + name);
        thread.setDaemon(true);
        thread.setPriority(1);
        thread.start();
    }

    public /* synthetic */ AsyncLogWriter(String str, long j, long j2, boolean z, Function0 function0, Function0 function02, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j, j2, z, function0, (i & 32) != 0 ? null : function02);
    }

    /* compiled from: Logging.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Laio/tts/AsyncLogWriter$Entry;", "", "ms", "", "text", "", "<init>", "(JLjava/lang/String;)V", "getMs", "()J", "getText", "()Ljava/lang/String;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    private static final class Entry {
        private final long ms;
        private final String text;

        public Entry(long j, String text) {
            Intrinsics.checkNotNullParameter(text, "text");
            this.ms = j;
            this.text = text;
        }

        public final long getMs() {
            return this.ms;
        }

        public final String getText() {
            return this.text;
        }
    }

    public final void add(String text) {
        long j;
        Intrinsics.checkNotNullParameter(text, "text");
        long jNanoTime = System.nanoTime();
        this.queue.offer(new Entry(System.currentTimeMillis(), text));
        long jNanoTime2 = System.nanoTime() - jNanoTime;
        this.enqCount.incrementAndGet();
        this.enqNs.addAndGet(jNanoTime2);
        do {
            j = this.enqMaxNs.get();
            if (jNanoTime2 <= j) {
                return;
            }
        } while (!this.enqMaxNs.compareAndSet(j, jNanoTime2));
    }

    public final void flush() {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.queue.offer(countDownLatch);
        try {
            countDownLatch.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
        }
    }

    public final void clear() {
        flush();
        synchronized (this.lock) {
            try {
                FilesKt.writeText$default(this.fileProvider.invoke(), "", null, 2, null);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                Integer.valueOf(Log.e("AllInOneTTS", this.name + " clear failed", th));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void run() {
        ArrayList arrayList = new ArrayList(256);
        while (true) {
            ArrayList arrayList2 = new ArrayList();
            try {
                arrayList.clear();
                arrayList.add(this.queue.take());
                this.queue.drainTo(arrayList, 2000);
                StringBuilder sb = new StringBuilder();
                Iterator it = arrayList.iterator();
                Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
                int i = 0;
                while (it.hasNext()) {
                    Object next = it.next();
                    Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                    if (next instanceof Entry) {
                        sb.append(this.fmt.format(new Date(((Entry) next).getMs()))).append("  ").append(((Entry) next).getText()).append('\n');
                        i++;
                    } else if (next instanceof CountDownLatch) {
                        arrayList2.add(next);
                    }
                }
                if (i > 0) {
                    long jNanoTime = System.nanoTime();
                    synchronized (this.lock) {
                        File fileInvoke = this.fileProvider.invoke();
                        String string = sb.toString();
                        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                        FilesKt.appendText$default(fileInvoke, string, null, 2, null);
                        if (fileInvoke.length() > this.maxBytes) {
                            long jNanoTime2 = System.nanoTime();
                            trim(fileInvoke);
                            this.trims++;
                            this.trimNs += System.nanoTime() - jNanoTime2;
                        }
                        Unit unit = Unit.INSTANCE;
                    }
                    long jNanoTime3 = System.nanoTime() - jNanoTime;
                    this.batches++;
                    this.wLines += i;
                    this.wNs += jNanoTime3;
                    if (jNanoTime3 > this.wMaxNs) {
                        this.wMaxNs = jNanoTime3;
                    }
                    if (i > this.qMax) {
                        this.qMax = i;
                    }
                    if (this.reportPerf) {
                        maybeReport();
                    }
                }
            } catch (Throwable th) {
                try {
                    Log.e("AllInOneTTS", this.name + " log write failed", th);
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        ((CountDownLatch) it2.next()).countDown();
                    }
                } finally {
                    Iterator it3 = arrayList2.iterator();
                    while (it3.hasNext()) {
                        ((CountDownLatch) it3.next()).countDown();
                    }
                }
            }
        }
    }

    private final void maybeReport() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.winStartMs < 30000) {
            return;
        }
        long andSet = this.enqCount.getAndSet(0L);
        long andSet2 = andSet > 0 ? (this.enqNs.getAndSet(0L) / andSet) / 1000 : 0L;
        long andSet3 = this.enqMaxNs.getAndSet(0L) / 1000;
        LinkedBlockingQueue<Object> linkedBlockingQueue = this.queue;
        long j = (jCurrentTimeMillis - this.winStartMs) / 1000;
        int i = this.wLines;
        int i2 = this.batches;
        long j2 = i2 > 0 ? (this.wNs / i2) / 1000000 : 0L;
        linkedBlockingQueue.offer(new Entry(jCurrentTimeMillis, "[LogPerf] last " + j + "s: lines=" + i + " enqueueAvg=" + andSet2 + "us enqueueMax=" + andSet3 + "us batches=" + i2 + " writeAvg=" + j2 + "ms writeMax=" + (this.wMaxNs / 1000000) + "ms maxBatchLines=" + this.qMax + " trims=" + this.trims + " trimMs=" + (this.trimNs / 1000000) + " fileKB=" + (this.fileProvider.invoke().length() / 1024) + " javaHeapMB=" + ((Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()) / 1048576) + " nativeHeapMB=" + (Debug.getNativeHeapAllocatedSize() / 1048576) + " threads=" + Thread.activeCount()));
        this.winStartMs = jCurrentTimeMillis;
        this.batches = 0;
        this.wLines = 0;
        this.wNs = 0L;
        this.wMaxNs = 0L;
        this.qMax = 0;
        this.trims = 0;
        this.trimNs = 0L;
        if (!Intrinsics.areEqual(this.name, "detailed") || jCurrentTimeMillis - this.lastHealthMs < ExternalEngines.FAILED_COOLDOWN_MS) {
            return;
        }
        this.lastHealthMs = jCurrentTimeMillis;
        this.queue.offer(new Entry(jCurrentTimeMillis, HealthProbe.INSTANCE.line()));
    }

    private final void trim(File f) throws IOException {
        int i;
        List<String> listInvoke;
        long length = f.length();
        if (length <= this.trimToBytes) {
            return;
        }
        File file = new File(f.getParentFile(), f.getName() + ".tmp");
        BufferedOutputStream randomAccessFile = new RandomAccessFile(f, "r");
        try {
            RandomAccessFile randomAccessFile2 = randomAccessFile;
            randomAccessFile2.seek(length - this.trimToBytes);
            byte[] bArr = new byte[65536];
            int i2 = randomAccessFile2.read(bArr);
            while (true) {
                if (i2 < 0) {
                    i = -1;
                    break;
                }
                int i3 = 0;
                while (i3 < i2 && bArr[i3] != 10) {
                    i3++;
                }
                if (i3 < i2) {
                    i = i3 + 1;
                    break;
                }
                i2 = randomAccessFile2.read(bArr);
            }
            OutputStream fileOutputStream = new FileOutputStream(file);
            randomAccessFile = fileOutputStream instanceof BufferedOutputStream ? (BufferedOutputStream) fileOutputStream : new BufferedOutputStream(fileOutputStream, 8192);
            try {
                BufferedOutputStream bufferedOutputStream = randomAccessFile;
                byte[] bytes = "=== earlier lines trimmed ===\n".getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                bufferedOutputStream.write(bytes);
                try {
                    Function0<List<String>> function0 = this.headerLines;
                    if (function0 != null && (listInvoke = function0.invoke()) != null) {
                        Iterator<T> it = listInvoke.iterator();
                        while (it.hasNext()) {
                            byte[] bytes2 = (((String) it.next()) + "\n").getBytes(Charsets.UTF_8);
                            Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
                            bufferedOutputStream.write(bytes2);
                        }
                    }
                } catch (Throwable unused) {
                }
                if (i >= 0 && i < i2) {
                    bufferedOutputStream.write(bArr, i, i2 - i);
                }
                while (i >= 0) {
                    int i4 = randomAccessFile2.read(bArr);
                    if (i4 < 0) {
                        break;
                    } else {
                        bufferedOutputStream.write(bArr, 0, i4);
                    }
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(randomAccessFile, null);
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(randomAccessFile, null);
                try {
                    Files.move(file.toPath(), f.toPath(), StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                } catch (Throwable unused2) {
                    FilesKt.copyTo$default(file, f, true, 0, 4, null);
                    file.delete();
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } finally {
            }
        }
    }
}
