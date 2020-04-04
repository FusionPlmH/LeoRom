.class public Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;
.super Ljava/lang/Object;
.source "SensorHubCommManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;


# instance fields
.field private mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs generatePacket([B[B)[B
    .locals 8

    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    array-length v2, p1

    add-int/2addr v2, v0

    new-array v2, v2, [B

    array-length v3, p2

    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_1

    aget-byte v6, p2, v1

    add-int/lit8 v7, v5, 0x1

    aput-byte v6, v2, v5

    add-int/lit8 v1, v1, 0x1

    move v5, v7

    goto :goto_0

    :cond_1
    array-length v1, p1

    :goto_1
    if-ge v4, v1, :cond_2

    aget-byte v3, p1, v4

    add-int/lit8 v6, v5, 0x1

    aput-byte v3, v2, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_1

    :cond_2
    return-object v2

    :cond_3
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

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
    :goto_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    return-object v0
.end method

.method private getSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    return-object v0
.end method

.method private setSensorHubManager(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    return-void
.end method


# virtual methods
.method public final initializeManager(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->setSensorHubManager(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "mSensorHubManager is null."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final varargs sendCmdToSensorHub([B[B)I
    .locals 5

    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->generatePacket([B[B)[B

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v2, v1

    if-gtz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v3, "Packet is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    :goto_1
    array-length v3, v1

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendPacketToSensorHub(I[B)I

    move-result v3

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    if-eq v3, v4, :cond_4

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_4
    return v3

    :cond_5
    :goto_2
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_GENERATION_FAIL:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    return v2

    :cond_6
    :goto_3
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_HEADER_LENGTH:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    return v1
.end method

.method public final declared-synchronized sendPacketToSensorHub(I[B)I
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_SENSOR_HUB_MANAGER_NULL_EXEPTION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->SendSensorHubData(I[B)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x5

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_I2C_COMM:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, -0xb

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_RECEIVE_ACK:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_SENSOR_HUB_MANAGER_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    move v0, v1

    :goto_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to deliver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_1
    const-string v2, "Packet is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    :goto_2
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    :cond_6
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final terminateManager()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->setSensorHubManager(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V

    return-void
.end method

.method public final varargs testGeneratePacket([B[B)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->generatePacket([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final testGetSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    return-object v0
.end method
