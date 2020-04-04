.class public Landroid/os/BatteryManager;
.super Ljava/lang/Object;
.source "BatteryManager.java"


# static fields
.field public static final ACTION_CHARGING:Ljava/lang/String; = "android.os.action.CHARGING"

.field public static final ACTION_DISCHARGING:Ljava/lang/String; = "android.os.action.DISCHARGING"

.field public static final ACTION_SEC_BATTERY_EVENT:Ljava/lang/String; = "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

.field public static final ACTION_SEC_BATTERY_WATER_IN_CONNECTOR:Ljava/lang/String; = "com.samsung.server.BatteryService.action.SEC_BATTERY_WATER_IN_CONNECTOR"

.field public static final ACTION_WIRELESS_POWER_SHARING_CONNECTED:Ljava/lang/String; = "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_CONNECTED"

.field public static final ACTION_WIRELESS_POWER_SHARING_ENABLED:Ljava/lang/String; = "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_ENABLED"

.field public static final ACTION_WIRELESS_POWER_SHARING_TX_EVENT:Ljava/lang/String; = "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_TX_EVENT"

.field public static final BATTERY_CHARGER_TYPE_FAST:I = 0x1

.field public static final BATTERY_CHARGER_TYPE_FAST_12V:I = 0x2

.field public static final BATTERY_CHARGER_TYPE_FAST_SUPER:I = 0x3

.field public static final BATTERY_CHARGER_TYPE_NORMAL:I = 0x0

.field public static final BATTERY_HEALTH_COLD:I = 0x7

.field public static final BATTERY_HEALTH_DEAD:I = 0x4

.field public static final BATTERY_HEALTH_GOOD:I = 0x2

.field public static final BATTERY_HEALTH_OVERHEAT:I = 0x3

.field public static final BATTERY_HEALTH_OVER_VOLTAGE:I = 0x5

.field public static final BATTERY_HEALTH_UNKNOWN:I = 0x1

.field public static final BATTERY_HEALTH_UNSPECIFIED_FAILURE:I = 0x6

.field public static final BATTERY_MISC_EVENT_HICCUP_ENABLED:I = 0x20

.field public static final BATTERY_MISC_EVENT_RECHARGE:I = 0x8

.field public static final BATTERY_MISC_EVENT_TIMEOUT_OPEN_TYPE:I = 0x4

.field public static final BATTERY_MISC_EVENT_WATER_IN_CONNECTOR:I = 0x1

.field public static final BATTERY_MISC_EVENT_WATER_IN_POGO:I = 0x10

.field public static final BATTERY_MISC_EVENT_WIRELESS_AUTH_FAIL:I = 0x800

.field public static final BATTERY_MISC_EVENT_WIRELESS_AUTH_RECEIVED:I = 0x400

.field public static final BATTERY_MISC_EVENT_WIRELESS_AUTH_START:I = 0x200

.field public static final BATTERY_MISC_EVENT_WIRELESS_BACKPACK:I = 0x2

.field public static final BATTERY_MISC_EVENT_WIRELESS_DET_LEVEL:I = 0x40

.field public static final BATTERY_MISC_EVENT_WIRELESS_FOD:I = 0x100

.field public static final BATTERY_ONLINE_FAST_WIRELESS_CHARGER:I = 0x64

.field public static final BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field public static final BATTERY_ONLINE_NONE:I = 0x1

.field public static final BATTERY_ONLINE_POGO:I = 0x17

.field public static final BATTERY_ONLINE_TA:I = 0x3

.field public static final BATTERY_ONLINE_USB:I = 0x4

.field public static final BATTERY_ONLINE_WATER_IN_CONNECTOR:I = 0x65

.field public static final BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field public static final BATTERY_PLUGGED_AC:I = 0x1

.field public static final BATTERY_PLUGGED_ANY:I = 0x7

.field public static final BATTERY_PLUGGED_OTG:I = 0x10000

.field public static final BATTERY_PLUGGED_USB:I = 0x2

.field public static final BATTERY_PLUGGED_WIRELESS:I = 0x4

.field public static final BATTERY_PROPERTY_CAPACITY:I = 0x4

.field public static final BATTERY_PROPERTY_CHARGE_COUNTER:I = 0x1

.field public static final BATTERY_PROPERTY_CURRENT_AVERAGE:I = 0x3

.field public static final BATTERY_PROPERTY_CURRENT_NOW:I = 0x2

.field public static final BATTERY_PROPERTY_ENERGY_COUNTER:I = 0x5

.field public static final BATTERY_PROPERTY_STATUS:I = 0x6

.field public static final BATTERY_STATUS_CHARGING:I = 0x2

.field public static final BATTERY_STATUS_DISCHARGING:I = 0x3

.field public static final BATTERY_STATUS_FULL:I = 0x5

.field public static final BATTERY_STATUS_NOT_CHARGING:I = 0x4

