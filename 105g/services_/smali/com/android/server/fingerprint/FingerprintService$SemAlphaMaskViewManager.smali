.class Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemAlphaMaskViewManager"
.end annotation


# instance fields
.field private mClientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mCurClient:Landroid/os/IBinder;

.field private mInfo:Landroid/os/Bundle;

.field private mUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-static {p1}, Lcom/android/server/fingerprint/FingerprintService;->access$6600(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;-><init>(Lcom/android/internal/statusbar/IStatusBarService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mClientList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->addMaskView(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->removeMaskView(Landroid/os/IBinder;I)V

    return-void
.end method

.method private addMaskView(Landroid/os/IBinder;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMaskView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMaskView: already registered client:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->sendEventForMaskView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMaskView: failed to link"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mCurClient:Landroid/os/IBinder;

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mCurClient:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->sendEventForMaskView()V

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMaskView: already on, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mCurClient:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mCurClient:Landroid/os/IBinder;

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private clear()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mCurClient:Landroid/os/IBinder;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic lambda$binderDied$0(Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mCurClient:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->removeMaskView(Landroid/os/IBinder;I)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mCurClient:Landroid/os/IBinder;

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->removeMaskView(Landroid/os/IBinder;I)V

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeMaskView(Landroid/os/IBinder;I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMaskView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeMaskView: failed to unlink"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mCurClient:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->deliverEventToSystemUI(IILjava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mCurClient:Landroid/os/IBinder;

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mCurClient:Landroid/os/IBinder;

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMaskView: new current client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mCurClient:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMaskView: No registered client:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private sendEventForMaskView()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mInfo:Landroid/os/Bundle;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$6700(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$6800(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$6900(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$7000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$5000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "sem_area"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "sem_ux_type"

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->mInfo:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->showAuthenticationCue(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$500(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$SemAlphaMaskViewManager$mBqnk9lptvyyG0VptT_lfxhr6QA;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$SemAlphaMaskViewManager$mBqnk9lptvyyG0VptT_lfxhr6QA;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemAlphaMaskViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
