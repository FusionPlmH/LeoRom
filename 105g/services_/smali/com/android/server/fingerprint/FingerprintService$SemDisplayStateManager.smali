.class Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemDisplayStateManager"
.end annotation


# instance fields
.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mIsLimitedDisplayOn:Z

.field private mIsRegistered:Z

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mIsLimitedDisplayOn:Z

    return v0
.end method

.method public static synthetic lambda$setLimitedDisplayState$0(Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "setLimitedDisplayState: -> 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$5800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateLimit(I)V

    return-void
.end method

.method public static synthetic lambda$setLimitedDisplayState$1(Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "setLimitedDisplayState: -> 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$5800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateLimit(I)V

    return-void
.end method


# virtual methods
.method registerListener()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mIsRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$500(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mIsRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerDisplayListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method setLimitedDisplayState(ZZ)V
    .locals 4

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mIsLimitedDisplayOn:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "setLimitDisplayState: already on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$SemDisplayStateManager$ZtMyjzKDuC4Y_1nBNz30zhlZHmM;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$SemDisplayStateManager$ZtMyjzKDuC4Y_1nBNz30zhlZHmM;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mIsLimitedDisplayOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to set display state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mIsLimitedDisplayOn:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "setLimitedDisplayState: waiting screen on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mIsLimitedDisplayOn:Z

    new-instance v0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$SemDisplayStateManager$ZGNx_vuQKs9_T2xhH-_pQoz3be4;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$SemDisplayStateManager$ZGNx_vuQKs9_T2xhH-_pQoz3be4;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "setLimitDisplayState: already 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method unRegisterListener()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mIsRegistered:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->mIsRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unRegisterListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
