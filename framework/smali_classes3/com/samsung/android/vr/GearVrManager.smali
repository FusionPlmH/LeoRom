.class public final Lcom/samsung/android/vr/GearVrManager;
.super Ljava/lang/Object;
.source "GearVrManager.java"

# interfaces
.implements Landroid/app/IVRManager;
.implements Lcom/samsung/android/vr/IGearVrManagerLocal;
.implements Lcom/samsung/android/vr/SemGearVrManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vr/GearVrManager$GearVrListener;,
        Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;,
        Lcom/samsung/android/vr/GearVrManager$GearVrManagerCallback;
    }
.end annotation


# static fields
.field public static final ACTION_APP_ERROR:Ljava/lang/String; = "com.samsung.intent.action.HMT_APP_ERROR"

.field public static final CLASSNAME_APP_ERROR_REPORT:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc.AppErrorReportActivity"

.field public static final CLASSNAME_VRSERVICE_SYSTEM_SERVICE:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc.system.VRSystemService"

.field public static final DEFAULT_GLOBAL_VR_DEVELOPER_MODE:I = 0x0

.field public static final DEFAULT_GLOBAL_VR_LAUNCH_MODE:I = 0x0

.field public static final DEFAULT_GLOBAL_VR_RECENTS_MODE:I = 0x0

.field public static final DEFAULT_GLOBAL_VR_SETUPWIZARD_COMPLETED:I = 0x0

.field public static final DEFAULT_GLOBAL_VR_SYSTEM_UI_MODE:I = 0x7

.field public static final DEVICE_EVENT_HEADSET_PLUGGED:I = 0x4000

.field public static final DEVICE_EVENT_HEADSET_UNPLUGGED:I = 0x8000

.field public static final DEVICE_EVENT_MOUNT:I = 0x10

.field public static final DEVICE_EVENT_SENSOR_BOOTING_WITHOUT_TA:I = 0x200

.field public static final DEVICE_EVENT_SENSOR_BOOTING_WITH_TA:I = 0x100

.field public static final DEVICE_EVENT_SENSOR_CONNECTED_TA:I = 0x400

.field public static final DEVICE_EVENT_UNMOUNT:I = 0x20

.field public static final DEVICE_EVENT_VR_ABNORMAL:I = 0x4

.field public static final DEVICE_EVENT_VR_DOCK:I = 0x1

.field public static final DEVICE_EVENT_VR_ENTERED:I = 0x40

.field public static final DEVICE_EVENT_VR_EXITED:I = 0x80

.field public static final DEVICE_EVENT_VR_PERSISTENT_ENTERED:I = 0x10040

.field public static final DEVICE_EVENT_VR_PERSISTENT_EXITED:I = 0x10080

.field public static final DEVICE_EVENT_VR_TETHERED_DOCK:I = 0x1001

.field public static final DEVICE_EVENT_VR_TETHERED_UNDOCK:I = 0x1002

.field public static final DEVICE_EVENT_VR_UNDOCK:I = 0x2

.field public static final DEVICE_TYPE_VR_ABNORMAL:I = -0x1

.field public static final DEVICE_TYPE_VR_DROPIN:I = 0x1

.field public static final DEVICE_TYPE_VR_TETHERED:I = 0x2

.field public static final EVENT_GEARVR_STATE_CHANGED:I = 0x1

.field public static final FEATURE_HMT:Ljava/lang/String; = "com.samsung.feature.hmt"

.field public static final FLAG_OCULUS_VR_APP_ERROR_SYSTEM_UI:I = 0x2

.field public static final FLAG_OCULUS_VR_IMMERSIVE_ENABLED:I = 0x4

.field public static final FLAG_OCULUS_VR_PERMISSION_SYSTEM_UI:I = 0x1

.field public static final FLAG_VR_ACTIVITY_ALLOW_BYPASS_SETUP_WIZARD:I = 0x20

.field public static final FLAG_VR_ACTIVITY_ALLOW_NON_VR_ACTIVITY:I = 0x10

.field public static final FLAG_VR_ACTIVITY_ALLOW_SKIP_PENDING_LAUNCH:I = 0x40

.field public static final FLAG_VR_ACTIVITY_ENABLED:I = 0x1

.field public static final FLAG_VR_ACTIVITY_NOT_FOCUSABLE:I = 0x100

.field public static final FLAG_VR_ACTIVITY_SKIP_MOVE_STACK:I = 0x2000

.field public static final FLAG_VR_LAUNCH_MODE_DISABLE_REENABLE_VRSERVICE:I = 0x10

.field public static final FLAG_VR_LAUNCH_MODE_START_IMMEDIATELY:I = 0x1

.field public static final FLAG_VR_LAUNCH_MODE_START_SPLASH_SCREEN:I = 0x2

.field public static final FLAG_VR_RECENTS_ENABLED:I = 0x1

.field public static final FLAG_VR_RECENTS_INCLUDE_VR_TASK:I = 0x10

