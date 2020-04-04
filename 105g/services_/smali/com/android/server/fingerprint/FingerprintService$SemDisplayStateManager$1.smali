.class Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager$1;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;

.field final synthetic val$this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager$1;->val$this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->access$5600(Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "onDisplayChanged: display is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisplayChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;

    iget-object v2, v2, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v2

    instance-of v3, v2, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/android/server/fingerprint/ClientMonitor;->mIsKeyguard:Z

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v3, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleDisplayChanged(I)V

    :cond_1
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->access$5700(Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "onDisplayChanged: should set 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->setLimitedDisplayState(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
