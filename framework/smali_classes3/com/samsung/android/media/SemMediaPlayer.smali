.class public Lcom/samsung/android/media/SemMediaPlayer;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;,
        Lcom/samsung/android/media/SemMediaPlayer$SingleBackgroundMusic;,
        Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;,
        Lcom/samsung/android/media/SemMediaPlayer$BGMClass;,
        Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;,
        Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;,
        Lcom/samsung/android/media/SemMediaPlayer$EventHandler;,
        Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;,
        Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;,
        Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;,
        Lcom/samsung/android/media/SemMediaPlayer$SeekType;,
        Lcom/samsung/android/media/SemMediaPlayer$PlaybackEffect;,
        Lcom/samsung/android/media/SemMediaPlayer$PlaybackDirection;,
        Lcom/samsung/android/media/SemMediaPlayer$PlaybackRateAudioMode;
    }
.end annotation


# static fields
.field public static final AUDIO_VOLUME_FADE_IN:I = 0x1

.field public static final AUDIO_VOLUME_FADE_INOUT:I = 0x3

.field public static final AUDIO_VOLUME_FADE_NONE:I = 0x0

.field public static final AUDIO_VOLUME_FADE_OUT:I = 0x2

.field public static final KEY_PARAMETER_ENABLE_ALL_SUPER_SLOW_REGION:I = 0x8ca0

.field public static final KEY_PARAMETER_EXCLUDE_AUDIO_TRACK:I = 0x88bc

.field public static final KEY_PARAMETER_HOVERING_TYPE:I = 0x7cce

.field public static final KEY_PARAMETER_SMART_FITTING_APPLIED:I = 0x88bb

.field private static final MEDIA_CHANGED_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_RESOURCE_OVERSPEC:I = -0x1389

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_NO_AUDIO:I = 0x2adc

.field public static final MEDIA_INFO_NO_VIDEO:I = 0x2add

.field public static final MEDIA_INFO_SUPERSLOW_REGION:I = 0x2ade

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_AUDIO:I = 0x2ac6

.field public static final MEDIA_INFO_UNSUPPORTED_TICKPLAY:I = 0x2ac9

.field public static final MEDIA_INFO_UNSUPPORTED_VIDEO:I = 0x2ac7

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field private static final MEDIA_INIT_COMPLETE:I = 0x1

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field public static final PLAYBACK_DIRECTION_BACKWARD:I = 0x1

.field public static final PLAYBACK_DIRECTION_FORWARD:I = 0x0

.field public static final PLAYBACK_EFFECT_BACKWARD:I = 0x2

.field public static final PLAYBACK_EFFECT_FORWARD:I = 0x1

.field public static final PLAYBACK_EFFECT_NONE:I = 0x0

.field public static final PLAYBACK_EFFECT_SWING:I = 0x3

.field public static final PLAYBACK_RATE_AUDIO_MODE_DEFAULT:I = 0x0

.field public static final PLAYBACK_RATE_AUDIO_MODE_RESAMPLE:I = 0x2

.field public static final PLAYBACK_RATE_AUDIO_MODE_STRETCH:I = 0x1

.field public static final SEEK_TYPE_ACCURATE_FRAME:I = 0x1

.field public static final SEEK_TYPE_CLOSEST_SYNC_FRAME:I = 0x4

.field public static final SEEK_TYPE_ONE_FRAME_BACKWARD:I = 0x2

.field public static final SEEK_TYPE_ONE_FRAME_FORWARD:I = 0x3

.field public static final SEEK_TYPE_VIDEO_PREVIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemMediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private mBGMClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaPlayer$BGMClass;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

.field private mNativeContext:J

.field private mNativeSurfaceTexture:J

.field private mOnErrorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

.field private mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

.field private mOnPlaybackCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

.field private mOnSeekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

.field private mScreenOnWhilePlaying:Z

.field private mSpeedRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;",
            ">;"
        }
    .end annotation
.end field

.field private mStayAwake:Z

