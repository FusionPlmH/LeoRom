.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;
.source "SensorHubParserProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/IApPowerObserver;


# static fields
.field private static final PACKET_MAX_SIZE:I = 0x4000

.field private static volatile instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private mApStatus:I

.field private mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

.field private mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

.field private mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

.field private final mSensorHubListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

.field private mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;[BI)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parse([BI)I

    move-result v0

    return v0
.end method

.method private checkInstruction(B)Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-byte v5, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne v5, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private checkLibType(B)Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-byte v5, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne v5, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private checkPacketSize([B)I
    .locals 2

    array-length v0, p1

    if-gtz v0, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LENGTH_ZERO:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    return v0

    :cond_0
    array-length v0, p1

    const/16 v1, 0x4000

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LENGTH_OVERFLOW:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

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
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    return-object v0
.end method

.method private parse([BI)I
    .locals 7

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkPacketSize([B)I

    move-result v2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    return v2

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v4, "Packet is null"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    :goto_1
    nop

    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_7

    array-length v4, v0

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x2

    if-gez v4, :cond_3

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_HEADER_LENGTH:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    return v4

    :cond_3
    aget-byte v4, v0, v1

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkInstruction(B)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_INSTRUCTION_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    return v4

    :cond_4
    aget-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v5, v0, v1

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkLibType(B)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TYPE_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v5

    return v5

    :cond_5
    aget-byte v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseData(BB[BI)I

    move-result v1

    if-gez v1, :cond_6

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v6

    return v6

    :cond_6
    goto :goto_2

    :cond_7
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    return v1
.end method

.method private parseData(BB[BI)I
    .locals 4

    move v0, p4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    const/4 v3, -0x1

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->checkParserMap()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseNotiPowerData(BB[BI)I

    move-result v1

    if-lez v1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseDebugMsg(BB[BI)I

    move-result v1

    if-lez v1, :cond_2

    return v1

    :cond_2
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_LIBRARY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_INSTRUCTION_VALUE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v3

    :cond_3
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2, p3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->parse([BI)I

    move-result v0

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY_EXT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2, p3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->parse([BI)I

    move-result v0

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY_REQUEST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2, p3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->parse([BI)I

    move-result v0

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TYPE_VALUE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_7
    :goto_1
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LIBRARY_PARSER_OBJECT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v3
.end method

.method private parseDebugMsg(BB[BI)I
    .locals 3

    move v0, p4

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_SENSORHUB_DEBUG_MSG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_LIBRARY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne p1, v2, :cond_0

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_SENSORHUB_DEBUG_MSG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v2

    return v2

    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method private parseNotiPowerData(BB[BI)I
    .locals 3

    move v0, p4

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_NOTI:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne p1, v2, :cond_0

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v2

    return v2

    :cond_0
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public final getExtLibParser()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method public final getLibParser()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method public final getRequestLibParser()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mSensorHubManager is null."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAESHubEvtHler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->registerListener(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;Landroid/os/Handler;)Z

    :cond_2
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeParser;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeParser;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/RequestLibTypeParser;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/RequestLibTypeParser;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->registerApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V

    return-void
.end method

.method public final initializePreparedSubCollection()V
    .locals 0

    return-void
.end method

.method public final parseForScenarioTesting([B)V
    .locals 2

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parse([BI)I

    move-result v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final terminate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->unregisterApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->unregisterListener(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public final updateApPowerStatus(IJ)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    const-string v0, "AP_NONE"

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    const/16 v2, -0x2e

    if-ne v1, v2, :cond_0

    const-string v0, "AP_SLEEP"

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    const/16 v2, -0x2f

    if-ne v1, v2, :cond_1

    const-string v0, "AP_WAKEUP"

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method
