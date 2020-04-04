.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;
.source "EnvironmentSensorHandler.java"


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x3c

.field private static volatile instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;


# instance fields
.field private mInterval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

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
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    return-object v0
.end method

.method private getParserKey(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    iget-byte v5, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->value:B

    if-eq p1, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    nop

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected final getInterval()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    return v0
.end method

.method public final parse([BI)I
    .locals 10

    move v0, p2

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-gez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_ENVIRONMENT_LOGGING_STATE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v2

    :cond_2
    array-length v4, p1

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    if-gez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    if-gtz v1, :cond_4

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_ENVIRONMENT_PACKAGE_SIZE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v2

    :cond_4
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_9

    array-length v6, p1

    sub-int/2addr v6, v4

    sub-int/2addr v6, v3

    if-gez v6, :cond_5

    return v2

    :cond_5
    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    invoke-super {p0, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    :cond_7
    invoke-super {p0, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v8

    if-nez v8, :cond_8

    nop

    :goto_1
    move v4, v6

    goto :goto_2

    :cond_8
    move-object v9, v8

    check-cast v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;

    invoke-virtual {v9, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->setLoggingStatus(I)V

    invoke-interface {v8, p1, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v4

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    return v4
.end method

.method protected final setInterval(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    return-void
.end method