.field public static final FLAG_VR_RECENTS_OVERRIDE_RECENTS:I = 0x2

.field public static final FLAG_VR_RECENTS_USE_GEAR_VR_TRANSITION:I = 0x20

.field public static final HMT_EVENT_ABNORMAL:I = 0x4

.field public static final HMT_EVENT_DOCK:I = 0x1

.field public static final HMT_EVENT_HEADSET_PLUGGED:I = 0x4000

.field public static final HMT_EVENT_HEADSET_UNPLUGGED:I = 0x8000

.field public static final HMT_EVENT_MOUNT:I = 0x10

.field public static final HMT_EVENT_SENSOR_BOOTING_WITHOUT_TA:I = 0x100

.field public static final HMT_EVENT_SENSOR_BOOTING_WITH_TA:I = 0x200

.field public static final HMT_EVENT_SENSOR_CONNECTED_TA:I = 0x400

.field public static final HMT_EVENT_SETTINGS_CHANGED:I = 0x100000

.field public static final HMT_EVENT_UNDOCK:I = 0x2

.field public static final HMT_EVENT_UNMOUNT:I = 0x20

.field public static final HMT_EVENT_VR_ENTERED:I = 0x40

.field public static final HMT_EVENT_VR_EXITED:I = 0x80

.field public static final HMT_EVENT_VR_PERSISTENT:I = 0x10000

.field public static final HMT_SETTING_DEVELOPER_MODE:I = 0x2

.field public static final HMT_SETTING_LAUNCH_MODE:I = 0x3

.field public static final HMT_SETTING_RECENT_MODE:I = 0x5

.field public static final HMT_SETTING_SETUPWIZARD_COMPLETE:I = 0x1

.field public static final HMT_SETTING_VR_SYSTEM_UI_MODE:I = 0x4

.field public static final HMT_TYPE_TETHERED:I = 0x1000

.field public static final METADATA_VR_ACTIVITY:Ljava/lang/String; = "com.samsung.android.vr.activity"

.field public static final METADATA_VR_ACTIVITY_CONFIG:Ljava/lang/String; = "com.samsung.android.vr.activity.config"

.field public static final METADATA_VR_ACTIVITY_CONFIG_ALLOW_BYPASS_SETUP_WIZARD:Ljava/lang/String; = "allow_bypass_setup_wizard"

.field public static final METADATA_VR_ACTIVITY_CONFIG_ALLOW_NON_VR_ACTIVITY:Ljava/lang/String; = "allow_non_vr_activity"

.field public static final METADATA_VR_ACTIVITY_CONFIG_ALLOW_SKIP_PENDING_LAUNCH:Ljava/lang/String; = "allow_skip_pending_launch"

.field public static final METADATA_VR_ACTIVITY_CONFIG_NOT_FOCUSABLE:Ljava/lang/String; = "not_focusable"

.field public static final METADATA_VR_ACTIVITY_CONFIG_SKIP_MOVE_STACK:Ljava/lang/String; = "skip_move_stack"

.field public static final METADATA_VR_APPLICATION_MODE:Ljava/lang/String; = "com.samsung.android.vr.application.mode"

.field public static final METADATA_VR_MODE_DUAL:Ljava/lang/String; = "dual"

.field public static final METADATA_VR_MODE_VR_ONLY:Ljava/lang/String; = "vr_only"

.field public static final OCULUS_SETUP_COMPLETED:I = 0x1

.field public static final OCULUS_UPDATE_REQUIRED:I = 0x2

.field public static final PACKAGENAME_VRSERVICE:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc"

.field public static final PACKAGENAME_VRSETUPWIZARD:Ljava/lang/String; = "com.samsung.android.app.vrsetupwizard"

.field public static final PACKAGENAME_VRSETUPWIZARD_STUB:Ljava/lang/String; = "com.samsung.android.app.vrsetupwizardstub"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PACKAGENAME_VRSYSTEM:Ljava/lang/String; = "com.samsung.android.hmt.vrsystem"

.field public static final SETTINGS_GLOBAL_VR_DEVELOPER_MODE:Ljava/lang/String; = "vrmode_developer_mode"

.field public static final SETTINGS_GLOBAL_VR_LAUNCH_MODE:Ljava/lang/String; = "vr_launch_mode"

.field public static final SETTINGS_GLOBAL_VR_RECENTS_MODE:Ljava/lang/String; = "vr_recents_mode"

.field public static final SETTINGS_GLOBAL_VR_SETUPWIZARD_COMPLETED:Ljava/lang/String; = "vr_setupwizard_completed"

.field public static final SETTINGS_GLOBAL_VR_SYSTEM_UI_MODE:Ljava/lang/String; = "vr_system_ui_mode"

.field private static final TAG:Ljava/lang/String; = "GearVrManager"

.field public static final VRMODE_TYPE_ACTIVITY:I = 0x1

.field public static final VRMODE_TYPE_PERSISTENT:I = 0x2


