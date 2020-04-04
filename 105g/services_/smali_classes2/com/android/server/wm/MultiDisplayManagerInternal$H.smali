.class final Lcom/android/server/wm/MultiDisplayManagerInternal$H;
.super Landroid/os/Handler;
.source "MultiDisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiDisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final APP_TRANSITION_FINISHED_FOR_PENDING_LAUNCH_ACTIVITY:I = 0x1

.field public static final NOTIFY_SECURE_BASE_WINDOW_ADDED:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiDisplayManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiDisplayManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/MultiDisplayManagerInternal$H;->this$0:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private messageToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string v0, "UNDEFINED"

    return-object v0

    :cond_0
    const-string v0, "APP_TRANSITION_FINISHED_FOR_PENDING_LAUNCH_ACTIVITY"

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->onSecuredAppLaunched(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiDisplayManagerInternal$H;->this$0:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiDisplayManagerInternal;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    invoke-interface {v0}, Lcom/samsung/android/multidisplay/IMultiDisplayManager;->notifyAppTransitionFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MultiDisplayManagerInternal"

    const-string v2, "Failed to notify AppTransitionFinished"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    return-void
.end method
