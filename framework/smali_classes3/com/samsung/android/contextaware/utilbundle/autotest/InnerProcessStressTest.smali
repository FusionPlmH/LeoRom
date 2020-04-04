.class abstract Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;
.source "InnerProcessStressTest.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected abstract getPacket(I)[B
.end method

.method public final run()V
    .locals 6

    const/4 v0, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;->getDelayTime()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;->getPacket(I)[B

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-byte v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Packet = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseForScenarioTesting([B)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->isStopTest()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    nop

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
