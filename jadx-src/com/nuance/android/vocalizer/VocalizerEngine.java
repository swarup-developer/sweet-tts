package com.nuance.android.vocalizer;

import aio.tts.DetailedLog;
import aio.tts.ExternalVoices;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.nuance.android.vocalizer.internal.VocalizerAssetManager;
import com.nuance.android.vocalizer.internal.VocalizerFileInfo;
import com.nuance.android.vocalizer.internal.VocalizerResourceInfo;
import com.nuance.android.vocalizer.internal.VocalizerStatusInfo;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.Semaphore;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VocalizerEngine.kt */
@Metadata(d1 = {"\u0000Þ\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0017\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0012\n\u0002\b\u0019\u0018\u0000 \u0095\u00012\u00020\u0001:\u0004\u0094\u0001\u0095\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010L\u001a\u00020\u00112\u0006\u0010M\u001a\u00020FH\u0002J\u0012\u0010N\u001a\u0004\u0018\u00010O2\u0006\u0010P\u001a\u00020QH\u0002J\u0010\u0010R\u001a\u00020G2\u0006\u0010S\u001a\u00020\u000eH\u0002J\u0006\u0010T\u001a\u00020GJ\u000e\u0010U\u001a\u00020G2\u0006\u0010V\u001a\u00020\u001cJ$\u0010W\u001a\u00020G2\u0006\u0010X\u001a\u00020Q2\u0006\u0010Y\u001a\u00020\u000e2\f\u0010Z\u001a\b\u0012\u0004\u0012\u00020G0[J\b\u0010\\\u001a\u00020GH\u0002J\u000e\u0010]\u001a\u00020\u00112\u0006\u0010^\u001a\u00020(J\u001a\u0010f\u001a\u00020\u00112\u0006\u0010g\u001a\u00020Q2\b\b\u0002\u0010^\u001a\u00020(H\u0002J\u0006\u0010h\u001a\u00020GJ\u0006\u0010i\u001a\u00020GJ\t\u0010j\u001a\u00020GH\u0086 J\t\u0010k\u001a\u00020GH\u0086 J\u0014\u0010l\u001a\b\u0012\u0004\u0012\u00020\u001c0>H\u0086 ¢\u0006\u0002\u0010mJ\t\u0010n\u001a\u00020;H\u0086 J\t\u0010o\u001a\u00020\u000eH\u0086 J\t\u0010p\u001a\u00020\u000eH\u0086 J\t\u0010q\u001a\u00020\u000eH\u0086 J\t\u0010r\u001a\u00020sH\u0086 J\t\u0010t\u001a\u00020\u000eH\u0086 J\t\u0010u\u001a\u00020\u000eH\u0086 J\t\u0010v\u001a\u00020\u000eH\u0086 J\t\u0010w\u001a\u00020\u000eH\u0086 J\u0011\u0010x\u001a\u00020\u00112\u0006\u0010y\u001a\u00020QH\u0086 J\u0011\u0010z\u001a\u00020\u00112\u0006\u0010V\u001a\u00020\u001cH\u0086 J\u0019\u0010{\u001a\u00020)2\u0006\u0010|\u001a\u00020}2\u0006\u0010P\u001a\u00020QH\u0086 J\u0011\u0010~\u001a\u00020G2\u0006\u0010\u007f\u001a\u00020)H\u0086 J\n\u0010\u0080\u0001\u001a\u00020GH\u0086 J\u0013\u0010\u0081\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u000eH\u0086 J\u0013\u0010\u0083\u0001\u001a\u00020G2\u0007\u0010\u0084\u0001\u001a\u00020\u0011H\u0086 J\u0013\u0010\u0085\u0001\u001a\u00020G2\u0007\u0010\u0086\u0001\u001a\u00020\u000eH\u0086 J\u0013\u0010\u0087\u0001\u001a\u00020G2\u0007\u0010\u0088\u0001\u001a\u00020\u000eH\u0086 J\u0013\u0010\u0089\u0001\u001a\u00020G2\u0007\u0010\u008a\u0001\u001a\u00020\u000eH\u0086 J\u0013\u0010\u008b\u0001\u001a\u00020G2\u0007\u0010\u008c\u0001\u001a\u00020\u000eH\u0086 J\u0013\u0010\u008d\u0001\u001a\u00020G2\u0007\u0010\u008a\u0001\u001a\u00020\u000eH\u0086 J\u0013\u0010\u008e\u0001\u001a\u00020G2\u0007\u0010\u008f\u0001\u001a\u00020\u000eH\u0086 J\u0013\u0010\u0090\u0001\u001a\u00020G2\u0007\u0010\u0091\u0001\u001a\u00020\u000eH\u0086 J\u0012\u0010\u0092\u0001\u001a\u00020G2\u0006\u0010X\u001a\u00020QH\u0086 J\n\u0010\u0093\u0001\u001a\u00020GH\u0086 R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020)0'X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010+\u001a\u00020(8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00100\u001a\b\u0012\u0004\u0012\u00020201X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00103\u001a\b\u0012\u0004\u0012\u00020\t01X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00108\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010:\u001a\u0004\u0018\u00010;X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010=\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010>X\u0082\u000e¢\u0006\u0004\n\u0002\u0010?R\u0012\u0010@\u001a\u00020(8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020BX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020BX\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010D\u001a\u0010\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G\u0018\u00010EX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u001e\u0010`\u001a\u00020(2\u0006\u0010_\u001a\u00020(@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\ba\u0010bR\u000e\u0010c\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010d\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010e\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0096\u0001"}, d2 = {"Lcom/nuance/android/vocalizer/VocalizerEngine;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "audioOutputVolume", "", "currentSpeechItem", "Lcom/nuance/android/vocalizer/VocalizerSpeechItem;", "mAssetManager", "Lcom/nuance/android/vocalizer/internal/VocalizerAssetManager;", "mAudioBufferPayload", "mAudioBytesSent", "", "mAudioBytesSentCurrentSynthesis", "mAudioListenerOnlySamples", "", "mAudioOutputListener", "Lcom/nuance/android/vocalizer/VocalizerAudioOutputListener;", "mAudioSettings", "Lcom/nuance/android/vocalizer/VocalizerAudioSettings;", "mAudioStream", "Landroid/media/AudioTrack;", "mAudioStreamChannel", "mAutoInit", "mContext", "mCurrentVoice", "Lcom/nuance/android/vocalizer/VocalizerVoice;", "mCustomAudioSettings", "mEngineListener", "Lcom/nuance/android/vocalizer/VocalizerEngineListener;", "mHandler", "Landroid/os/Handler;", "mInitThread", "Ljava/lang/Thread;", "mInitialized", "mInternalAudioBufferPayload", "mLoadedResources", "Ljava/util/Hashtable;", "", "Lcom/nuance/android/vocalizer/internal/VocalizerResourceInfo;", "mMaxAudioBufferSize", "mNativeEnginePtr", "mNotifyNewVoiceList", "mPrevConfiguration", "Lcom/nuance/android/vocalizer/VocalizerEngine$EngineConfiguration;", "mReloading", "mScheduledSpeechMarks", "Ljava/util/Vector;", "Lcom/nuance/android/vocalizer/VocalizerSpeechMark;", "mSpeechItems", "mSpeechMarkListener", "Lcom/nuance/android/vocalizer/VocalizerSpeechMarkListener;", "mState", "mStopRequested", "mSynthThread", "mSynthThreadPriority", "mVersion", "Lcom/nuance/android/vocalizer/VocalizerVersion;", "mVocalizerSamplesRead", "mVoiceList", "", "[Lcom/nuance/android/vocalizer/VocalizerVoice;", "mainThreadId", "pauseSemaphore", "Ljava/util/concurrent/Semaphore;", "streamSemaphore", "onSamples", "Lkotlin/Function1;", "", "", "getOnSamples", "()Lkotlin/jvm/functions/Function1;", "setOnSamples", "(Lkotlin/jvm/functions/Function1;)V", "audioSamplesReceived", "samples", "openAssetFile", "Lcom/nuance/android/vocalizer/internal/VocalizerFileInfo;", "name", "", "closeAssetFile", "descriptor", "markInitialized", "markVoiceLoaded", "voice", "speakOnSynthThread", "text", "sampleRateHz", "onComplete", "Lkotlin/Function0;", "closeAudioStream", "requestAbort", "gen", "value", "synthGen", "getSynthGen", "()J", "abortLock", "synthRunning", "abortSent", "sendAbort", "who", "debugRawStop", "stop", "createNativeEngine", "destroyNativeEngine", "getAvailableVoiceListNative", "()[Lcom/nuance/android/vocalizer/VocalizerVoice;", "getEngineVersion", "getPitch", "getRate", "getReadMode", "getStatInfo", "Lcom/nuance/android/vocalizer/internal/VocalizerStatusInfo;", "getTextFormat", "getTextMode", "getVolume", "getWaitFactor", "initializeNative", "pipelineHeaders", "loadVoiceNative", "nativeLoadResource", "data", "", "nativeUnloadResource", "resource", "releaseNative", "setAudioBufferSize", "size", "setEnableMarks", "enable", "setPitch", "pitch", "setRate", "rate", "setReadMode", "mode", "setTextFormat", "format", "setTextMode", "setVolume", "volume", "setWaitFactor", "factor", "speakNative", "stopSpeechNative", "EngineConfiguration", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VocalizerEngine {
    public static final int DEFAULT_PITCH = 100;
    public static final int DEFAULT_RATE = 100;
    public static final int DEFAULT_READMODE = 1;
    public static final int DEFAULT_TEXTFORMAT = 0;
    public static final int DEFAULT_TEXTMODE = 1;
    public static final int DEFAULT_VOLUME = 80;
    public static final int DEFAULT_WAIT_FACTOR = 1;
    public static final int READMODE_CHAR = 2;
    public static final int READMODE_SENT = 1;
    public static final int READMODE_WORD = 3;
    public static final int STATE_INITIALIZED = 2;
    public static final int STATE_INIT_ERROR = 6;
    public static final int STATE_PAUSED = 5;
    public static final int STATE_READY = 4;
    public static final int STATE_SPEAKING = 3;
    public static final int STATE_UNINITIALIZED = 1;
    public static final int TEXTFORMAT_NORM = 0;
    public static final int TEXTFORMAT_SSML = 1;
    public static final int TEXTMODE_SMS = 2;
    public static final int TEXTMODE_STANDARD = 1;
    private final Object abortLock;
    private boolean abortSent;
    private float audioOutputVolume;
    private VocalizerSpeechItem currentSpeechItem;
    private VocalizerAssetManager mAssetManager;
    private float mAudioBufferPayload;
    private int mAudioBytesSent;
    private int mAudioBytesSentCurrentSynthesis;
    private boolean mAudioListenerOnlySamples;
    private VocalizerAudioOutputListener mAudioOutputListener;
    private VocalizerAudioSettings mAudioSettings;
    private AudioTrack mAudioStream;
    private int mAudioStreamChannel;
    private boolean mAutoInit;
    private Context mContext;
    private VocalizerVoice mCurrentVoice;
    private VocalizerAudioSettings mCustomAudioSettings;
    private VocalizerEngineListener mEngineListener;
    private Handler mHandler;
    private Thread mInitThread;
    private boolean mInitialized;
    private float mInternalAudioBufferPayload;
    private Hashtable<Long, VocalizerResourceInfo> mLoadedResources;
    private int mMaxAudioBufferSize;
    public long mNativeEnginePtr;
    private boolean mNotifyNewVoiceList;
    private EngineConfiguration mPrevConfiguration;
    private boolean mReloading;
    private Vector<VocalizerSpeechMark> mScheduledSpeechMarks;
    private Vector<VocalizerSpeechItem> mSpeechItems;
    private VocalizerSpeechMarkListener mSpeechMarkListener;
    private int mState;
    private boolean mStopRequested;
    private volatile Thread mSynthThread;
    private int mSynthThreadPriority;
    private VocalizerVersion mVersion;
    private int mVocalizerSamplesRead;
    private VocalizerVoice[] mVoiceList;
    public long mainThreadId;
    private Function1<? super short[], Unit> onSamples;
    private Semaphore pauseSemaphore;
    private Semaphore streamSemaphore;
    private volatile long synthGen;
    private boolean synthRunning;

    /* compiled from: VocalizerEngine.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/nuance/android/vocalizer/VocalizerEngine$EngineConfiguration;", "", "<init>", "()V", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class EngineConfiguration {
    }

    public final native void createNativeEngine();

    public final native void destroyNativeEngine();

    public final native VocalizerVoice[] getAvailableVoiceListNative();

    public final native VocalizerVersion getEngineVersion();

    public final native int getPitch();

    public final native int getRate();

    public final native int getReadMode();

    public final native VocalizerStatusInfo getStatInfo();

    public final native int getTextFormat();

    public final native int getTextMode();

    public final native int getVolume();

    public final native int getWaitFactor();

    public final native boolean initializeNative(String pipelineHeaders);

    public final native boolean loadVoiceNative(VocalizerVoice voice);

    public final native VocalizerResourceInfo nativeLoadResource(byte[] data, String name);

    public final native void nativeUnloadResource(VocalizerResourceInfo resource);

    public final native void releaseNative();

    public final native boolean setAudioBufferSize(int size);

    public final native void setEnableMarks(boolean enable);

    public final native void setPitch(int pitch);

    public final native void setRate(int rate);

    public final native void setReadMode(int mode);

    public final native void setTextFormat(int format);

    public final native void setTextMode(int mode);

    public final native void setVolume(int volume);

    public final native void setWaitFactor(int factor);

    public final native void speakNative(String text);

    public final native void stopSpeechNative();

    public VocalizerEngine(Context context) throws IOException {
        Intrinsics.checkNotNullParameter(context, "context");
        this.mAssetManager = new VocalizerAssetManager(context, ExternalVoices.INSTANCE);
        this.mAudioBufferPayload = 2.5f;
        this.mAudioSettings = new VocalizerAudioSettings();
        this.mAudioStreamChannel = 3;
        this.mAutoInit = true;
        this.mContext = context;
        Looper looperMyLooper = Looper.myLooper();
        this.mHandler = new Handler(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper);
        this.mInternalAudioBufferPayload = 10.0f;
        this.mLoadedResources = new Hashtable<>();
        this.mMaxAudioBufferSize = 65536;
        this.mScheduledSpeechMarks = new Vector<>();
        this.mSpeechItems = new Vector<>();
        this.mState = 1;
        this.mSynthThreadPriority = 5;
        this.mainThreadId = Thread.currentThread().getId();
        this.pauseSemaphore = new Semaphore(1);
        this.streamSemaphore = new Semaphore(1);
        VocalizerAssetManager vocalizerAssetManager = this.mAssetManager;
        if (vocalizerAssetManager != null) {
            vocalizerAssetManager.initialize();
        }
        this.abortLock = new Object();
    }

    public final Function1<short[], Unit> getOnSamples() {
        return this.onSamples;
    }

    public final void setOnSamples(Function1<? super short[], Unit> function1) {
        this.onSamples = function1;
    }

    private final boolean audioSamplesReceived(short[] samples) {
        Function1<? super short[], Unit> function1 = this.onSamples;
        if (function1 == null) {
            return true;
        }
        function1.invoke(samples);
        return true;
    }

    private final VocalizerFileInfo openAssetFile(String name) {
        VocalizerAssetManager vocalizerAssetManager = this.mAssetManager;
        if (vocalizerAssetManager != null) {
            return vocalizerAssetManager.openAssetFile(name);
        }
        return null;
    }

    private final void closeAssetFile(int descriptor) {
        VocalizerAssetManager vocalizerAssetManager = this.mAssetManager;
        if (vocalizerAssetManager != null) {
            vocalizerAssetManager.closeAssetFile(descriptor);
        }
    }

    public final void markInitialized() {
        this.mInitialized = true;
        this.mState = 2;
    }

    public final void markVoiceLoaded(VocalizerVoice voice) {
        Intrinsics.checkNotNullParameter(voice, "voice");
        this.mCurrentVoice = voice;
        this.mState = 4;
    }

    public final void speakOnSynthThread(final String text, int sampleRateHz, final Function0<Unit> onComplete) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        VocalizerAudioSettings vocalizerAudioSettings = this.mAudioSettings;
        if (vocalizerAudioSettings == null) {
            vocalizerAudioSettings = new VocalizerAudioSettings();
            this.mAudioSettings = vocalizerAudioSettings;
        }
        vocalizerAudioSettings.mRate = sampleRateHz;
        vocalizerAudioSettings.mChannels = 1;
        int minBufferSize = AudioTrack.getMinBufferSize(vocalizerAudioSettings.mRate, vocalizerAudioSettings.convertToAudioStreamChannel(), 2);
        float f = minBufferSize;
        int iMin = Math.min(this.mMaxAudioBufferSize, (int) (Math.max(this.mAudioBufferPayload, 1.0f) * f));
        int iMin2 = Math.min(this.mMaxAudioBufferSize, (int) (Math.max(this.mInternalAudioBufferPayload, 1.0f) * f));
        int i = (iMin2 / 2) * 2;
        Log.i("AllInOneTTS", "minAudioBufferSize: " + iMin + " minInternalBufferSize: " + iMin2 + " hardwareMinBufferSize: " + minBufferSize);
        Log.i("AllInOneTTS", "Internal buffer size: " + i);
        vocalizerAudioSettings.mAudioBufferSize = (iMin / 2) * 2;
        if (!setAudioBufferSize(i)) {
            Log.e("AllInOneTTS", "setAudioBufferSize(" + i + ") FAILED -- native rejected the buffer, not proceeding");
            onComplete.invoke();
            return;
        }
        AudioTrack audioTrack = this.mAudioStream;
        if (audioTrack == null || audioTrack.getSampleRate() != vocalizerAudioSettings.mRate) {
            if (audioTrack != null) {
                closeAudioStream();
            }
            AudioAttributes.Builder builder = new AudioAttributes.Builder();
            int i2 = this.mAudioStreamChannel;
            if (i2 >= 0 && i2 < 6) {
                builder.setLegacyStreamType(i2);
            } else if (i2 == 10) {
                builder.setUsage(11);
            } else {
                builder.setUsage(1);
            }
            builder.setContentType(2);
            AudioTrack audioTrack2 = new AudioTrack(builder.build(), new AudioFormat.Builder().setSampleRate(vocalizerAudioSettings.mRate).setEncoding(2).setChannelMask(vocalizerAudioSettings.convertToAudioStreamChannel()).build(), vocalizerAudioSettings.mAudioBufferSize, 1, 0);
            audioTrack2.setVolume(this.audioOutputVolume);
            this.mAudioStream = audioTrack2;
            audioTrack = audioTrack2;
        }
        try {
            audioTrack.play();
        } catch (Exception e) {
            Log.e("AllInOneTTS", "speakOnSynthThread: AudioTrack.play() failed", e);
        }
        synchronized (this.abortLock) {
            this.synthRunning = true;
            this.abortSent = false;
            this.synthGen++;
        }
        Thread thread = new Thread(new Runnable() { // from class: com.nuance.android.vocalizer.VocalizerEngine$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                VocalizerEngine.speakOnSynthThread$lambda$5(this.f$0, text, onComplete);
            }
        });
        thread.setPriority(this.mSynthThreadPriority);
        this.mSynthThread = thread;
        thread.start();
    }

    static final void speakOnSynthThread$lambda$5(VocalizerEngine vocalizerEngine, String str, Function0 function0) {
        try {
            vocalizerEngine.speakNative(str);
            synchronized (vocalizerEngine.abortLock) {
                vocalizerEngine.synthRunning = false;
                Unit unit = Unit.INSTANCE;
            }
            try {
                AudioTrack audioTrack = vocalizerEngine.mAudioStream;
                if (audioTrack != null) {
                    audioTrack.pause();
                }
            } catch (Throwable unused) {
            }
            function0.invoke();
        } catch (Throwable th) {
            synchronized (vocalizerEngine.abortLock) {
                vocalizerEngine.synthRunning = false;
                Unit unit2 = Unit.INSTANCE;
                try {
                    AudioTrack audioTrack2 = vocalizerEngine.mAudioStream;
                    if (audioTrack2 != null) {
                        audioTrack2.pause();
                    }
                } catch (Throwable unused2) {
                }
                function0.invoke();
                throw th;
            }
        }
    }

    private final void closeAudioStream() throws IllegalStateException {
        AudioTrack audioTrack = this.mAudioStream;
        if (audioTrack == null) {
            return;
        }
        try {
            audioTrack.stop();
        } catch (Exception e) {
            Log.e("AllInOneTTS", "closeAudioStream: stop() failed", e);
        }
        audioTrack.release();
        this.mAudioStream = null;
    }

    public final boolean requestAbort(long gen) {
        return sendAbort("requestAbort (framework refused audio)", gen);
    }

    public final long getSynthGen() {
        return this.synthGen;
    }

    static /* synthetic */ boolean sendAbort$default(VocalizerEngine vocalizerEngine, String str, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = -1;
        }
        return vocalizerEngine.sendAbort(str, j);
    }

    private final boolean sendAbort(String who, long gen) {
        synchronized (this.abortLock) {
            if (gen >= 0) {
                if (gen != this.synthGen) {
                    DetailedLog.INSTANCE.log("Engine", who + ": abort NOT sent, it was for synthesis " + gen + " and synthesis " + this.synthGen + " is running now");
                    return false;
                }
            }
            if (!this.synthRunning) {
                DetailedLog.INSTANCE.log("Engine", who + ": abort NOT sent, nothing is synthesizing (a stale stop would break the engine)");
                return false;
            }
            if (this.abortSent) {
                DetailedLog.INSTANCE.log("Engine", who + ": abort NOT sent, already sent for this synthesis");
                return false;
            }
            this.abortSent = true;
            DetailedLog.INSTANCE.log("Engine", who + ": abort sent to the native engine");
            stopSpeechNative();
            return true;
        }
    }

    public final void debugRawStop() {
        stopSpeechNative();
    }

    public final void stop() {
        Thread thread = this.mSynthThread;
        if (thread == null) {
            return;
        }
        sendAbort$default(this, "stop (screen reader)", 0L, 2, null);
        try {
            thread.join(2000L);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
        this.mSynthThread = null;
    }

    static {
        System.loadLibrary("NuanceVocalizer");
    }
}
