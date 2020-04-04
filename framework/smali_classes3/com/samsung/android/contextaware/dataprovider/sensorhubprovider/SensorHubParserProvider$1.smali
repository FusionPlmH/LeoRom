.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;
.super Ljava/lang/Object;
.source "SensorHubParserProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onGetSensorHubData(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "AP_NONE"

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)I

    move-result v1

    const/16 v2, -0x2e

    if-ne v1, v2, :cond_0

    const-string v1, "AP_SLEEP"

    move-object v0, v1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->sendCurTimeToSensorHub()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)I

    move-result v1

    const/16 v2, -0x2f

    if-ne v1, v2, :cond_1

    const-string v1, "AP_WAKEUP"

    move-object v0, v1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGetSensorHubData Event [event buffer len :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->length:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LIBRARY_PARSER_NULL_EXEPTION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->checkParserMap()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_PARSER_MAP:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget v1, p1, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->length:I

    if-lez v1, :cond_6

    iget v1, p1, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->length:I

    iget-object v2, p1, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    iget-object v2, p1, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    iget v3, p1, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->length:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;[BI)I

    move-result v1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_5

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :goto_1
    :try_start_3
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_GET_SENSOR_HUB_EVENT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
