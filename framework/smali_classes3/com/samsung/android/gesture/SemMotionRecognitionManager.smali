.class public Lcom/samsung/android/gesture/SemMotionRecognitionManager;
.super Ljava/lang/Object;
.source "SemMotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    }
.end annotation


# static fields
.field private static final DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final DEBUG_LEVEL_MID:I = 0x494d

.field public static final EVENT_DOUBLE_TAP:I = 0x8

.field public static final EVENT_LOCK_EXECUTE_L:I = 0x80

.field public static final EVENT_LOCK_EXECUTE_R:I = 0x100

.field public static final EVENT_PANNING_GALLERY:I = 0x20

.field public static final EVENT_PANNING_HOME:I = 0x40

.field public static final EVENT_POCKET_MODE:I = 0x800000

.field public static final EVENT_SHAKE:I = 0x2

.field public static final EVENT_SMART_ALERT_SETTING:I = 0x8000

.field public static final EVENT_SMART_SCROLL:I = 0x80000

.field public static final EVENT_TILT:I = 0x10

.field public static final EVENT_TILT_LEVEL_ZERO:I = 0x1000

.field public static final EVENT_TILT_LEVEL_ZERO_LAND:I = 0x4000

.field public static final EVENT_TILT_TO_UNLOCK:I = 0x800

.field public static final EVENT_VOLUME_DOWN:I = 0x200

.field public static final MOTION_ALL:I = 0x120405

.field public static final MOTION_CALL_POSE:I = 0x40000

.field public static final MOTION_DIRECT_CALLING:I = 0x400

.field public static final MOTION_FLAT:I = 0x2000

.field public static final MOTION_NUM:I = 0x15

.field public static final MOTION_OVERTURN:I = 0x1

.field public static final MOTION_OVERTURN_LOW_POWER:I = 0x20000

.field public static final MOTION_PALM_SWIPE:I = 0x400000

.field public static final MOTION_PALM_TOUCH:I = 0x200000

.field public static final MOTION_SCREEN_UP_STEADY:I = 0x10000

.field public static final MOTION_SENSOR_NUM:I = 0x4

.field public static final MOTION_SMART_ALERT:I = 0x4

.field public static final MOTION_SMART_RELAY:I = 0x100000

.field public static final MOTION_USE_ACC:I = 0x1

.field public static final MOTION_USE_ALL:I = 0xf

.field public static final MOTION_USE_ALWAYS:I = 0x40000000

.field public static final MOTION_USE_GYRO:I = 0x2

.field public static final MOTION_USE_LIGHT:I = 0x8

.field public static final MOTION_USE_PROX:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "MotionRecognitionManager"

.field private static final mMotionVersion:I = 0x1


# instance fields
.field private final mMainLooper:Landroid/os/Looper;

.field private mMovementCnt:I

.field private mSSPEnabled:Z

.field private final mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

.field private final mySemContextMotionListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;-><init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mySemContextMotionListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const-string/jumbo v0, "motion_recognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    iput-object p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    const-string/jumbo v1, "motion_recognition"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    const-string v1, "MotionRecognitionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "motionService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v0}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getSSPstatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSSPEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in getSSPstatus: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static EncodeLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "ro.debug_level"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " "

    return-object v1

    :cond_0
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    const/16 v2, 0x4f4c

    if-ne v1, v2, :cond_1

    const-string v2, " "

    return-object v2

    :cond_1
    const/16 v2, 0x494d

    if-eq v1, v2, :cond_3

    const/16 v2, 0x4948

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, " "

    return-object v2

    :cond_3
    :goto_0
    return-object p0

    :catch_0
    move-exception v1

    const-string v2, " "

    return-object v2
.end method

