.class public Lcom/samsung/android/os/SemPerfManager;
.super Ljava/lang/Object;
.source "SemPerfManager.java"


# static fields
.field static BOARD_PLATFORM:Ljava/lang/String; = null

.field public static final COMMAND_ACTIVITY_EXECUTION:Ljava/lang/String; = "EXEC_ACTIVITY"

.field public static final COMMAND_BROWSER_DASH_MODE:Ljava/lang/String; = "SBROWSER_DASH_MODE"

.field public static final COMMAND_BROWSER_PAGE_LOADING:Ljava/lang/String; = "SBROWSER_PAGE_LOADING"

.field public static final COMMAND_BUS_DCVS_GOVERNOR_CHANGE:Ljava/lang/String; = "BUS_DCVS_GOVERNOR"

.field public static final COMMAND_FINGER_HOVER_OFF:Ljava/lang/String; = "FINGER_HOVER_OFF"

.field public static final COMMAND_FINGER_HOVER_ON:Ljava/lang/String; = "FINGER_HOVER_ON"

.field public static final COMMAND_GAME_TOUCH_BOOSTER:Ljava/lang/String; = "GAME_TOUCH_BOOSTER"

.field public static final COMMAND_GENERAL_SHELL:Ljava/lang/String; = "GENERAL_SHELL"

.field public static final COMMAND_GESTURE_DETECTED:Ljava/lang/String; = "GESTURE_DETECTED"

.field public static final COMMAND_HOVERING_EVENT:Ljava/lang/String; = "HOVERING_EVENT"

.field public static final COMMAND_REQUEST_CACHE_DROP:Ljava/lang/String; = "REQ_DROP_CACHE"

.field public static final COMMAND_SAMSUNG_SIP:Ljava/lang/String; = "KNOWN_APP_SIP"

.field public static final COMMAND_SCREEN_ROTATION:Ljava/lang/String; = "TYPE_WINDOW_ORIENTATION"

.field public static final COMMAND_SCROLL:Ljava/lang/String; = "TYPE_SCROLL"

.field public static final COMMAND_SMOOTH_SCROLL:Ljava/lang/String; = "SMOOTH_SCROLL"

.field public static final COMMAND_SUSTAINED_PERF:Ljava/lang/String; = "SUSTAINED_PERF"

.field public static final COMMAND_USB_TETHERING:Ljava/lang/String; = "USBTETHERING"

.field public static final COMMAND_VR_MODE:Ljava/lang/String; = "VR_MODE"

.field static final DEVICE_TYPE:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SemPerfManager"

.field public static final VALUE_GAME_TOUCH_BOOSTER_HIGH:Ljava/lang/String; = "high_game_touch_booster"

.field public static final VALUE_GAME_TOUCH_BOOSTER_LOW:Ljava/lang/String; = "low_game_touch_booster"

.field public static final VALUE_GAME_TOUCH_BOOSTER_MID:Ljava/lang/String; = "mid_game_touch_booster"

.field public static final VALUE_GAME_TOUCH_BOOSTER_OFF:Ljava/lang/String; = "off_game_touch_booster"

.field static volatile sCfmsService:Landroid/os/ICustomFrequencyManager;

.field static sIsDebugLevelHigh:Z

.field static volatile sdhmservice:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;


# instance fields
.field mSupportedCPUCoreNum:[I

.field mSupportedCPUCoreNumForSSRM:[I

.field mSupportedCPUFrequency:[I

.field mSupportedCPUFrequencyForSSRM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "0x4948"

    const-string/jumbo v1, "ro.debug_level"

    const-string v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/os/SemPerfManager;->sIsDebugLevelHigh:Z

    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->BOARD_PLATFORM:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->DEVICE_TYPE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->sdhmservice:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUCoreNum:[I

    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUCoreNumForSSRM:[I

    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUFrequency:[I

    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUFrequencyForSSRM:[I

    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/os/SemPerfManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static onScrollEvent(Z)V
    .locals 2

    const-string v0, "TYPE_SCROLL"

    if-eqz p0, :cond_0

    const-string v1, "TRUE"

    goto :goto_0

    :cond_0
    const-string v1, "FALSE"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onSmoothScrollEvent(Z)V
    .locals 2

    const-string v0, "SMOOTH_SCROLL"

    if-eqz p0, :cond_0

    const-string v1, "TRUE"

    goto :goto_0

    :cond_0
    const-string v1, "FALSE"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_0

    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    const-string/jumbo v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/os/SemPerfManager;->sdhmservice:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    :cond_1
    const-string v1, "TYPE_SCROLL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SMOOTH_SCROLL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "GESTURE_DETECTED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "EXEC_ACTIVITY"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "HOVERING_EVENT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SBROWSER_DASH_MODE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SUSTAINED_PERF"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GAME_TOUCH_BOOSTER"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "NORMAL_TOUCH_BOOSTER"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->sdhmservice:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->sdhmservice:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    invoke-interface {v1, p0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p0, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
