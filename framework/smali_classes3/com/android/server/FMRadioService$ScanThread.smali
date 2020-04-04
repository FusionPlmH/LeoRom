.class Lcom/android/server/FMRadioService$ScanThread;
.super Ljava/lang/Thread;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanThread"
.end annotation


# instance fields
.field private scanCount:I

.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private doScan()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    const-wide/32 v2, 0x128e0

    const-wide/32 v4, 0x155cc

    const-wide/32 v6, 0x1a5e0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v8, :cond_0

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$2100(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$2100(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$2100(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    :goto_0
    iget v0, v1, Lcom/android/server/FMRadioService$ScanThread;->scanCount:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/android/server/FMRadioService$ScanThread;->scanCount:I

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v10, 0x9

    const/4 v11, 0x4

    const-wide/16 v12, 0x0

    if-eq v0, v11, :cond_2

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v10, :cond_3

    :cond_2
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v12, v13}, Lcom/android/server/FMRadioService;->access$3202(Lcom/android/server/FMRadioService;J)J

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v12, v13}, Lcom/android/server/FMRadioService;->access$3302(Lcom/android/server/FMRadioService;J)J

    :cond_3
    sget-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3400(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$2100(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/FMPlayerNativeBase;->setScanning(Z)V

    :cond_4
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-wide/16 v14, 0xfa

    if-ne v0, v9, :cond_7

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v9, :cond_5

    const-wide/32 v2, 0x155cc

    goto :goto_1

    :cond_5
    nop

    :goto_1
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->checkBaseFreq()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3500(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/server/FMRadioService;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found channel :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v9, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3400(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/Object;->wait(J)V

    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :goto_2
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3500(Lcom/android/server/FMRadioService;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->searchAll()J

    move-result-wide v3

    invoke-static {}, Lcom/android/server/FMRadioService;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found channel :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_8
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v11, :cond_9

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v10, :cond_9

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/server/FMRadioService;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate channel :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    cmp-long v0, v3, v12

    const-wide/16 v6, 0x14

    const/4 v5, 0x3

    if-lez v0, :cond_15

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)J

    move-result-wide v20

    cmp-long v0, v20, v12

    if-gtz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v3, v4}, Lcom/android/server/FMRadioService;->access$3802(Lcom/android/server/FMRadioService;J)J

    :cond_a
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v11, :cond_11

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v10, :cond_b

    goto/16 :goto_7

    :cond_b
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3500(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3400(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v10

    monitor-enter v10

    :try_start_1
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/Object;->wait(J)V

    monitor-exit v10

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_c
    :goto_3
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-eq v0, v9, :cond_e

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v8, :cond_d

    goto :goto_4

    :cond_d
    const-wide/32 v18, 0x1a5e0

    goto :goto_5

    :cond_e
    :goto_4
    const-wide/32 v18, 0x1a5e0

    cmp-long v0, v3, v18

    if-eqz v0, :cond_10

    :goto_5
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v5, :cond_f

    const-wide/32 v20, 0x15f90

    cmp-long v0, v3, v20

    if-nez v0, :cond_f

    goto :goto_6

    :cond_f
    const-wide/32 v16, 0x155cc

    goto/16 :goto_8

    :cond_10
    :goto_6
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v8, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v8}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Long;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_9

    :cond_11
    :goto_7
    const-wide/32 v18, 0x1a5e0

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v3, v4}, Lcom/android/server/FMRadioService;->access$3302(Lcom/android/server/FMRadioService;J)J

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3200(Lcom/android/server/FMRadioService;)J

    move-result-wide v20

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3300(Lcom/android/server/FMRadioService;)J

    move-result-wide v22

    cmp-long v0, v20, v22

    if-ltz v0, :cond_13

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3300(Lcom/android/server/FMRadioService;)J

    move-result-wide v10

    const-wide/32 v16, 0x155cc

    cmp-long v0, v10, v16

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    :cond_12
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v8, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v8}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Long;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_9

    :cond_13
    const-wide/32 v16, 0x155cc

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3500(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v2, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3300(Lcom/android/server/FMRadioService;)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/android/server/FMRadioService;->access$3202(Lcom/android/server/FMRadioService;J)J

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3400(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/Object;->wait(J)V

    monitor-exit v2

    goto :goto_8

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_14
    :goto_8
    nop

    move-wide/from16 v6, v18

    const/16 v10, 0x9

    goto/16 :goto_2

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Testmode Skipp value : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v8}, Lcom/android/server/FMRadioService;->access$3900(Lcom/android/server/FMRadioService;)Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v8, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v8}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Long;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    nop

    :cond_16
    :goto_9
    sget-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$3400(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$2100(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/FMPlayerNativeBase;->setScanning(Z)V

    :cond_17
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$4000(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;

    move-result-object v0

    const-string v1, "FMRadio Service Scan Thread"

    const v2, 0x20000001

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v1, "Scan thread gets the dimmed screen lock"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "Scanning Thread started..."

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v6, 0x9

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v4}, Lcom/android/server/FMRadioService;->isAllSoundOff()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v4}, Lcom/android/server/FMRadioService;->getDNDStatus()I

    move-result v4

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$2100(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/FMPlayerNativeBase;->muteOn()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4, v3}, Lcom/android/server/FMRadioService;->access$2400(Lcom/android/server/FMRadioService;Z)V

    :cond_1
    :goto_0
    const-string v4, "Scanning Thread started... - Turning off FM"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v5}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/FMRadioService;->access$3802(Lcom/android/server/FMRadioService;J)J

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/android/server/FMRadioService;->access$3602(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$3900(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4100(Lcom/android/server/FMRadioService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6}, Lcom/android/server/FMRadioService;->access$4200(Lcom/android/server/FMRadioService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7}, Lcom/android/server/FMRadioService;->access$4300(Lcom/android/server/FMRadioService;)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/FMRadioService;->access$4400(Lcom/android/server/FMRadioService;III)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "first scan no block channel with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4100(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4200(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4300(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/FMRadioService$ScanThread;->doScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4, v3}, Lcom/android/server/FMRadioService;->access$3502(Lcom/android/server/FMRadioService;Z)Z

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4, v1}, Lcom/android/server/FMRadioService;->access$3702(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/FMRadioService;->access$4502(Lcom/android/server/FMRadioService;I)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan Thread resuming volume :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4500(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4500(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4, v3}, Lcom/android/server/FMRadioService;->access$3502(Lcom/android/server/FMRadioService;Z)Z

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4, v1}, Lcom/android/server/FMRadioService;->access$3702(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/FMRadioService;->access$4502(Lcom/android/server/FMRadioService;I)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan Thread resuming volume :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4500(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4500(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v1, "Scan thread released the dimmed screen lock"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_4
    const-string v1, "Scanning Thread work is done..."

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :goto_3
    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5, v3}, Lcom/android/server/FMRadioService;->access$3502(Lcom/android/server/FMRadioService;Z)Z

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5, v1}, Lcom/android/server/FMRadioService;->access$3702(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/server/FMRadioService;->access$4502(Lcom/android/server/FMRadioService;I)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scan Thread resuming volume :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4500(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4500(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v1, v2, v5, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v1, "Scan thread released the dimmed screen lock"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_5
    throw v4
.end method
