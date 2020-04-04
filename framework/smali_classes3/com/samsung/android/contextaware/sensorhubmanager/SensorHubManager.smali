.class public Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;,
        Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;,
        Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;,
        Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;
    }
.end annotation


# static fields
.field private static final DEBUG_SSP_INJECTION:Z = false

.field private static final HEADER_SIZE:I = 0x8

.field private static final INDEX_DATASIZE_INHEADER:I = 0x0

.field private static final INDEX_END_INHEADER:I = 0x6

.field private static final INDEX_END_VALUES:I = 0xf

.field private static final INDEX_START_INHEADER:I = 0x4

.field private static final INDEX_START_VALUES:I = 0x2

.field private static final SEND_SCONTEXT_DATA:I = 0x1

.field private static final SENSORHUB_EVENT_MAX_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "SensorHubManager"

.field private static final TYPE_SENSORHUB:I = 0x10032


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHubSensor:Landroid/hardware/Sensor;

.field private mInitializedSensorManager:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mMainLooper:Landroid/os/Looper;

.field private mPool:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

.field private mSensorListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mMainLooper:Landroid/os/Looper;

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mCtx:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mInitializedSensorManager:Z

    iput-object p2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mMainLooper:Landroid/os/Looper;

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mCtx:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->initSensorManager()Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mPool:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private disableSensorHubLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "SensorHubManager"

    const-string v1, "disableSensorHubLocked : no sensor or service "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private enableSensorHubLocked()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;

    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v2, "SensorHubManager"

    const-string v3, "hub register failed  "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string v0, "SensorHubManager"

    const-string v2, "enableSensorHubLocked: no sensor or service "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private initSensorManager()Z
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mInitializedSensorManager:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mCtx:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "SensorHubManager"

    const-string v1, "initSensorManager : cannot get sensormanager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    new-instance v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;-><init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;

    new-instance v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mPool:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10032

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_3

    const-string v0, "SensorHubManager"

    const-string v1, "initSensorManager : There is no sensor for hubmanager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "SensorHubManager"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v1, "SensorHubManager"

    const-string v4, "initSensorManager : The looper is null."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    new-instance v2, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$1;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$1;-><init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHandler:Landroid/os/Handler;

    :cond_5
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mInitializedSensorManager:Z

    :cond_6
    return v1
.end method


# virtual methods
.method public SendSensorHubData(I[B)I
    .locals 3

    array-length v0, p2

    const/4 v1, -0x1

    if-ge v0, p1, :cond_0

    const-string v0, "SensorHubManager"

    const-string v2, "SendSensorHubData failed, wrong data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0x400

    if-le p1, v0, :cond_1

    const-string v0, "SensorHubManager"

    const-string v2, "SendSensorHubData failed, too big data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    const-string v0, "SensorHubManager"

    const-string v2, "SendSensorHubData failed, no sensorhub"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    new-instance v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;-><init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;I[B)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    monitor-enter v0

    const/4 v2, 0x1

    :try_start_0
    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    iget-boolean v2, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public registerListener(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->registerListener(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;Landroid/os/Handler;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    move-object v2, v4

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    const-string v3, "SensorHubManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener: Listener= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_4

    new-instance v3, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;-><init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;Landroid/os/Handler;)V

    move-object v2, v3

    invoke-direct {p0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->enableSensorHubLocked()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "SensorHubManager"

    const-string/jumbo v4, "registerListener: enableSensorHubLocked fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterListener(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v4, "SensorHubManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterListener listener= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->disableSensorHubLocked()Z

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