.field public static final BATTERY_STATUS_UNKNOWN:I = 0x1

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_RX_CHG_SWITCH:I = 0x20

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_RX_CONNECTED:I = 0x2

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_RX_CS100:I = 0x40

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_RX_UNSAFE_TEMP:I = 0x10

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_CAMERA_ON:I = 0x800

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_CRITICAL_EOC:I = 0x400

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_ENABLED:I = 0x1

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_ETC:I = 0x4000

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_FOD:I = 0x4

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_HIGH_TEMP:I = 0x8

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_LOW_TEMP:I = 0x100

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_MISALIGN:I = 0x2000

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_OCP:I = 0x1000

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_OTG_ON:I = 0x80

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_RETRY:I = 0x8000

.field public static final BATTERY_TX_EVENT_WIRELESS_POWER_SHARING_TX_SOC_DRAIN:I = 0x200

.field public static final BATTERY_WIRELESS_POWER_SHARING_EXTERNEL_EVENT_CALL:I = 0x4

.field public static final BATTERY_WIRELESS_POWER_SHARING_EXTERNEL_EVENT_CAMERA:I = 0x1

.field public static final BATTERY_WIRELESS_POWER_SHARING_EXTERNEL_EVENT_DEX:I = 0x2

.field public static final EXTRA_BATTERY_LOW:Ljava/lang/String; = "battery_low"

.field public static final EXTRA_CAPACITY:Ljava/lang/String; = "capacity"

.field public static final EXTRA_CHARGER_TYPE:Ljava/lang/String; = "charger_type"

.field public static final EXTRA_CHARGE_COUNTER:Ljava/lang/String; = "charge_counter"

.field public static final EXTRA_CHARGE_TYPE:Ljava/lang/String; = "charge_type"

.field public static final EXTRA_CURRENT_AVG:Ljava/lang/String; = "current_avg"

.field public static final EXTRA_CURRENT_NOW:Ljava/lang/String; = "current_now"

.field public static final EXTRA_EVENTS:Ljava/lang/String; = "android.os.extra.EVENTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_EVENT_TIMESTAMP:Ljava/lang/String; = "android.os.extra.EVENT_TIMESTAMP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_HEALTH:Ljava/lang/String; = "health"

.field public static final EXTRA_HIGHVOLTAGE_CHARGER:Ljava/lang/String; = "hv_charger"

.field public static final EXTRA_ICON_SMALL:Ljava/lang/String; = "icon-small"

.field public static final EXTRA_INVALID_CHARGER:Ljava/lang/String; = "invalid_charger"

.field public static final EXTRA_LEVEL:Ljava/lang/String; = "level"

.field public static final EXTRA_MAX_CHARGING_CURRENT:Ljava/lang/String; = "max_charging_current"

.field public static final EXTRA_MAX_CHARGING_VOLTAGE:Ljava/lang/String; = "max_charging_voltage"

.field public static final EXTRA_MISC_EVENT:Ljava/lang/String; = "misc_event"

.field public static final EXTRA_ONLINE:Ljava/lang/String; = "online"

.field public static final EXTRA_OTG_CHARGE_BLOCK_ENABLE:Ljava/lang/String; = "OTG_CHARGE_BLOCK"

.field public static final EXTRA_PLUGGED:Ljava/lang/String; = "plugged"

.field public static final EXTRA_POGO_CONDITION:Ljava/lang/String; = "pogo_plugged"

.field public static final EXTRA_POWER_SHARING:Ljava/lang/String; = "power_sharing"

.field public static final EXTRA_POWER_SHARING_ENABLE:Ljava/lang/String; = "power_sharing_enable"

.field public static final EXTRA_PRESENT:Ljava/lang/String; = "present"

.field public static final EXTRA_RX_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SCALE:Ljava/lang/String; = "scale"

.field public static final EXTRA_SEC_CURRENT_EVENT:Ljava/lang/String; = "current_event"

.field public static final EXTRA_SEC_PLUG_TYPE_SUMMARY:Ljava/lang/String; = "sec_plug_type"

.field public static final EXTRA_SELF_DISCHARGING:Ljava/lang/String; = "self_discharging"

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "seq"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_TECHNOLOGY:Ljava/lang/String; = "technology"

.field public static final EXTRA_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final EXTRA_TX_ENABLED:Ljava/lang/String; = "enabled"

.field public static final EXTRA_TX_EVENT:Ljava/lang/String; = "tx_event"

.field public static final EXTRA_VOLTAGE:Ljava/lang/String; = "voltage"

.field public static final EXTRA_WATER:Ljava/lang/String; = "water"


# instance fields
.field private final mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BatteryManager;->mContext:Landroid/content/Context;

    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v0, "batteryproperties"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Landroid/os/IBatteryPropertiesRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BatteryManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iput-object p3, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    return-void
.end method

.method public static isPlugWired(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private queryProperty(I)J
    .locals 4

    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/BatteryProperty;

    invoke-direct {v0}, Landroid/os/BatteryProperty;-><init>()V

    iget-object v3, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    invoke-interface {v3, p1, v0}, Landroid/os/IBatteryPropertiesRegistrar;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/os/BatteryProperty;->getLong()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    move-wide v0, v1

    nop

    nop

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public computeChargeTimeRemaining()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getIntProperty(I)I
    .locals 4

    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/os/BatteryManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/os/BatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    const/high16 v2, -0x80000000

    return v2

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public getLongProperty(I)J
    .locals 2

    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isCharging()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->isCharging()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