.field private mSuperSlowInfo:[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "semmediaplayer_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/media/SemMediaPlayer;->native_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSuperSlowInfo:[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->native_setup(Ljava/lang/Object;)V

    return-void
.end method

.method private native _crop(IIII)V
.end method

.method private native _getCurrentFrame()Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _init(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _seekTo(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setBackgroundMusic(Landroid/os/Parcel;)V
.end method

.method private native _setVideoScalingMode(I)V
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _setVolume(FF)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _updateRegionSEFData(ILandroid/os/Parcel;)Z
.end method

.method static synthetic access$000(Lcom/samsung/android/media/SemMediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnPlaybackCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/media/SemMediaPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnSeekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnErrorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;)[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSuperSlowInfo:[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnVideoSizeChangedListener:Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method private isVideoScalingModeSupported(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemMediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/media/SemMediaPlayer;->mEventHandler:Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private stayAwake(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mStayAwake:Z

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mStayAwake:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addBackgroundMusic(Landroid/content/res/AssetFileDescriptor;II)V
    .locals 3

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer$1;)V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->offset:J

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->length:J

    iput p2, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->startTimeMs:I

    iput p3, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->endTimeMs:I

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBackgroundMusic(Ljava/io/FileDescriptor;II)V
    .locals 3

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer$1;)V

    iput-object p1, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->offset:J

    const-wide v1, 0x7ffffffffffffffL

    iput-wide v1, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->length:J

    iput p2, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->startTimeMs:I

    iput p3, v0, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->endTimeMs:I

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRegion(IIII)V
    .locals 2

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer$1;)V

    iput p1, v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->speedRate:I

    iput p2, v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->videoStart:I

    iput p3, v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->videoEnd:I

    iput p4, v0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyBackgroundMusic()V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const-string v1, "SemMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBackgroundMusic  size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;

    iget-object v2, v2, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;

    iget-wide v2, v2, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->offset:J

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;

    iget-wide v2, v2, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->length:J

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;

    iget v2, v2, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->startTimeMs:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;

    iget v2, v2, Lcom/samsung/android/media/SemMediaPlayer$BGMClass;->endTimeMs:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->_setBackgroundMusic(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public applyRegion(II)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_4

    if-lez v2, :cond_0

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v3, v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->videoStart:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v3, v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->videoEnd:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v3, v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    if-eq v3, v4, :cond_1

    if-eq p2, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v3, v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v3, v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    if-eq v3, v4, :cond_2

    if-ne p2, v4, :cond_2

    const-string v3, "SemMediaPlayer"

    const-string v4, "Mismatched input of data."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    return v1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v3, v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->audioEnd:I

    if-ne v3, v4, :cond_3

    if-eq p2, v4, :cond_3

    const-string v3, "SemMediaPlayer"

    const-string v4, "Mismatched input of data."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    return v1

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;

    iget v3, v3, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->speedRate:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    if-eq p2, v4, :cond_5

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/media/SemMediaPlayer;->_updateRegionSEFData(ILandroid/os/Parcel;)Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSpeedRegions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return v3
.end method

.method public clearBackgoundMusic()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearBackgroundMusic()V
    .locals 2

    const-string v0, "SemMediaPlayer"

    const-string v1, "clearBackgroundMusic()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mBGMClassList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public crop(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/media/SemMediaPlayer;->_crop(IIII)V

    return-void
.end method

.method public easyPlaybackParams(FI)Landroid/media/PlaybackParams;
    .locals 3

    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio playback mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    nop

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->native_finalize()V

    return-void
.end method

.method public getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->_getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public native getPlaybackDirection()I
.end method

.method public native getPlaybackEffect()I
.end method

.method public native getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public getSuperSlowRegions()[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSuperSlowInfo:[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    return-object v0
.end method

.method public init(Ljava/io/FileDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public init(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/media/SemMediaPlayer;->_init(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public native isVideoDeflickerSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->_pause()V

    return-void
.end method

.method public playerSetVolume(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->_setVolume(FF)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnPlaybackCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnSeekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnErrorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnVideoSizeChangedListener:Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->_release()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->_reset()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->seekTo(II)V

    return-void
.end method

.method public seekTo(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->_seekTo(II)V

    return-void
.end method

.method public native setAudioVolumeFade(IIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setBackgroundMusic(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "SemMediaPlayer"

    const-string v1, "BackgroundMusic Null Pointer Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->writeToParcel()Landroid/os/Parcel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->_setBackgroundMusic(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method public native setLooping(Z)V
.end method

.method public setOnErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnErrorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    return-void
.end method

.method public setOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnPlaybackCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnSeekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mOnVideoSizeChangedListener:Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setParameter(II)Z
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public native setParameter(ILandroid/os/Parcel;)Z
.end method

.method public setParameter(ILjava/lang/String;)Z
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public native setPlaybackDirection(I)V
.end method

.method public native setPlaybackEffect(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setPlaybackParams(Landroid/media/PlaybackParams;)V
.end method

.method public native setPlaybackRange(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    const-string v0, "SemMediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mScreenOnWhilePlaying:Z

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->updateSurfaceScreenOn()V

    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "SemMediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method public native setVideoDeflickerEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public setVideoScalingMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->_setVideoScalingMode(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scaling mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setVolume(FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->playerSetVolume(FF)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "audio.offload.ignore_setawake"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "SemMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IGNORING setWakeMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_2
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/high16 v3, 0x20000000

    or-int/2addr v3, p2

    const-class v4, Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_3
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer;->_start()V

    return-void
.end method
