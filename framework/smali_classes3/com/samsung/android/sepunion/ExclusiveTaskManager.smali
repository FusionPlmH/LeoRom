.class public Lcom/samsung/android/sepunion/ExclusiveTaskManager;
.super Ljava/lang/Object;
.source "ExclusiveTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sepunion/ExclusiveTaskManager$MyCallback;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_MENU:I = 0x39

.field public static final AIR_COMMAND:I = 0x16

.field public static final AIR_MOTION_ENGINE:I = 0x20

.field public static final AIR_MOTION_WAKE_UP:I = 0x1f

.field public static final AIR_VIEW:I = 0x15

.field public static final AOD:I = 0x1a

.field public static final ASSISTANT_MENU:I = 0x5

.field public static final BLUELIGHT_FILTER:I = 0x25

.field public static final CAMERA_QUICK_LAUNCH:I = 0x24

.field public static final CLICK_AFTER_POINTER_STOP:I = 0x7

.field public static final COLOR_BLIND:I = 0xa

.field public static final COLOR_CORRECTION_DALTONIZER:I = 0x2a

.field public static final COLOR_INVERSION:I = 0x2b

.field public static final COLOR_LENS:I = 0xb

.field public static final DARK_SCREEN:I = 0x10

.field public static final DARK_THEME:I = 0x3f

.field public static final DB_TYPE_GLOBAL:I = 0x1

.field public static final DB_TYPE_SECURE:I = 0x0

.field public static final DB_TYPE_SYSTEM:I = 0x2

.field private static final DEBUG:Z = false

.field public static final DIRECT_ACCESS:I = 0xf

.field public static final DIRECT_CALL:I = 0x3b

.field public static final DIRECT_PEN_INPUT:I = 0x17

.field public static final EASY_MUTE:I = 0x26

.field public static final EDGE_FEED:I = 0x11

.field public static final EDGE_LIGHTNING:I = 0x1c

.field public static final EDGE_PEOPLE:I = 0x13

.field public static final EDGE_SCREEN:I = 0x12

.field public static final EDGE_TASK:I = 0x14

.field public static final FLASH_NOTIFICATION:I = 0x2d

.field public static final GRAY_SCALE:I = 0xd

.field public static final HEARING_AID:I = 0x2f

.field public static final HIGH_CONTRAST_FONT:I = 0x28

.field public static final IGNORE_REPEAT:I = 0x36

.field public static final INTERACTION_CONTROL:I = 0x6

.field public static final LARGE_POINTER_ICON:I = 0x2c

.field public static final MAGNIFICATION_GESTURE:I = 0x3

.field public static final MAGNIFICATION_GESTURE_NAVI:I = 0x4

.field public static final MAGNIFIER_WINDOW:I = 0x2

.field public static final MONO_AUDIO:I = 0x31

.field public static final MOTION_MUTE:I = 0x3c

.field public static final MULTI_WINDOW:I = 0x1b

.field public static final NAVIBAR_GESTURE:I = 0x37

.field public static final NAVIBAR_SHOW_HIDE:I = 0x23

.field public static final NEGATIVE_COLOR:I = 0xc

.field public static final NIGHT_CLOCK:I = 0x21

.field public static final NIGHT_MODE:I = 0x38

.field public static final NOTIFICATION_REMINDER:I = 0x34

.field public static final ONE_HAND_MODE:I = 0x18

.field public static final PALM_MUTE:I = 0x3d

.field public static final PALM_SWIPE:I = 0x19

.field public static final PIN_WINDOW:I = 0x22

.field public static final REMOVE_ANIMATION:I = 0x27

.field public static final SCREEN_NOTIFICATION:I = 0x2e

.field public static final SELECT2SPEAK:I = 0x3a

.field public static final SHOW_BUTTON_SHAPE:I = 0x29

.field public static final SINGLE_TAP_MODE:I = 0x33

.field public static final SMART_ALERT:I = 0x3e

.field public static final SMART_CAPTURE:I = 0x1d

.field public static final SMART_STAY:I = 0x1e

