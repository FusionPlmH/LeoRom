.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
.super Ljava/lang/Object;
.source "PowerResetNotiParser.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;
    }
.end annotation


# static fields
.field private static final PERMISSION_SENSORHUB_RESET:Ljava/lang/String; = "com.samsung.permission.SENSORHUB_RESET"

.field private static final SLPI_CMD_RESET_STATE:I = 0x0

.field private static final SLPI_CMD_RESTORE_STATE:I = 0x1

.field private static final SLPI_CMD_UNKNOWN_STATE:I = -0x1

.field private static final SLPI_RESET_STATUS:Ljava/lang/String; = "restrict"

.field private static final SLPI_RESET_STATUS_PATH:Ljava/lang/String; = "/sys/class/sensors/ssc_core/operation_mode"

.field private static final SLPI_RESTORE_STATUS:Ljava/lang/String; = "normal"

.field private static final SLPI_UNKNOWN_STATUS:Ljava/lang/String; = "unknown"


# instance fields
.field mContext:Landroid/content/Context;

.field private mLastStatus:Ljava/lang/String;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

.field private mSensorHubResetCnt:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mLastStatus:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->isSLPISupported()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    const-string v1, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;->startWatching()V

    const-string v0, "SLPIResetObserver : start"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "SLPIResetObserver : observer is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->isSLPISupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mLastStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mLastStatus:Ljava/lang/String;

    return-object p1
.end method

.method private getFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v3, "File Path is null!!"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/FileReader;->ready()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/io/FileReader;->read()I

    move-result v4

    move v3, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    int-to-char v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "File is not found"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_4
    const-string v4, "File is not found"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :goto_2
    return-object v0

    :goto_3
    nop

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    throw v3
.end method

.method private isSLPISupported()Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public final notifySensorHubResetObserver(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;->updateSensorHubResetStatus(I)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public final parse([BI)I
    .locals 9

    move v0, p2

    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    const-string v4, "Noti"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    array-length v5, p1

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    add-int/lit8 v5, v3, 0x1

    aget-byte v4, p1, v3

    move v3, v5

    :cond_1
    const/16 v5, -0x2b

    if-ne v0, v5, :cond_2

    const-string v5, "================= Noti (Power) ================="

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    const-string v5, "Noti Type : SensorHub Reset"

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->sendAutoBrightnessTableToSensorHub()Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->notifySensorHubResetObserver(I)V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->isBootComplete()Z

    move-result v5

    if-ne v5, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.android.contextaware.SENSORHUB_RESET"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "sensorhub_reset_reason"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "sensorhub_reset_cnt"

    iget-wide v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v5, "sensorhub_reset_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sensorhub reset status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Sensorhub reset cnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.samsung.permission.SENSORHUB_RESET"

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_2
    return v3
.end method

.method public final registerSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final unregisterSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