# instance fields
.field private mCallback:Lcom/samsung/android/vr/GearVrManager$GearVrManagerCallback;

.field private mContext:Landroid/content/Context;

.field private final mGearVrListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mService:Lcom/samsung/android/vr/IGearVrManagerService;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/vr/IGearVrManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/vr/GearVrManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/vr/GearVrManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/vr/GearVrManager;->handleGearVrStateEvent(II)V

    return-void
.end method

.method private findGearVrListenerLocked(Lcom/samsung/android/vr/GearVrManager$GearVrListener;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;

    iget-object v2, v2, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->mListener:Lcom/samsung/android/vr/GearVrManager$GearVrListener;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private handleGearVrStateEvent(II)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, p2, v4}, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->sendGearVrEvent(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerCallbackIfNeededLocked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mCallback:Lcom/samsung/android/vr/GearVrManager$GearVrManagerCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/vr/GearVrManager$GearVrManagerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/vr/GearVrManager$GearVrManagerCallback;-><init>(Lcom/samsung/android/vr/GearVrManager;Lcom/samsung/android/vr/GearVrManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mCallback:Lcom/samsung/android/vr/GearVrManager$GearVrManagerCallback;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mCallback:Lcom/samsung/android/vr/GearVrManager$GearVrManagerCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/vr/IGearVrManagerService;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public GetPowerLevelState()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/vr/GearVrManager;->getPowerLevelState()I

    move-result v0

    return v0
.end method

.method public SetVrClocks(Ljava/lang/String;II)[I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/vr/GearVrManager;->acquireVrClocks(Ljava/lang/String;II)[I

    move-result-object v0

    return-object v0
.end method

.method public acquireVrClocks(Ljava/lang/String;II)[I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->enforceCallingPermission(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDeviceType()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerService;->getDeviceType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPowerLevelState()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerService;->getPowerLevelState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getThreadId(ILjava/lang/String;I)[I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->getThreadId(ILjava/lang/String;I)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVRBright()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVRColorTemperature()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVrRecentsMode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerService;->getVrRecentsMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVrSystemUiMode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerService;->getVrSystemUiMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isConnected()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDock()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerService;->isDock()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "GearVrManager"

    const-string v1, "can\'t run isDock, mService=null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isMount()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerService;->isMount()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "GearVrManager"

    const-string v1, "can\'t run isMount, mService=null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isPersistentVrMode()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerService;->isPersistentVrMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isVRComfortableViewEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVRDarkAdaptationEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVRLowPersistenceEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVRMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/vr/GearVrManager;->isVrMode()Z

    move-result v0

    return v0
.end method

.method public isVrMode()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerService;->isVrMode()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "GearVrManager"

    const-string v1, "can\'t run isVrMode, mService=null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyDeviceEventChanged(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->notifyDeviceEventChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readSysNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->readSysNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerGearVrListener(Lcom/samsung/android/vr/GearVrManager$GearVrListener;Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->findGearVrListenerLocked(Lcom/samsung/android/vr/GearVrManager$GearVrListener;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;

    invoke-direct {v3, p1, p2}, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;-><init>(Lcom/samsung/android/vr/GearVrManager$GearVrListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/vr/GearVrManager;->registerCallbackIfNeededLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public relFreq(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->releaseVrClocks(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public releaseCPUMhz(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseGPUMhz(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseVrClocks(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeSysNode(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->removeSysNode(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public retrieveEnableFrequencyLevels()[I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerService;->retrieveEnableFrequencyLevels()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public return2EnableFreqLev()[I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/vr/GearVrManager;->retrieveEnableFrequencyLevels()[I

    move-result-object v0

    return-object v0
.end method

.method public setAffinity(I[I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCPUClockMhz(Ljava/lang/String;[II)[I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGPUClockMhz(Ljava/lang/String;I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHomeKeyBlocked(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setHomeKeyBlocked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOverlayRestriction(Z[Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->setOverlayRestriction(Z[Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setPermissions(Ljava/lang/String;III)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/vr/IGearVrManagerService;->setPermissions(Ljava/lang/String;III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setPersistentVrMode(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setPersistentVrMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReadyForVrMode(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setReadyForVrMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSystemMouseControlType(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setSystemMouseControlType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSystemMouseShowMouseEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setSystemMouseShowMouseEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setThreadAffinity(I[I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadAffinity(I[I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setThreadGroup(II)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadGroup(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setThreadScheduler(III)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadScheduler(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVRBright(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRColorTemperature(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRComfortableView(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRDarkAdaptation(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRLowPersistence(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRMode(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVideoMode(Ljava/lang/String;FZ)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVr2dSurface(Landroid/view/Surface;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setVr2dSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVrMode(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setVrMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterGearVrListener(Lcom/samsung/android/vr/GearVrManager$GearVrListener;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->findGearVrListenerLocked(Lcom/samsung/android/vr/GearVrManager$GearVrListener;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->clearEvents()V

    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public vrManagerVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public vrOVRVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
