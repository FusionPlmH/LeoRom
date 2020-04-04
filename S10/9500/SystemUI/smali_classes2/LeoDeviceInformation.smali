.class public Lcom/android/systemui/fusionleo/LeoDeviceInformation;
.super Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;
.source "LeoDeviceInformation.java"


# static fields
.field private static final TEMP:Ljava/lang/String; = " \u2103"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mTemperatureReceiver:Landroid/content/BroadcastReceiver;

.field private final mTemperatureTick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/fusionleo/LeoDeviceInformation$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation$1;-><init>(Lcom/android/systemui/fusionleo/LeoDeviceInformation;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mTemperatureReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/fusionleo/LeoDeviceInformation$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation$2;-><init>(Lcom/android/systemui/fusionleo/LeoDeviceInformation;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mTemperatureTick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fusionleo/LeoDeviceInformation;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/fusionleo/LeoDeviceInformation;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mTemperatureTick:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getBatteryTemperature()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getBatteryTemp()F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u2103"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCPUTemperature()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getCpuTemp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u2103"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInfoList(I)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "cpu"

    const/4 v4, 0x4

    const-string v5, "/"

    const/4 v6, 0x2

    const-string v7, ":"

    const-string v8, " "

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "U0VDX0ZMT0FUSU5HX0ZFQVRVUkVfU0VUVElOR1NfQ09ORklHX0JSQU5EX05BTUU="

    invoke-static {v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoFloatingFature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ro.boot.em.model"

    invoke-static {v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoSystemProper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "battery_info_current"

    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getCurrent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "battery_info_voltage"

    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getVoltage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_1
    const/4 v1, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const/4 v3, -0x1

    const-string v5, "level"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getBatteryCapacity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device_info_quantity"

    invoke-virtual {p0, v5}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "% "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "device_info_capacity"

    invoke-virtual {p0, v5}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/fusionleo/LeoX/systemui/LeoConfig;->capacityunit:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto/16 :goto_2

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gpu_usage"

    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getGPUbusy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_3
    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->GPUTempMHZ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_4
    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getGPUModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getNumCpuCores(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "device_cpu_nucleus"

    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->isCpu64(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "64"

    goto :goto_0

    :cond_0
    const-string v2, "32"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "device_cpu_status"

    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getCpuMhz(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getCPUusage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->CpuModl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->nextalarm(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_a
    const-string v1, "storage_sdcard"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RAM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getTotalRam()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getSystemMemoryUsableSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getTotalExternalMemorySize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getAvailableExternalMemorySize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, v3}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "battery"

    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getCPUTemperature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getBatteryTemperature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto/16 :goto_2

    :pswitch_c
    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    const-string v6, "B"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "device_info_wifi_signal"

    invoke-virtual {p0, v7}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, "device_info_wifi_no"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_d
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_2

    :pswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android\uff3b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getAndroidSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff3d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private intInfoView(IIILjava/lang/String;)V
    .locals 7

    const-string v0, "sec-roboto-light"

    const/4 v1, 0x0

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {p0, p1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getInfoList(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Lcom/fusionleo/LeoX/systemui/LeoConfig$TypefaceFonts;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p3, v0, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoFonts(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fusionleo/LeoX/systemui/LeoConfig$TypefaceFonts;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->append(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p4}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refresh()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mTemperatureTick:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    mul-long v2, v2, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    const-string v0, "FusionLeo Team\nWhat are you looking for? Need help? leo@leorom.cc"

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mTemperatureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private updateSettings()V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "\n"

    const-string v2, ""

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoOrientation:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_0

    const v3, 0x800005

    goto :goto_0

    :cond_0
    const/16 v3, 0x11

    goto :goto_0

    :cond_1
    const v3, 0x800003

    nop

    :goto_0
    or-int/lit8 v6, v3, 0x10

    or-int/2addr v6, v5

    invoke-virtual {v0, v6}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->setGravity(I)V

    sget v6, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoSize:I

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->setTextSize(F)V

    const-string v6, ""

    invoke-virtual {v0, v6}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->setText(Ljava/lang/CharSequence;)V

    sget v6, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoOneStyle:I

    sget v7, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoOneStyleColor:I

    sget v8, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoOneStyleFont:I

    sget v9, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoTwoStyle:I

    sget v10, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoTwoStyleColor:I

    sget v11, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoTwoStyleFont:I

    sget v12, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoThreeStyle:I

    sget v13, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoThreeStyleColor:I

    sget v14, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoThreeStyleFont:I

    sget v15, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoFourStyle:I

    sget v4, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoFourStyleColor:I

    sget v5, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoFourStyleFont:I

    move/from16 v18, v3

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoList:I

    move/from16 v19, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-direct {v0, v6, v7, v8, v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    move-object/from16 v17, v1

    move-object v4, v2

    move/from16 v20, v19

    move/from16 v19, v3

    goto/16 :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-direct {v0, v6, v7, v8, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v9, v10, v11, v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    move-object/from16 v17, v1

    move-object v4, v2

    move/from16 v20, v19

    move/from16 v19, v3

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-direct {v0, v6, v7, v8, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v9, v10, v11, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v12, v13, v14, v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    move-object/from16 v17, v1

    move-object v4, v2

    move/from16 v20, v19

    move/from16 v19, v3

    goto :goto_1

    :cond_4
    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    invoke-direct {v0, v6, v7, v8, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v9, v10, v11, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v12, v13, v14, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    move/from16 v4, v19

    invoke-direct {v0, v15, v4, v5, v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    move-object/from16 v17, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move-object v4, v2

    goto :goto_1

    :cond_5
    move/from16 v4, v19

    move-object/from16 v16, v2

    const/4 v2, 0x5

    if-ne v3, v2, :cond_6

    invoke-direct {v0, v6, v7, v8, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v9, v10, v11, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v12, v13, v14, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v15, v4, v5, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoFiveStyle:I

    move-object/from16 v17, v1

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoFiveStyleColor:I

    move/from16 v19, v3

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoFiveStyleFont:I

    move/from16 v20, v4

    move-object/from16 v4, v16

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->intInfoView(IIILjava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object/from16 v17, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v4, v16

    :goto_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->setLeoDeviceInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->updateQSDeviceInfo()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/fusionleo/LeoX/systemui/LeoConfigTextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mTemperatureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mTemperatureTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->setLeoDeviceInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->updateQSDeviceInfo()V

    :cond_0
    return-void
.end method

.method public setLeoDeviceInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->refresh()V

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->updateSettings()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateQSDeviceInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "leo_qs_device_info_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoStatusbar:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->refresh()V

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoStatusbarStyle:I

    invoke-direct {p0, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->getInfoList(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoStatusbarSize:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->setTextSize(F)V

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoDeviceInfoStatusbarFont:I

    const/4 v2, 0x0

    const-string v3, "sec-roboto-light"

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->setLeoTextFont(ILjava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
