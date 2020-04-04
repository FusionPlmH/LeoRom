.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;
.source "BarometerSensorRunner.java"


# instance fields
.field private mBarometerData:[I

.field private mBarometerInitData:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;-><init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 1

    const-string v0, "Barometer"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [B

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getInterval()I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    const/4 v4, 0x0

    aput-byte v0, v1, v4

    aget-byte v0, v2, v4

    const/4 v4, 0x1

    aput-byte v0, v1, v4

    aget-byte v0, v2, v4

    aput-byte v0, v1, v3

    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method public final parse([BI)I
    .locals 9

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move v1, p2

    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-gez v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    if-gtz v1, :cond_1

    mul-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    move v2, v5

    :cond_1
    new-array v4, v1, [I

    iput-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_4

    array-length v6, v0

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_2

    return v3

    :cond_2
    if-gtz v2, :cond_3

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    iget v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v0, v5

    add-int/2addr v7, v5

    aput v7, v6, v2

    :goto_1
    move v5, v8

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v0, v5

    add-int/2addr v7, v5

    aput v7, v6, v2

    goto :goto_1

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    aget v6, v6, v2

    iput v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v2, v4

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->notifyObserver()V

    return v5
.end method