.method static synthetic access$000(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Lcom/samsung/android/gesture/IMotionRecognitionService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public static getMotionVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isValidMotionSensor(I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public isAvailable(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x400

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x200000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x400000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x800000

    if-eq p1, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v1, p1}, Lcom/samsung/android/gesture/IMotionRecognitionService;->isAvailable(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MotionRecognitionManager"

    const-string v3, "RemoteException in getSSPstatus: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_0
    return v0
.end method

.method public registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;IILandroid/os/Handler;)V
    .locals 10

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v6

    if-ne v6, p1, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "name :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v7

    and-int/2addr v7, p3

    if-eqz v7, :cond_0

    const-string v7, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  .registerListener : fail. already registered / listener count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move-object v1, v5

    const-string v7, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  .registerListener : already registered but need to update motion events / listener count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v4

    or-int/2addr p3, v4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    :cond_4
    if-nez v1, :cond_5

    new-instance v4, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-direct {v4, p0, p1, p3, p4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;-><init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V

    move-object v1, v4

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v4, p3, 0x4

    if-eqz v4, :cond_8

    :try_start_1
    iget-boolean v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSSPEnabled:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mySemContextMotionListener:Lcom/samsung/android/hardware/context/SemContextListener;

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    if-nez v4, :cond_6

    const-string v4, "MotionRecognitionManager"

    const-string v5, " [MOVEMENT_SERVICE] registerListener "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v5, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mySemContextMotionListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    goto :goto_2

    :cond_6
    const-string v4, "MotionRecognitionManager"

    const-string v5, " [MOVEMENT_SERVICE] registerListener : fail. already registered "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 p3, p3, -0x5

    goto :goto_4

    :cond_7
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v4}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getSSPstatus()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSSPEnabled:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "MotionRecognitionManager"

    const-string v6, "RemoteException in getSSPstatus: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    const-string v4, "MotionRecognitionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSP disabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSSPEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v4

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz p3, :cond_9

    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v4, v1, p2, p3}, Lcom/samsung/android/gesture/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :goto_5
    nop

    :try_start_4
    const-string v5, "MotionRecognitionManager"

    const-string v6, "RemoteException in registerListener : "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_9
    :goto_6
    nop

    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "name :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MotionRecognitionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  .registerListener : success. listener count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", motion_events="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_8

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_a
    :goto_8
    return-void
.end method

.method public registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;IILandroid/os/Handler;)V

    return-void
.end method

.method public resetMotionEngine()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v0}, Lcom/samsung/android/gesture/IMotionRecognitionService;->resetMotionEngine()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in resetMotionEngine: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public setMotionAngle(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 0

    return-void
.end method

.method public setMotionTiltLevel(IIIIII)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/gesture/IMotionRecognitionService;->setMotionTiltLevel(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in setMotionTiltLevel: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v0, "MotionRecognitionManager"

    const-string v1, "  .setMotionTiltLevel : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSmartMotionAngle(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p1, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v4, v3, p2}, Lcom/samsung/android/gesture/IMotionRecognitionService;->setMotionAngle(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "MotionRecognitionManager"

    const-string v6, "RemoteException in setSmartMotionAngle: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "MotionRecognitionManager"

    const-string v3, "  .setSmartMotionAngle : listener has to be registered first"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setTestSensor()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v0}, Lcom/samsung/android/gesture/IMotionRecognitionService;->setTestSensor()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in setTestSensor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@ member "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v5

    if-ne v5, p1, :cond_6

    iget-object v5, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v2

    :try_start_1
    invoke-virtual {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSSPEnabled:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    iget v6, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    if-gtz v6, :cond_2

    const-string v6, "MotionRecognitionManager"

    const-string v7, " [MOVEMENT_SERVICE] unregisterListener "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v6, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mySemContextMotionListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/4 v7, 0x5

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    :cond_2
    const-string v2, "MotionRecognitionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unregisterListener - mMovementCnt : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v2}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getSSPstatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSSPEnabled:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    const-string v6, "MotionRecognitionManager"

    const-string v7, "RemoteException in getSSPstatus: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const-string v2, "MotionRecognitionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SSP disabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSSPEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v2, v4}, Lcom/samsung/android/gesture/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    move v5, v2

    :cond_4
    :goto_3
    invoke-virtual {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v2

    and-int/lit8 v2, v2, -0x5

    if-eqz v2, :cond_5

    if-nez v5, :cond_5

    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v2, v4}, Lcom/samsung/android/gesture/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_4
    const-string v6, "MotionRecognitionManager"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    invoke-virtual {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->resetListener()V

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_7
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MotionRecognitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .unregisterListener : / listener count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v5

    not-int v6, p2

    and-int v2, v5, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "name :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update listener "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",  motionevents = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

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

.method public useMotionAlways(Lcom/samsung/android/gesture/SemMotionEventListener;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
