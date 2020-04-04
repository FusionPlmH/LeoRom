.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "StayingAlertRunner.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/ICurrrentLocationObserver;


# static fields
.field private static final ASK_CURRENT_LOCATION:B = 0x2t


# instance fields
.field private mCurAltitude:D

.field private mCurLatitude:D

.field private final mCurLocationManager:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

.field private mCurLongitude:D

.field private mStopPeriod:I

.field private mWaitPeriod:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mStopPeriod:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mWaitPeriod:I

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-direct {v0, p2, p3, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/manager/ICurrrentLocationObserver;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLocationManager:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLocationManager:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->unregisterCurrentLocationObserver()V

    return-void
.end method

.method protected display()V
    .locals 0

    return-void
.end method

.method public final enable()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLocationManager:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->registerCurrentLocationObserver(Lcom/samsung/android/contextaware/manager/ICurrrentLocationObserver;)V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STAYING_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 4

    const-string v0, "Action"

    const-string v1, "CurLatitude"

    const-string v2, "CurLongitude"

    const-string v3, "CurAltitude"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mStopPeriod:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mWaitPeriod:I

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    const/16 v0, 0x1b

    return v0
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
    .locals 8

    move v0, p2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    array-length v2, p1

    sub-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLocationManager:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->enable()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v3, v1, v3

    iget-wide v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLatitude:D

    invoke-virtual {v5, v3, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v4

    iget-wide v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLongitude:D

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v1, v4

    iget-wide v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurAltitude:D

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parse end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return v2

    :cond_2
    :goto_1
    const/4 v2, -0x1

    return v2
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x1b

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-ne p1, v3, :cond_0

    move-object v3, p2

    check-cast v3, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mStopPeriod:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop Period = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    nop

    invoke-static {v3, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    invoke-virtual {p0, v1, v2, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->sendPropertyValueToSensorHub(BB[B)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v3, 0x18

    if-ne p1, v3, :cond_1

    move-object v3, p2

    check-cast v3, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mWaitPeriod:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wait Period = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-static {v3, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    invoke-virtual {p0, v1, v4, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->sendPropertyValueToSensorHub(BB[B)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final updateCurrentLocation(JJDDD)V
    .locals 5

    iput-wide p5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLatitude:D

    iput-wide p7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLongitude:D

    iput-wide p9, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurAltitude:D

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double v2, p5, v0

    double-to-int v2, v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    mul-double/2addr v0, p7

    double-to-int v0, v0

    invoke-static {v0, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [B

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v0, v4, v1, v3, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v3, 0x1b

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->sendPropertyValueToSensorHub(BB[B)Z

    return-void
.end method
