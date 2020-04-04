.class public final Lcom/samsung/android/media/SemMediaResourceHelper;
.super Ljava/lang/Object;
.source "SemMediaResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;,
        Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;,
        Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;,
        Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;,
        Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;,
        Lcom/samsung/android/media/SemMediaResourceHelper$ResourceType;,
        Lcom/samsung/android/media/SemMediaResourceHelper$CodecState;
    }
.end annotation


# static fields
.field public static final CODEC_STATE_RUNNING:I = 0x1

.field public static final CODEC_STATE_WAITING:I = 0x0

.field private static final DEBUG:Z = true

.field private static final EVENT_ADD_RESOURCE:I = 0x1

.field private static final EVENT_CAPACITY_ERROR:I = 0x4

.field private static final EVENT_ERROR:I = 0x64

.field private static final EVENT_REMOVE_RESOURCE:I = 0x2

.field private static final EVENT_UPDATE_STATE:I = 0x3

.field private static final LISTENER_TYPE_CAPACITY_ERROR:I = 0x2

.field private static final LISTENER_TYPE_INFO:I = 0x0

.field private static final LISTENER_TYPE_STATE:I = 0x1

.field private static final PARAMETER_CAPACITY_MAX:I = 0x0

.field private static final PARAMETER_CAPACITY_REMAINED:I = 0x1

.field public static final RESOURCE_PRIORITY_HIGH:I = 0xa

.field public static final RESOURCE_PRIORITY_LOW:I = 0x0

.field public static final RESOURCE_TYPE_ALL:I = 0x0

.field public static final RESOURCE_TYPE_AUDIO:I = 0x1

.field public static final RESOURCE_TYPE_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemMediaResourceHelper"

.field private static mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;


# instance fields
.field private mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

.field private mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

.field private mNativeContext:J

.field private mOwnResourceEventExcluded:Z

.field private mPid:I

.field private mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

.field private mResourceType:I

.field private mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    const-string/jumbo v0, "mediaresourcehelper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    :goto_0
    iput p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    iput-boolean p2, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_setup(Ljava/lang/Object;)V

    const-string v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemMediaResourceHelper() resourceType : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ownResourceEventExcluded : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", myPid : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    return-object v0
.end method

.method public static declared-synchronized createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;
    .locals 3

    const-class v0, Lcom/samsung/android/media/SemMediaResourceHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper;-><init>(IZ)V

    sput-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    goto :goto_0

    :cond_0
    const-string v1, "SemMediaResourceHelper"

    const-string v2, "SemMediaResourceHelper is already created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private dropOwnResourceEvent(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-lez v14, :cond_5

    const-string v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeMediaResourceInfo mOwnResourceEventExcluded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v12, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    move v0, v15

    :goto_0
    move v10, v0

    if-ge v10, v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    move v0, v15

    :goto_1
    move v8, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v11, v1

    goto :goto_2

    :cond_1
    move v11, v15

    :goto_2
    const-string v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] makeMediaResourceInfo resourceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isSecured : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", client id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    iget v0, v12, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    if-eqz v0, :cond_3

    iget v0, v12, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    if-ne v0, v9, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v27, v10

    goto :goto_4

    :cond_3
    :goto_3
    iget-boolean v0, v12, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v12, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v0, :cond_2

    iget v0, v12, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-lez v0, :cond_2

    iget v0, v12, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-eq v0, v7, :cond_2

    :cond_4
    new-instance v21, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    move-object/from16 v0, v21

    move-object v1, v12

    move v2, v9

    move v3, v8

    move v4, v7

    move-wide/from16 v22, v5

    move/from16 v24, v7

    move/from16 v7, v16

    move/from16 v25, v8

    move/from16 v8, v17

    move/from16 v26, v9

    move/from16 v9, v18

    move/from16 v27, v10

    move/from16 v10, v19

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;IZIJIIIIZ)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v27, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v13
.end method

.method private native native_enableObserver(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private native native_getCodecCapacity(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_getMediaResourceInfo(ILandroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_release()V
.end method

.method private native native_setResourcePriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemMediaResourceHelper;

    if-nez v0, :cond_0

    const-string v1, "SemMediaResourceHelper"

    const-string/jumbo v2, "semMediaResourceHelper ref is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    if-eqz v1, :cond_3

    if-eqz p4, :cond_2

    move-object v1, p4

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->dropOwnResourceEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SemMediaResourceHelper"

    const-string v4, "Skip event. mOwnResourceEventExcluded is enabled and owned resource"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object p4, v3

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_finalize()V

    return-void
.end method

.method public getMaxVideoCapacity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getCodecCapacity(I)I

    move-result v0

    return v0
.end method

.method public final getMediaResourceInfo(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getMediaResourceInfo(ILandroid/os/Parcel;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getRemainedVideoCapacity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getCodecCapacity(I)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_release()V

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    sput-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    return-void
.end method

.method public setCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    :goto_0
    return-void
.end method

.method public declared-synchronized setOwnResourceEventExcluded(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOwnResourceEventExcluded() ownResourceEventExcluded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    :goto_0
    return-void
.end method

.method public setResourcePriority(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setResourcePriority(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_setResourcePriority(I)V

    return-void
.end method

.method public declared-synchronized setResourceTypeForEvent(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setResourceTypeForEvent() resourceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVideoCapacityErrorListener(Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    :goto_0
    return-void
.end method
