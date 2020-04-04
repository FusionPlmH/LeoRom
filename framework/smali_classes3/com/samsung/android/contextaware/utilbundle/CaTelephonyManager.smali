.class public Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
.super Ljava/lang/Object;
.source "CaTelephonyManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;,
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;
    }
.end annotation


# static fields
.field private static final CALL_STATE_ACTIVE:B = -0x27t

.field private static final CALL_STATE_IDLE:B = -0x28t

.field private static CALL_STATE_IDLE_1:I

.field private static CALL_STATE_INCOMING_ANSWERED:I

.field private static CALL_STATE_INCOMING_MISSED:I

.field private static CALL_STATE_INCOMING_RINGING:I

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;


# instance fields
.field private mCellLocation:Landroid/telephony/CellLocation;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_IDLE_1:I

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_INCOMING_RINGING:I

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_INCOMING_ANSWERED:I

    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->CALL_STATE_INCOMING_MISSED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->sendCallStatusToSensorHub(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;Landroid/telephony/CellLocation;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->isCellLocationChanged(Landroid/telephony/CellLocation;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->sendCellInfoToSensorHub()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

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
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    return-object v0
.end method

.method private isCellLocationChanged(Landroid/telephony/CellLocation;)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v1, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_2

    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    move-object v3, p1

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    move-object v4, p1

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    if-eq v1, v3, :cond_0

    if-eq v2, v4, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v1, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_9

    instance-of v1, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    move-object v4, p1

    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    move-object v5, p1

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v5

    move-object v6, p1

    check-cast v6, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v6

    if-ne v1, v4, :cond_3

    if-ne v2, v5, :cond_3

    if-eq v3, v6, :cond_4

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    :cond_4
    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_8

    move-object v1, p1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    move-object v2, p1

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    :cond_7
    goto :goto_0

    :cond_8
    instance-of v1, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_9

    move-object v1, p1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    move-object v2, p1

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    move-object v3, p1

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    const/4 v0, 0x1

    :cond_9
    :goto_0
    return v0
.end method

.method private sendCallStatusToSensorHub(I)V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [B

    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    aput-byte v3, v1, v2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    return-void

    nop

    :array_0
    .array-data 1
        -0x4ct
        0x11t
    .end array-data
.end method

.method private sendCellInfoToSensorHub()V
    .locals 13

    const/16 v0, 0xe

    new-array v0, v0, [B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v5, v3, v4

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    const/4 v5, 0x1

    aget v6, v3, v5

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    const/4 v6, 0x2

    aget v7, v3, v6

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    iget-object v7, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v7, v7, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v8, 0x3

    const/4 v9, 0x4

    if-eqz v7, :cond_0

    aput-byte v4, v0, v8

    iget-object v7, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v8, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    invoke-static {v12, v4, v0, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v8, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    add-int/lit8 v1, v1, 0x4

    invoke-static {v9, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    add-int/2addr v1, v6

    invoke-static {v9, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    add-int/2addr v1, v6

    invoke-static {v9, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    instance-of v7, v7, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v7, :cond_1

    aput-byte v5, v0, v8

    iget-object v7, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v7, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v8, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v8}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v8

    iget-object v10, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mCellLocation:Landroid/telephony/CellLocation;

    check-cast v10, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v10}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v7, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    invoke-static {v12, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v8, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    add-int/lit8 v1, v1, 0x2

    invoke-static {v12, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v10, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    add-int/2addr v1, v6

    invoke-static {v12, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v4, v9}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v12

    add-int/2addr v1, v6

    invoke-static {v12, v4, v0, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v2, 0x1

    :cond_1
    :goto_0
    if-ne v2, v5, :cond_2

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v4

    new-array v5, v6, [B

    fill-array-data v5, :array_0

    invoke-virtual {v4, v0, v5}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        -0x3ft
        0x11t
    .end array-data
.end method


# virtual methods
.method public final initializeManager(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "mTelephonyManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x120

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public final terminateManager()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method
