.class public Lcom/android/server/SecExternalDisplayService;
.super Landroid/os/ISecExternalDisplayService$Stub;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;,
        Lcom/android/server/SecExternalDisplayService$EDSToast;,
        Lcom/android/server/SecExternalDisplayService$EDSBlank;
    }
.end annotation


# static fields
.field private static final HORIZONTAL_ALIGNMENT:I = 0x50

.field private static final INVALID_ID:I = -0x1

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "SecExternalDisplayService_Java"

.field private static bIsLogEnabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;


# instance fields
.field public CALL_CONNECT:Z

.field private bDreamsEnabledByDefaultConfig:Z

.field private bIsAlarmRecieved:Z

.field private bIsDayDreamEnabled:Z

.field private bIsHomeTheatreConnected:Z

.field private bPresentation:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDialogCheckBox:Landroid/widget/CheckBox;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDockSurfaceParameter:I

.field private mExternalDisplayId:I

.field private final mHPCHandler:Landroid/os/Handler;

.field private mHPCObserver:Landroid/os/UEventObserver;

.field private final mMHLHandler:Landroid/os/Handler;

.field private mMHLObserver:Landroid/os/UEventObserver;

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mShouldHideToast:Z

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/os/ISecExternalDisplayService$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceParameter:I

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->CALL_CONNECT:Z

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/SecExternalDisplayService;->mExternalDisplayId:I

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->mShouldHideToast:Z

    new-instance v0, Lcom/android/server/SecExternalDisplayService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$1;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHPCObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$2;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$2;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHPCHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$3;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$3;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$4;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$4;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/SecExternalDisplayService$5;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$5;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Landroid/os/ISecExternalDisplayService$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SecExternalDisplayService;->mDockSurfaceParameter:I

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsHomeTheatreConnected:Z

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->CALL_CONNECT:Z

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/SecExternalDisplayService;->mExternalDisplayId:I

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->mShouldHideToast:Z

    new-instance v2, Lcom/android/server/SecExternalDisplayService$1;

    invoke-direct {v2, p0}, Lcom/android/server/SecExternalDisplayService$1;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mHPCObserver:Landroid/os/UEventObserver;

    new-instance v2, Lcom/android/server/SecExternalDisplayService$2;

    invoke-direct {v2, p0}, Lcom/android/server/SecExternalDisplayService$2;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mHPCHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/SecExternalDisplayService$3;

    invoke-direct {v2, p0}, Lcom/android/server/SecExternalDisplayService$3;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mMHLObserver:Landroid/os/UEventObserver;

    new-instance v2, Lcom/android/server/SecExternalDisplayService$4;

    invoke-direct {v2, p0}, Lcom/android/server/SecExternalDisplayService$4;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mMHLHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/SecExternalDisplayService$5;

    invoke-direct {v2, p0}, Lcom/android/server/SecExternalDisplayService$5;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    const-string v3, "SecExternalDisplayService_Java"

    const-string v4, "SecExternalDisplayService +"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-direct {v3}, Landroid/hardware/SecExternalDisplayJNIInterface;-><init>()V

    sput-object v3, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    const-string v3, "display"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/server/SecExternalDisplayService;->wm:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayService;->mHPCObserver:Landroid/os/UEventObserver;

    const-string v4, "DEVPATH=/devices/virtual/switch/secdp_msg"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayService;->mMHLObserver:Landroid/os/UEventObserver;

    const-string v4, "DEVPATH=/devices/virtual/switch/mhl_event_switch"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    const/4 v4, 0x6

    invoke-direct {p0, v3, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayInitWakeMode(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/android/server/SecExternalDisplayIntents;->StartEDSIntents(Lcom/android/server/SecExternalDisplayService;)V

    invoke-virtual {p0}, Lcom/android/server/SecExternalDisplayService;->getCameraAppVersionNumber()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private SecExternalDisplayInitWakeMode(Landroid/content/Context;I)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "SecExternalDisplayService_Java"

    const-string/jumbo v2, "mWakeLock is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_2
    sget-boolean v1, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v1, :cond_3

    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "SecExternalDisplayInitWakeMode is called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/high16 v2, 0x10000000

    or-int/2addr v2, p2

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    const-string v3, "SecExternalDisplayService_Java"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-boolean v2, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v2, :cond_4

    const-string v2, "SecExternalDisplayService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecExternalDisplayInitWakeMode set the mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_5
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/SecExternalDisplayService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mHPCHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SecExternalDisplayService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mMHLHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SecExternalDisplayService;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/SecExternalDisplayService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/SecExternalDisplayService;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private checkSettingPermission()Z
    .locals 8

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v4, "SecExternalDisplayService_Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packages is null. uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    const-string v7, "com.enhance.gameservice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "android"

    invoke-virtual {v0, v7, v6}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "SecExternalDisplayService_Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no permission. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private static isDesktopMode()Z
    .locals 3

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "KNOX DESKTOP MODE!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "NOT KNOX DESKTOP MODE!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private static isGearVrDocked()Z
    .locals 4

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vr"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/GearVrManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManager;->isDock()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "GearVr docked!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "GearVr undocked!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v1
.end method


# virtual methods
.method public SecExternalDisplayAlertMsg(I)V
    .locals 13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "persist.sys.SecEDS.Dialog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, " Received Wrong value from kernel "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_0
    const/4 v1, 0x0

    const-string/jumbo v2, "ro.build.scafe.cream"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "white"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v3, "SecExternalDisplayService_Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isLightTheme => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const v4, 0x10302d2

    goto :goto_1

    :cond_2
    const v4, 0x10302d1

    :goto_1
    if-ne v1, v3, :cond_3

    const/high16 v3, -0x1000000

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    :goto_2
    new-instance v5, Landroid/widget/CheckBox;

    sget-object v6, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    sget-object v6, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10402d4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget-object v6, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10403f2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getLeft()I

    move-result v6

    add-int/lit8 v9, v6, 0x50

    iget-object v6, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getTop()I

    move-result v10

    iget-object v6, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getRight()I

    move-result v11

    iget-object v6, p0, Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getBottom()I

    move-result v12

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10402d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/SecExternalDisplayService$7;

    invoke-direct {v7, p0}, Lcom/android/server/SecExternalDisplayService$7;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    iget-object v6, p0, Lcom/android/server/SecExternalDisplayService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public SecExternalDisplayBlankDisplay(I)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayBlankDisplay(I)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/SecExternalDisplayService;->checkSettingPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayCreateSurface available only from Game Service."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/SecExternalDisplayService;->checkSettingPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayCreateSurface available only from Game Service."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SecExternalDisplayGet3DMode()I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGet3DMode()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SecExternalDisplayGetResolution()I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGetResolution()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SecExternalDisplayGetStatus(I)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SecExternalDisplayIsTablet()Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->wm:Landroid/view/WindowManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->wm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v6

    const/4 v7, 0x1

    if-le v4, v5, :cond_0

    if-eqz v6, :cond_1

    const/4 v8, 0x2

    if-eq v6, v8, :cond_1

    :cond_0
    if-ge v4, v5, :cond_2

    if-eq v6, v7, :cond_1

    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    :cond_1
    return v7

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method public SecExternalDisplayRegisterEVF(Z)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayRegisterEVF(Z)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SecExternalDisplaySet3DMode(I)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySet3DMode(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SecExternalDisplaySetExternalUITransform(I)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetExternalUITransform(I)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SecExternalDisplaySetForceMirrorMode(Z)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetForceMirrorMode(Z)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SecExternalDisplaySetOutputMode(I)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetOutputMode(I)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SecExternalDisplaySetPause(Z)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetPause(Z)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SecExternalDisplaySetResolution(I)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetResolution(I)Z

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SecExternalDisplaySetStatus(IZ)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected SecExternalDisplaySetWakeLock(Z)V
    .locals 3

    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecExternalDisplaySetWakeLock ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") + + + + + + + + + + + + + + + + + + + +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Acquire the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_2

    const-string v0, "SecExternalDisplayService_Java"

    const-string/jumbo v1, "release the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_3
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mWakeLock.isHeld() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/SecExternalDisplayService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_5

    const-string v0, "SecExternalDisplayService_Java"

    const-string/jumbo v1, "mWakeLock is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecExternalDisplaySetWakeLock ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") - - - - - - - - - - - - - - - - - - - -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SecExternalDisplayToast(IZ)V
    .locals 5

    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SecExternalDisplayToast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->toStatus(I)Lcom/android/server/SecExternalDisplayService$EDSToast;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/android/server/SecExternalDisplayService$8;->$SwitchMap$com$android$server$SecExternalDisplayService$EDSToast:[I

    invoke-static {p1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->toStatus(I)Lcom/android/server/SecExternalDisplayService$EDSToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10403f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10403f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10403f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10403f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_0
    if-eqz v0, :cond_3

    sget-object v2, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eqz p2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->semSetPreferredDisplayType(I)V

    :cond_2
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public SecExternalDisplayType(Z)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayType(Z)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCameraAppVersionNumber()F
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v0, v2

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    move v1, v4

    const-string v4, "SecExternalDisplayService_Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCameraAppVersionNumber. Package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , versionNumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SecExternalDisplayService_Java"

    const-string v4, "com.sec.android.app.camera Package name not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public getEDSContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleAlarm(Z)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle Alarm : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    iget-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v1, :cond_1

    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Destroy SmartDock Surface !!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v1, :cond_3

    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Create SmartDock Surface !!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->bIsAlarmRecieved:Z

    :cond_4
    :goto_0
    return v0
.end method

.method public handleHDMIConnection(Z)Z
    .locals 5

    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHDMIConnection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    invoke-static {}, Lcom/android/server/SecExternalDisplayService;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetWakeLock(Z)V

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_6

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    :cond_2
    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    :cond_3
    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_WFD_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(IZ)V

    goto :goto_0

    :cond_4
    const-string v3, "SecExternalDisplayService_Java"

    const-string v4, "HDMI Connected : "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SecExternalDisplayService;->isGearVrDocked()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "Hide HDMI Connected toast."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->mShouldHideToast:Z

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_CONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(IZ)V

    iput-boolean v2, p0, Lcom/android/server/SecExternalDisplayService;->mShouldHideToast:Z

    :goto_0
    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    goto :goto_1

    :cond_6
    const-string v3, "SecExternalDisplayService_Java"

    const-string v4, " HDMI DisConnected : "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    :cond_7
    if-ne v0, v1, :cond_a

    iget-boolean v3, p0, Lcom/android/server/SecExternalDisplayService;->mShouldHideToast:Z

    if-eqz v3, :cond_8

    const-string v3, "SecExternalDisplayService_Java"

    const-string v4, "Hide HDMI disconnected toast."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/SecExternalDisplayService;->mShouldHideToast:Z

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/android/server/SecExternalDisplayService;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(IZ)V

    goto :goto_1

    :cond_9
    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(IZ)V

    :cond_a
    :goto_1
    return v1
.end method

.method public handlePresentation(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePresentation Condition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    :goto_0
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v0, :cond_3

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v0, :cond_3

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public handleSmartDockConnection(I)Z
    .locals 4

    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleSmartDockConnection status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Intent.SEM_EXTRA_USB_HID_STATE_ATTACHED value is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-ne v2, p1, :cond_1

    const-string v1, "SecExternalDisplayService_Java"

    const-string v3, "Mouse  Connected  Smart Dock!!!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_VIDEO:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/server/SecExternalDisplayService;->bPresentation:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string v1, "SecExternalDisplayService_Java"

    const-string v3, "Mouse Disconnected from Smart Dock!!!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    :cond_2
    :goto_0
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/SecExternalDisplayService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_3
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/server/SecExternalDisplayService$6;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$6;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    :cond_4
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SecExternalDisplayService_Java"

    const-string v3, "Phone window manager doesn\'t have the permssion READ_PHONE_STATE. please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v3, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_6
    :goto_2
    return v2
.end method

.method public handleVideo(Z)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle Video : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_VIDEO:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    if-eqz p1, :cond_3

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    :cond_1
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_2

    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Destroy SmartDock Surface during videoplay  !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/SecExternalDisplayService;->bIsLogEnabled:Z

    if-eqz v0, :cond_4

    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Create SmartDock Surface after video is stopped!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    :cond_5
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public handleWFDConnection(I)Z
    .locals 3

    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllShare Cast Connected Status : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public updateExternalDisplayStatus(IZ)V
    .locals 4

    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/server/SecExternalDisplayService;->mExternalDisplayId:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/SecExternalDisplayService;->handleHDMIConnection(Z)Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/SecExternalDisplayService;->mExternalDisplayId:I

    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected external displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Display is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/server/SecExternalDisplayService;->handleHDMIConnection(Z)Z

    iput p1, p0, Lcom/android/server/SecExternalDisplayService;->mExternalDisplayId:I

    const-string v1, "SecExternalDisplayService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected external displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
