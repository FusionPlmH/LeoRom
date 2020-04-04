.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.super Lcom/samsung/android/contextaware/dataprovider/DataProvider;
.source "SensorHubProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubCmdProtocol;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubRequest;


# static fields
.field public static final I2C_COMM_ERROR:I = -0x5

.field public static final NOT_RECEIVE_ACK:I = -0xb


# instance fields
.field private mFaultDetectionResult:I

.field private final mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method protected final addRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected final checkFaultDetectionResult()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->clear()V

    return-void
.end method

.method public disable()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacketToUnregisterLib()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    return-void

    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    return-void
.end method

.method protected final disableForRestore()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacketToRegisterLib()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForEnable()B

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    return-void

    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    return-void
.end method

.method protected final enableForRestore()V
    .locals 0

    return-void
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 1

    const-string v0, "Action"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDataPacketToRegisterLib()[B
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method protected getDataPacketToUnregisterLib()[B
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getInstLibType()B
.end method

.method protected abstract getInstructionForDisable()B
.end method

.method protected abstract getInstructionForEnable()B
.end method

.method protected getParseSyntaxTable()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final initializeManager()V
    .locals 0

    return-void
.end method

.method public parse([BI)I
    .locals 31

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getParseSyntaxTable()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_14

    const/4 v6, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->MESSAGE_TYPE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-ne v7, v8, :cond_4

    array-length v7, v0

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    if-gez v7, :cond_0

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v3

    :cond_0
    add-int/lit8 v7, v1, 0x1

    aget-byte v1, v0, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->messageType()B

    move-result v10

    if-ne v10, v1, :cond_1

    move-object v6, v9

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    if-nez v6, :cond_3

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_REQUEST_LIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v3

    :cond_3
    nop

    move v1, v7

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Ljava/util/ArrayList;

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    array-length v11, v0

    sub-int/2addr v11, v1

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->size()B

    move-result v12

    sub-int/2addr v11, v12

    if-gez v11, :cond_5

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v3

    :cond_5
    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/4 v3, 0x4

    packed-switch v11, :pswitch_data_0

    move-object/from16 v23, v6

    goto/16 :goto_6

    :pswitch_0
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v12

    new-array v13, v3, [B

    add-int/lit8 v20, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v13, v4

    add-int/lit8 v1, v20, 0x1

    aget-byte v20, v0, v20

    aput-byte v20, v13, v5

    add-int/lit8 v20, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v13, v17

    add-int/lit8 v1, v20, 0x1

    aget-byte v20, v0, v20

    aput-byte v20, v13, v16

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    int-to-double v14, v13

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v21

    div-double v14, v14, v21

    invoke-virtual {v11, v12, v14, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v23, v6

    goto/16 :goto_6

    :pswitch_1
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v12

    new-array v13, v3, [B

    aput-byte v4, v13, v4

    add-int/lit8 v14, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v13, v5

    add-int/lit8 v1, v14, 0x1

    aget-byte v14, v0, v14

    aput-byte v14, v13, v17

    add-int/lit8 v14, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v13, v16

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    move-object/from16 v23, v6

    int-to-double v5, v1

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v21

    div-double v5, v5, v21

    invoke-virtual {v11, v12, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    nop

    move v1, v14

    goto/16 :goto_6

    :pswitch_2
    move-object/from16 v23, v6

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    new-array v11, v3, [B

    aput-byte v4, v11, v4

    const/4 v12, 0x1

    aput-byte v4, v11, v12

    add-int/lit8 v12, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v11, v17

    add-int/lit8 v1, v12, 0x1

    aget-byte v12, v0, v12

    aput-byte v12, v11, v16

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    int-to-double v11, v11

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v13

    div-double/2addr v11, v13

    invoke-virtual {v5, v6, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    goto/16 :goto_6

    :pswitch_3
    move-object/from16 v23, v6

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    new-array v11, v3, [B

    add-int/lit8 v12, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v11, v4

    add-int/lit8 v1, v12, 0x1

    aget-byte v12, v0, v12

    const/4 v13, 0x1

    aput-byte v12, v11, v13

    add-int/lit8 v12, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v11, v17

    add-int/lit8 v1, v12, 0x1

    aget-byte v12, v0, v12

    aput-byte v12, v11, v16

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v12

    double-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {v5, v6, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    goto/16 :goto_6

    :pswitch_4
    move-object/from16 v23, v6

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    new-array v11, v3, [B

    aput-byte v4, v11, v4

    add-int/lit8 v12, v1, 0x1

    aget-byte v1, v0, v1

    const/4 v13, 0x1

    aput-byte v1, v11, v13

    add-int/lit8 v1, v12, 0x1

    aget-byte v12, v0, v12

    aput-byte v12, v11, v17

    add-int/lit8 v12, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v11, v16

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v13

    double-to-float v11, v13

    div-float/2addr v1, v11

    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    goto/16 :goto_4

    :pswitch_5
    move-object/from16 v23, v6

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    new-array v11, v3, [B

    aput-byte v4, v11, v4

    const/4 v12, 0x1

    aput-byte v4, v11, v12

    add-int/lit8 v12, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v11, v17

    add-int/lit8 v1, v12, 0x1

    aget-byte v12, v0, v12

    aput-byte v12, v11, v16

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v12

    double-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {v5, v6, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    goto/16 :goto_6

    :pswitch_6
    move-object/from16 v23, v6

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0x8

    new-array v12, v11, [B

    add-int/lit8 v11, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v12, v4

    add-int/lit8 v1, v11, 0x1

    aget-byte v11, v0, v11

    const/4 v13, 0x1

    aput-byte v11, v12, v13

    add-int/lit8 v11, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v12, v17

    add-int/lit8 v1, v11, 0x1

    aget-byte v11, v0, v11

    aput-byte v11, v12, v16

    add-int/lit8 v11, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v12, v3

    add-int/lit8 v1, v11, 0x1

    aget-byte v11, v0, v11

    const/4 v13, 0x5

    aput-byte v11, v12, v13

    add-int/lit8 v11, v1, 0x1

    aget-byte v1, v0, v1

    const/4 v13, 0x6

    aput-byte v1, v12, v13

    add-int/lit8 v1, v11, 0x1

    aget-byte v11, v0, v11

    const/4 v13, 0x7

    aput-byte v11, v12, v13

    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v13

    double-to-int v13, v13

    int-to-long v13, v13

    div-long/2addr v11, v13

    invoke-virtual {v5, v6, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    goto/16 :goto_6

    :pswitch_7
    move-object/from16 v23, v6

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TimeStamp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v11

    const/16 v12, 0x8

    new-array v13, v12, [B

    aput-byte v4, v13, v4

    const/4 v12, 0x1

    aput-byte v4, v13, v12

    aput-byte v4, v13, v17

    aput-byte v4, v13, v16

    add-int/lit8 v12, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v13, v3

    add-int/lit8 v1, v12, 0x1

    aget-byte v12, v0, v12

    const/4 v14, 0x5

    aput-byte v12, v13, v14

    add-int/lit8 v12, v1, 0x1

    aget-byte v1, v0, v1

    const/4 v14, 0x6

    aput-byte v1, v13, v14

    add-int/lit8 v1, v12, 0x1

    aget-byte v12, v0, v12

    const/4 v14, 0x7

    aput-byte v12, v13, v14

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v11

    invoke-virtual {v5, v6, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    goto/16 :goto_6

    :cond_6
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    new-array v11, v3, [B

    add-int/lit8 v12, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v11, v4

    add-int/lit8 v1, v12, 0x1

    aget-byte v12, v0, v12

    const/4 v13, 0x1

    aput-byte v12, v11, v13

    add-int/lit8 v12, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v11, v17

    add-int/lit8 v1, v12, 0x1

    aget-byte v12, v0, v12

    aput-byte v12, v11, v16

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v12

    double-to-int v12, v12

    div-int/2addr v11, v12

    invoke-virtual {v5, v6, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    goto/16 :goto_6

    :pswitch_8
    move-object/from16 v23, v6

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    new-array v11, v3, [B

    aput-byte v4, v11, v4

    add-int/lit8 v12, v1, 0x1

    aget-byte v1, v0, v1

    const/4 v13, 0x1

    aput-byte v1, v11, v13

    add-int/lit8 v1, v12, 0x1

    aget-byte v12, v0, v12

    aput-byte v12, v11, v17

    add-int/lit8 v12, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v11, v16

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v13

    double-to-int v11, v13

    div-int/2addr v1, v11

    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    nop

    :goto_4
    move v1, v12

    goto :goto_6

    :pswitch_9
    move-object/from16 v23, v6

    new-array v5, v3, [B

    aput-byte v4, v5, v4

    const/4 v6, 0x1

    aput-byte v4, v5, v6

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v0, v1

    aput-byte v1, v5, v17

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, v0, v6

    aput-byte v6, v5, v16

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v11

    double-to-int v11, v11

    div-int v11, v5, v11

    invoke-virtual {v6, v8, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    nop

    move v8, v5

    goto :goto_6

    :pswitch_a
    move-object/from16 v23, v6

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v0, v1

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v11

    double-to-int v11, v11

    div-int v11, v1, v11

    invoke-virtual {v6, v8, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    nop

    move v8, v1

    move v1, v5

    goto :goto_6

    :pswitch_b
    move-object/from16 v23, v6

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v11, v1, 0x1

    aget-byte v1, v0, v1

    if-nez v1, :cond_7

    move v1, v4

    goto :goto_5

    :cond_7
    nop

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    nop

    move v1, v11

    :goto_6
    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DataSize"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DataCount"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    move v5, v8

    move v7, v5

    :cond_9
    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->repeatList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_12

    const/4 v6, 0x0

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v14, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_1

    goto :goto_8

    :pswitch_c
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v14

    new-array v15, v7, [D

    invoke-virtual {v11, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :pswitch_d
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v14

    new-array v15, v7, [F

    invoke-virtual {v11, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :pswitch_e
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v14

    new-array v15, v7, [J

    invoke-virtual {v11, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :pswitch_f
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v14

    const-string v15, "TimeStampArray"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v14

    new-array v15, v7, [J

    invoke-virtual {v11, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_a
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v14

    new-array v15, v7, [I

    invoke-virtual {v11, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_8
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->size()B

    move-result v14

    add-int/2addr v6, v14

    goto :goto_7

    :cond_b
    array-length v12, v0

    sub-int/2addr v12, v1

    mul-int v13, v6, v7

    sub-int/2addr v12, v13

    if-gez v12, :cond_c

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :cond_c
    move v12, v1

    move v1, v4

    :goto_9
    if-ge v1, v7, :cond_f

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v4

    aget v4, v15, v4

    packed-switch v4, :pswitch_data_2

    move v4, v3

    move/from16 v26, v6

    move/from16 v25, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    const/16 v6, 0x8

    const/4 v15, 0x5

    const/16 v19, 0x6

    goto/16 :goto_e

    :pswitch_10
    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    new-array v15, v3, [B

    add-int/lit8 v20, v12, 0x1

    aget-byte v12, v0, v12

    const/16 v21, 0x0

    aput-byte v12, v15, v21

    add-int/lit8 v12, v20, 0x1

    aget-byte v20, v0, v20

    const/16 v21, 0x1

    aput-byte v20, v15, v21

    add-int/lit8 v20, v12, 0x1

    aget-byte v12, v0, v12

    aput-byte v12, v15, v17

    add-int/lit8 v12, v20, 0x1

    aget-byte v20, v0, v20

    aput-byte v20, v15, v16

    invoke-static {v15}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    move-object/from16 v24, v4

    int-to-double v3, v15

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v21

    div-double v3, v3, v21

    aput-wide v3, v24, v1

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v24

    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v26, v6

    move/from16 v25, v7

    goto/16 :goto_b

    :pswitch_11
    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    const/4 v4, 0x4

    new-array v15, v4, [B

    const/4 v4, 0x0

    aput-byte v4, v15, v4

    add-int/lit8 v4, v12, 0x1

    aget-byte v12, v0, v12

    const/16 v20, 0x1

    aput-byte v12, v15, v20

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v0, v4

    aput-byte v4, v15, v17

    add-int/lit8 v4, v12, 0x1

    aget-byte v12, v0, v12

    aput-byte v12, v15, v16

    invoke-static {v15}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    move/from16 v26, v6

    move/from16 v25, v7

    int-to-double v6, v12

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v21

    div-double v6, v6, v21

    aput-wide v6, v3, v1

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    move v12, v4

    goto/16 :goto_b

    :pswitch_12
    move/from16 v26, v6

    move/from16 v25, v7

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    const/4 v4, 0x4

    new-array v6, v4, [B

    const/4 v4, 0x0

    aput-byte v4, v6, v4

    const/4 v7, 0x1

    aput-byte v4, v6, v7

    add-int/lit8 v4, v12, 0x1

    aget-byte v7, v0, v12

    aput-byte v7, v6, v17

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v0, v4

    aput-byte v4, v6, v16

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-double v6, v4

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v21

    div-double v6, v6, v21

    aput-wide v6, v3, v1

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_13
    move/from16 v26, v6

    move/from16 v25, v7

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    const/4 v4, 0x4

    new-array v6, v4, [B

    add-int/lit8 v4, v12, 0x1

    aget-byte v7, v0, v12

    const/4 v12, 0x0

    aput-byte v7, v6, v12

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v0, v4

    const/4 v12, 0x1

    aput-byte v4, v6, v12

    add-int/lit8 v4, v7, 0x1

    aget-byte v7, v0, v7

    aput-byte v7, v6, v17

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v0, v4

    aput-byte v4, v6, v16

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v4, v6

    aput v4, v3, v1

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_14
    move/from16 v26, v6

    move/from16 v25, v7

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    const/4 v4, 0x4

    new-array v6, v4, [B

    const/4 v4, 0x0

    aput-byte v4, v6, v4

    add-int/lit8 v4, v12, 0x1

    aget-byte v7, v0, v12

    const/4 v12, 0x1

    aput-byte v7, v6, v12

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v0, v4

    aput-byte v4, v6, v17

    add-int/lit8 v12, v7, 0x1

    aget-byte v4, v0, v7

    aput-byte v4, v6, v16

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v4, v6

    aput v4, v3, v1

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :pswitch_15
    move/from16 v26, v6

    move/from16 v25, v7

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    const/4 v4, 0x4

    new-array v6, v4, [B

    const/4 v4, 0x0

    aput-byte v4, v6, v4

    const/4 v7, 0x1

    aput-byte v4, v6, v7

    add-int/lit8 v4, v12, 0x1

    aget-byte v7, v0, v12

    aput-byte v7, v6, v17

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v0, v4

    aput-byte v4, v6, v16

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v4, v6

    aput v4, v3, v1

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_b
    move/from16 v27, v8

    move-object/from16 v28, v9

    goto :goto_c

    :pswitch_16
    move/from16 v26, v6

    move/from16 v25, v7

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    const/16 v4, 0x8

    new-array v6, v4, [B

    add-int/lit8 v4, v12, 0x1

    aget-byte v7, v0, v12

    const/4 v12, 0x0

    aput-byte v7, v6, v12

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v0, v4

    const/4 v12, 0x1

    aput-byte v4, v6, v12

    add-int/lit8 v4, v7, 0x1

    aget-byte v7, v0, v7

    aput-byte v7, v6, v17

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v0, v4

    aput-byte v4, v6, v16

    add-int/lit8 v4, v7, 0x1

    aget-byte v7, v0, v7

    const/4 v12, 0x4

    aput-byte v7, v6, v12

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v0, v4

    const/4 v12, 0x5

    aput-byte v4, v6, v12

    add-int/lit8 v4, v7, 0x1

    aget-byte v7, v0, v7

    const/4 v12, 0x6

    aput-byte v7, v6, v12

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v0, v4

    const/4 v7, 0x7

    aput-byte v4, v6, v7

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    move/from16 v27, v8

    move-object/from16 v28, v9

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v8

    double-to-int v4, v8

    int-to-long v8, v4

    div-long/2addr v6, v8

    aput-wide v6, v3, v1

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_c
    move-object/from16 v29, v10

    const/4 v4, 0x4

    const/16 v6, 0x8

    const/4 v15, 0x5

    const/16 v19, 0x6

    goto/16 :goto_e

    :pswitch_17
    move/from16 v26, v6

    move/from16 v25, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TimeStampArray"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v4

    const/16 v6, 0x8

    new-array v7, v6, [B

    const/4 v8, 0x0

    aput-byte v8, v7, v8

    const/4 v9, 0x1

    aput-byte v8, v7, v9

    aput-byte v8, v7, v17

    aput-byte v8, v7, v16

    add-int/lit8 v8, v12, 0x1

    aget-byte v9, v0, v12

    const/4 v12, 0x4

    aput-byte v9, v7, v12

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, v0, v8

    const/4 v15, 0x5

    aput-byte v8, v7, v15

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, v0, v9

    const/16 v19, 0x6

    aput-byte v9, v7, v19

    add-int/lit8 v12, v8, 0x1

    aget-byte v8, v0, v8

    const/4 v9, 0x7

    aput-byte v8, v7, v9

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v7

    aput-wide v7, v3, v1

    goto/16 :goto_d

    :cond_d
    const/16 v6, 0x8

    const/4 v9, 0x7

    const/4 v15, 0x5

    const/16 v19, 0x6

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x4

    new-array v7, v4, [B

    add-int/lit8 v4, v12, 0x1

    aget-byte v8, v0, v12

    const/4 v12, 0x0

    aput-byte v8, v7, v12

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v0, v4

    const/4 v12, 0x1

    aput-byte v4, v7, v12

    add-int/lit8 v4, v8, 0x1

    aget-byte v8, v0, v8

    aput-byte v8, v7, v17

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v0, v4

    aput-byte v4, v7, v16

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v7

    double-to-int v7, v7

    div-int/2addr v4, v7

    aput v4, v3, v1

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :pswitch_18
    move/from16 v26, v6

    move/from16 v25, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    const/16 v6, 0x8

    const/4 v9, 0x7

    const/4 v15, 0x5

    const/16 v19, 0x6

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x4

    new-array v7, v4, [B

    const/4 v4, 0x0

    aput-byte v4, v7, v4

    add-int/lit8 v4, v12, 0x1

    aget-byte v8, v0, v12

    const/4 v12, 0x1

    aput-byte v8, v7, v12

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v0, v4

    aput-byte v4, v7, v17

    add-int/lit8 v12, v8, 0x1

    aget-byte v4, v0, v8

    aput-byte v4, v7, v16

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v7

    double-to-int v7, v7

    div-int/2addr v4, v7

    aput v4, v3, v1

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_d
    move-object/from16 v29, v10

    const/4 v4, 0x4

    goto/16 :goto_e

    :pswitch_19
    move/from16 v26, v6

    move/from16 v25, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    const/16 v6, 0x8

    const/4 v9, 0x7

    const/4 v15, 0x5

    const/16 v19, 0x6

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x4

    new-array v7, v4, [B

    const/4 v8, 0x0

    aput-byte v8, v7, v8

    const/16 v18, 0x1

    aput-byte v8, v7, v18

    add-int/lit8 v8, v12, 0x1

    aget-byte v12, v0, v12

    aput-byte v12, v7, v17

    add-int/lit8 v12, v8, 0x1

    aget-byte v8, v0, v8

    aput-byte v8, v7, v16

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    move-object/from16 v29, v10

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v9

    double-to-int v8, v9

    div-int/2addr v7, v8

    aput v7, v3, v1

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :pswitch_1a
    move v4, v3

    move/from16 v26, v6

    move/from16 v25, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    const/16 v6, 0x8

    const/4 v15, 0x5

    const/16 v19, 0x6

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    add-int/lit8 v7, v12, 0x1

    aget-byte v8, v0, v12

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v9

    double-to-int v9, v9

    div-int/2addr v8, v9

    aput v8, v3, v1

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    move v12, v7

    :goto_e
    move v3, v4

    move/from16 v7, v25

    move/from16 v6, v26

    move/from16 v8, v27

    move-object/from16 v9, v28

    move-object/from16 v10, v29

    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_e
    move v4, v3

    move/from16 v26, v6

    move/from16 v25, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    const/16 v6, 0x8

    const/4 v15, 0x5

    const/16 v19, 0x6

    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v26

    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_f
    move/from16 v26, v6

    move/from16 v25, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_3

    goto/16 :goto_10

    :pswitch_1b
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    goto :goto_10

    :pswitch_1c
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    goto :goto_10

    :pswitch_1d
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    goto :goto_10

    :pswitch_1e
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    const-string v6, "TimeStampArray"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    goto :goto_10

    :cond_10
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    nop

    :goto_10
    goto/16 :goto_f

    :cond_11
    move v1, v12

    goto :goto_11

    :cond_12
    move/from16 v25, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    :goto_11
    move-object/from16 v6, v23

    move/from16 v7, v25

    move/from16 v8, v27

    move-object/from16 v9, v28

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_13
    goto :goto_12

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    array-length v4, v0

    sub-int/2addr v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-gez v4, :cond_15

    goto :goto_13

    :cond_15
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v0, v1

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move v1, v4

    :goto_12
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->notifyObserver()V

    return v1

    :cond_16
    :goto_13
    const/4 v4, -0x1

    return v4

    :pswitch_data_0
    .packed-switch 0x1
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

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public final parseForRequestType([BI)I
    .locals 5

    move v0, p2

    array-length v1, p1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-gez v1, :cond_0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v2

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    invoke-interface {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->getRequestType()I

    move-result v4

    if-ne v0, v4, :cond_2

    invoke-interface {v3, p1, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->parse([BI)I

    move-result v1

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    :goto_2
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_REQUEST_LIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v2
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method protected final removeRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected final reset()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final sendCmdToSensorHub(BB[B)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 v2, 0x1

    aput-byte p2, v1, v2

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    return-void
.end method

.method protected final sendCommonValueToSensorHub(B[B)Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, -0x3f

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    aput-byte p1, v1, v3

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v2

    :cond_0
    return v3
.end method

.method protected final sendPropertyValueToSensorHub(BBB[B)Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, -0x3f

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    aput-byte p1, v1, v3

    const/4 v4, 0x2

    aput-byte p2, v1, v4

    const/4 v4, 0x3

    aput-byte p3, v1, v4

    invoke-virtual {v0, p4, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v2

    :cond_0
    return v3
.end method

.method protected final sendPropertyValueToSensorHub(BB[B)Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, -0x3f

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    aput-byte p1, v1, v3

    const/4 v4, 0x2

    aput-byte p2, v1, v4

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v2

    :cond_0
    return v3
.end method

.method protected final terminateManager()V
    .locals 0

    return-void
.end method
