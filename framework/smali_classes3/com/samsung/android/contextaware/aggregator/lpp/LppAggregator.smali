.class public Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "LppAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LPP_RESOLUTION:I = 0x0

.field private static final LPP_DEBUG_MSG_END:I = 0x7b85ae

.field private static final LPP_DEBUG_MSG_START:I = 0x126bdfd

.field private static final NEXT_APDR:I = 0xabaa

.field private static final TAG:Ljava/lang/String; = "LppAggregator"


# instance fields
.field private final LPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

.field private altitude:[D

.field count:I

.field private final gpsKeepOnTimer:I

.field private final gpsRequestApdr:I

.field private final gpsRequestTimer:I

.field private latitude:[D

.field private longitude:[D

.field private mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

.field private mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

.field mStatus:[I

.field sendApdr:Landroid/os/Handler;

.field private final strConfigEdit:Ljava/lang/String;

.field private final strConfigText:Ljava/lang/String;

.field private timestamp:[J


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    const/16 v1, 0x14

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->gpsRequestTimer:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->gpsKeepOnTimer:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->gpsRequestApdr:I

    const-string v1, "[Note] \n"

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->strConfigEdit:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->strConfigText:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->LPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    const/16 v0, 0x24

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mStatus:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->count:I

    invoke-virtual {p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->LPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->notifyPositionContext(Ljava/util/ArrayList;)V

    return-void
.end method

.method private convertToUtc(III)J
    .locals 24

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getSyncTime()Landroid/text/format/Time;

    move-result-object v2

    const-string v0, "LppAggregator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/text/format/Time;->second:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v5, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object v10, v0

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    move-object v9, v0

    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    move-object v10, v0

    const-string v0, "LppAggregator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "syncDate:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LppAggregator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "rxDate:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v11, 0x5

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v11

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v11, "LppAggregator"

    const-string/jumbo v12, "time parse error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    const-wide/16 v11, 0x0

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sub-long v11, v13, v15

    :cond_1
    const-string v0, "LppAggregator"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "lapse:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-gez v0, :cond_2

    const-string v0, "LppAggregator"

    const-string/jumbo v13, "lapse is -ve"

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/32 v13, 0x2932e00

    cmp-long v0, v11, v13

    if-lez v0, :cond_3

    const-string v0, "LppAggregator"

    const-string/jumbo v13, "lapse is more than 12 hours"

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v13

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v15, 0x3c

    mul-long v17, v13, v15

    mul-long v17, v17, v15

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    sub-long v3, v11, v17

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v3

    mul-long v17, v13, v15

    mul-long v17, v17, v15

    mul-long v17, v17, v19

    mul-long/2addr v15, v3

    mul-long v15, v15, v19

    add-long v17, v17, v15

    sub-long v15, v11, v17

    div-long v0, v15, v19

    const-string v15, "LppAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lapHr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " lapMin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " lapSec:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    iget v6, v5, Landroid/text/format/Time;->hour:I

    int-to-long v6, v6

    add-long/2addr v6, v13

    long-to-int v6, v6

    iput v6, v5, Landroid/text/format/Time;->hour:I

    iget v6, v5, Landroid/text/format/Time;->minute:I

    int-to-long v6, v6

    add-long/2addr v6, v3

    long-to-int v6, v6

    iput v6, v5, Landroid/text/format/Time;->minute:I

    iget v6, v5, Landroid/text/format/Time;->second:I

    int-to-long v6, v6

    add-long/2addr v6, v0

    long-to-int v6, v6

    iput v6, v5, Landroid/text/format/Time;->second:I

    const-string v6, "LppAggregator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "rxTime:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    return-wide v6
.end method

.method private convertToUtc2(III)J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyLppContext(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyObserver()V

    return-void
.end method

.method private notifyPositionContext(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LppAggregator"

    const-string/jumbo v1, "notifyPositionContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [J

    iput-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    new-array v3, v2, [D

    iput-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    new-array v3, v2, [D

    iput-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    new-array v3, v2, [D

    iput-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/text/format/Time;->set(J)V

    const-string v5, "GMT+00:00"

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    aput-wide v6, v5, v3

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v5, v3

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v5, v3

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    aput-wide v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->notifyLppContext(I)V

    return-void
.end method

.method private test()V
    .locals 4

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->sendApdr:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->sendApdr:Landroid/os/Handler;

    const v1, 0xabaa

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    new-instance v0, Landroid/os/Handler;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$3;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected display()V
    .locals 0

    return-void
.end method

.method public final enable()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x64

    const/16 v3, 0x14

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;-><init>(Landroid/content/Context;III)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->setContext(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->looper:Landroid/os/Looper;

    new-instance v1, Landroid/os/Handler;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 5

    const-string v0, "TrajectoryCount"

    const-string v1, "TrajectoryTimeStamp"

    const-string v2, "TrajectoryLatitude"

    const-string v3, "TrajectoryLongitude"

    const-string v4, "TrajectoryAltitude"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

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

.method protected final initializeAggregator()V
    .locals 0

    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_5

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolution = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    if-eqz v2, :cond_1

    const v2, 0x126bdfd

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sendStatusEnable()V

    :cond_0
    const v2, 0x7b85ae

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sendStatusDisable()V

    :cond_1
    const-string v2, "Invalid value for LPP resolution"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    invoke-virtual {v2, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->setLppResolution(I)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-virtual {v2, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->setLppResolution(I)V

    :cond_4
    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final terminateAggregator()V
    .locals 0

    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Context type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->StayingArea:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v4

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-virtual {v5, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->notifyStayArea(I)V

    goto/16 :goto_1

    :cond_0
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Count:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v5

    aget-object v5, v3, v5

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Hour:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v6

    aget-object v6, v3, v6

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Minute:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v7

    aget-object v7, v3, v7

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Second:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v8

    aget-object v8, v3, v8

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->doe:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual {v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v9

    aget-object v9, v3, v9

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->TimeDifference:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v10

    aget-object v10, v3, v10

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v10

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementEast:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v11

    aget-object v11, v3, v11

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    sget-object v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementNorth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v12

    aget-object v12, v3, v12

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v12

    sget-object v13, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->ActivityType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v13

    aget-object v13, v3, v13

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    const-wide/16 v14, 0x0

    invoke-direct {v0, v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->convertToUtc2(III)J

    move-result-wide v14

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    :goto_0
    move/from16 v17, v16

    move/from16 v2, v17

    if-ge v2, v5, :cond_2

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v3

    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    move/from16 v20, v4

    move/from16 v21, v5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepFlag:D

    aget v18, v11, v2

    aget v22, v11, v2

    move/from16 v23, v6

    mul-int v6, v18, v22

    move/from16 v24, v7

    int-to-double v6, v6

    mul-double/2addr v6, v4

    aget v18, v12, v2

    aget v22, v12, v2

    move/from16 v25, v8

    mul-int v8, v18, v22

    move-object/from16 v26, v1

    int-to-double v0, v8

    mul-double/2addr v0, v4

    add-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    aget-wide v0, v10, v2

    add-long v16, v16, v0

    add-long v0, v14, v16

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    aget v0, v11, v2

    int-to-double v0, v0

    iget-wide v4, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    iget-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    iget-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v4

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    :cond_1
    iget-object v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->mag:[D

    const/4 v1, 0x3

    int-to-double v4, v9

    aput-wide v4, v0, v1

    aget v0, v13, v2

    and-int/lit8 v0, v0, 0xf

    iput v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    aget v0, v13, v2

    and-int/lit16 v0, v0, 0xf0

    iput v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->carryPos:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v2, 0x1

    move-object v1, v0

    move-object/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v8, v25

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-virtual {v2, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->notifyApdrData(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_3
    :goto_1
    move-object v1, v0

    :goto_2
    return-void
.end method