.field public static final SOUND_BALANCE:I = 0x30

.field public static final SOUND_DETECTOR_BABY_CRY:I = 0x8

.field public static final SOUND_DETECTOR_DOOR_BELL:I = 0x9

.field private static final TAG:Ljava/lang/String;

.field public static final TALKBACK:I = 0x2710

.field public static final TAP_AND_HOLD:I = 0x32

.field public static final TAP_DURATION:I = 0x35

.field public static final TURNED_OFF:I = 0x0

.field public static final TURNED_OFF_FORCE:I = 0x64

.field public static final TURNED_ON:I = 0x1

.field public static final TURN_OFF_ALL_SOUND:I = 0xe

.field public static final UNIVERSAL_SWITCH:I = 0x1

.field public static final VOICE_ASSISTANT:I

.field private static mService:Lcom/samsung/android/sepunion/IExclusiveTaskManager;

.field private static sInstance:Lcom/samsung/android/sepunion/ExclusiveTaskManager;

.field static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field final mCallback:Landroid/os/Handler$Callback;

.field private mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sepunion/ExclusiveTaskManager$MyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sepunion/ExclusiveTaskManager$MyCallback;-><init>(Lcom/samsung/android/sepunion/ExclusiveTaskManager;Lcom/samsung/android/sepunion/ExclusiveTaskManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mCallback:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mUserId:I

    iget-object v0, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sepunion/IExclusiveTaskManager;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sepunion/ExclusiveTaskManager$MyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sepunion/ExclusiveTaskManager$MyCallback;-><init>(Lcom/samsung/android/sepunion/ExclusiveTaskManager;Lcom/samsung/android/sepunion/ExclusiveTaskManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mCallback:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mUserId:I

    iget-object v0, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$100(Lcom/samsung/android/sepunion/ExclusiveTaskManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sepunion/ExclusiveTaskManager;
    .locals 4

    sget-object v0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->sInstance:Lcom/samsung/android/sepunion/ExclusiveTaskManager;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x2

    :goto_1
    nop

    new-instance v2, Lcom/samsung/android/sepunion/ExclusiveTaskManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Lcom/samsung/android/sepunion/ExclusiveTaskManager;-><init>(Landroid/content/Context;Lcom/samsung/android/sepunion/IExclusiveTaskManager;I)V

    sput-object v2, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->sInstance:Lcom/samsung/android/sepunion/ExclusiveTaskManager;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->sInstance:Lcom/samsung/android/sepunion/ExclusiveTaskManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getService()Lcom/samsung/android/sepunion/IExclusiveTaskManager;
    .locals 3

    sget-object v0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mService:Lcom/samsung/android/sepunion/IExclusiveTaskManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sepunion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    const-string v1, "exclusivetask"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sepunion/IExclusiveTaskManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IExclusiveTaskManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mService:Lcom/samsung/android/sepunion/IExclusiveTaskManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->mService:Lcom/samsung/android/sepunion/IExclusiveTaskManager;

    return-object v0
.end method


# virtual methods
.method public addToAffectedList(II)Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->getService()Lcom/samsung/android/sepunion/IExclusiveTaskManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sepunion/IExclusiveTaskManager;->addToAffectedList(II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call addToAffectedList()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getAffectedList(I)[I
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->getService()Lcom/samsung/android/sepunion/IExclusiveTaskManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sepunion/IExclusiveTaskManager;->getAffectedList(I)[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call getId()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getId(ILjava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->getService()Lcom/samsung/android/sepunion/IExclusiveTaskManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/IExclusiveTaskManager;->getId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call getId()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    return v1
.end method

.method public removeFromAffectedList(II)Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->getService()Lcom/samsung/android/sepunion/IExclusiveTaskManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sepunion/IExclusiveTaskManager;->removeFromAffectedList(II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call removeFromAffectedList()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setAffectedList(I[IZ)I
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->getService()Lcom/samsung/android/sepunion/IExclusiveTaskManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/IExclusiveTaskManager;->setAffectedList(I[IZ)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call getId()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    return v1
.end method
