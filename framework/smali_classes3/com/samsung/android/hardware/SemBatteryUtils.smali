.class public Lcom/samsung/android/hardware/SemBatteryUtils;
.super Ljava/lang/Object;
.source "SemBatteryUtils.java"


# static fields
.field public static final MODE_BIG_DATA_LOGGING:I = 0x4

.field public static final MODE_BIG_DATA_UPLOADING:I = 0x5

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_POWER_SAVING:I = 0x1

.field public static final MODE_POWER_SAVING_IN_DARK_THEME:I = 0x11

.field public static final MODE_POWER_SAVING_IN_GRAYSCALE:I = 0x10

.field public static final MODE_POWER_SAVING_WITH_BLOCKING_DATA:I = 0x6

.field public static final MODE_POWER_SAVING_WITH_LIMITING_APPLICATIONS:I = 0x12

.field public static final MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_100:I = 0xb

.field public static final MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_80:I = 0x7

.field public static final MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_85:I = 0x8

.field public static final MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_90:I = 0x9

.field public static final MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_95:I = 0xa

.field public static final MODE_POWER_SAVING_WITH_RESOLUTIION_FHD:I = 0xd

.field public static final MODE_POWER_SAVING_WITH_RESOLUTIION_HD:I = 0xc

.field public static final MODE_POWER_SAVING_WITH_RESOLUTIION_WQHD:I = 0xe

.field public static final MODE_POWER_SAVING_WITH_RESTRICTING_BG_DATA:I = 0x3

.field public static final MODE_POWER_SAVING_WITH_RESTRICTING_PERFORMANCE:I = 0xf

.field public static final MODE_ULTRA_POWER_SAVING:I = 0x2

.field private static mService:Landroid/os/ICustomFrequencyManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryRemainingUsageTime(Landroid/content/Context;I)I
    .locals 4

    const-string/jumbo v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getRemainingUsageTime(I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public static getFrequentlyUsedAppListByLocation(Landroid/content/Context;DDI)[Ljava/lang/String;
    .locals 8

    invoke-static {p0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v6

    const/4 v0, 0x0

    move-object v7, v0

    if-eqz v6, :cond_0

    move-object v0, v6

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/os/ICustomFrequencyManager;->getFrequentlyUsedAppListByLocation(DDI)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-object v7
.end method

.method public static getLeastRecentlyUsedAppList(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/ICustomFrequencyManager;->getLeastRecentlyUsedAppList(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-object v1
.end method

.method private static declared-synchronized getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;
    .locals 3

    const-class v0, Lcom/samsung/android/hardware/SemBatteryUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/SemBatteryUtils;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    const-string v1, "CustomFrequencyManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/hardware/SemBatteryUtils;->mService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/hardware/SemBatteryUtils;->mService:Landroid/os/ICustomFrequencyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getStandbyTimeInUltraPowerSavingMode(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInUltraPowerSavingMode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
