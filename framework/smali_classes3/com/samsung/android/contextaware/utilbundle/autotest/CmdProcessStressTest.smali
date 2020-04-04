.class abstract Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;
.source "CmdProcessStressTest.java"


# instance fields
.field private mChange:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;-><init>(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    return-void
.end method


# virtual methods
.method protected abstract clear()V
.end method

.method protected abstract getType()I
.end method

.method protected abstract registerListener()V
.end method

.method public final run()V
    .locals 2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->getDelayTime()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->registerListener()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->unregisterListener()V

    :goto_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->isStopTest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->clear()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method protected abstract unregisterListener()V
.end method
