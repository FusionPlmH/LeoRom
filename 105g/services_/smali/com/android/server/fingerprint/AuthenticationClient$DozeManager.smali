.class Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/AuthenticationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DozeManager"
.end annotation


# static fields
.field static final DOZE_BAD_QUALITY:I = 0x4

.field static final DOZE_NO_MATCH:I = 0x3


# instance fields
.field private mDisplayState:I

.field private mIsDozeStatus:Z

.field private mIsHlpmEnabled:Z

.field private mIsScreenOn:Z

.field private mPendingCommandForDozeStatus:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/fingerprint/AuthenticationClient;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$showHelpMessage$0(Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0, p1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$1000(Lcom/android/server/fingerprint/AuthenticationClient;I)V

    return-void
.end method


# virtual methods
.method handleFIS()V
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/ClientMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DozeManager.handleFIS: called, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mIsScreenOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mIsDozeStatus:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$1000(Lcom/android/server/fingerprint/AuthenticationClient;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsAODTapToShowEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->requestDozeMode(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$400(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    new-instance v1, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager$1;-><init>(Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;)V

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$402(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_3
    :goto_0
    return-void
.end method

.method handleWakeUp()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    iget-boolean v0, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mIsScreenOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mDisplayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$402(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$502(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void

    :cond_0
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DozeManager.handleWakeUp: called, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mDisplayState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mDisplayState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->semLimitDisplayState(ZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->requestDozeMode(Z)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$500(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    new-instance v1, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager$2;-><init>(Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;)V

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$502(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method hideView()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mIsDozeStatus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->requestDozeMode(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->requestDozeHlpmMode(Z)V

    :cond_0
    return-void
.end method

.method onAcquired(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$900(Lcom/android/server/fingerprint/AuthenticationClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mIsScreenOn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$600(Lcom/android/server/fingerprint/AuthenticationClient;)Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onHelp(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method onDisplayChanged(I)V
    .locals 3

    iput p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mDisplayState:I

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mDisplayState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mDisplayState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mIsDozeStatus:Z

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mIsDozeStatus:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$400(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$400(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$402(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$500(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$500(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$502(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mDisplayState:I

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$600(Lcom/android/server/fingerprint/AuthenticationClient;)Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->handleOverlayMaskView(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method requestDozeHlpmMode(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semGetAodListener()Landroid/hardware/fingerprint/ISemFingerprintViewCallback;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FingerprintService"

    const-string v2, "DozeManager.requestDozeHLPMMode: no listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DozeManager.requestDozeHLPMMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mIsHlpmEnabled:Z

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v1, "fod_enable,1,1"

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mIsScreenOn:Z

    if-nez v1, :cond_3

    const-string/jumbo v1, "fod_enable,1,0"

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    :goto_1
    invoke-interface {v0, v1}, Landroid/hardware/fingerprint/ISemFingerprintViewCallback;->onEvent(I)V

    iput-boolean p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mIsHlpmEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DozeManager.requestDozeHLPMMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method requestDozeMode(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semGetAodListener()Landroid/hardware/fingerprint/ISemFingerprintViewCallback;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FingerprintService"

    const-string v2, "DozeManager.requestDozeMode: no listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DozeManager.requestDozeMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v1, p1, 0x1

    :try_start_0
    invoke-interface {v0, v1}, Landroid/hardware/fingerprint/ISemFingerprintViewCallback;->onEvent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DozeManager.requestDozeMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method setScreenStatus(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/ClientMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DozeManager.setScreenStatus: called with: on = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mIsScreenOn:Z

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mIsScreenOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    iget-object v0, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$700(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$600(Lcom/android/server/fingerprint/AuthenticationClient;)Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onScreenOn()V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$800(Lcom/android/server/fingerprint/AuthenticationClient;)V

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "fod_enable,1,1"

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$402(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$502(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$600(Lcom/android/server/fingerprint/AuthenticationClient;)Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onScreenOff()V

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "fod_enable,1,0"

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method showHelpMessage(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mIsScreenOn:Z

    if-nez v0, :cond_1

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DozeManager.showHelpMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->mDisplayState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0, p1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$1000(Lcom/android/server/fingerprint/AuthenticationClient;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->requestDozeMode(Z)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$DozeManager$Y53OhwfWqp8VoXGko7qZZ3m4Dg4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$DozeManager$Y53OhwfWqp8VoXGko7qZZ3m4Dg4;-><init>(Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;I)V

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$402(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
