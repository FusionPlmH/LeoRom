.class Lcom/samsung/android/privatemode/PrivateModeManager$2$1;
.super Ljava/lang/Object;
.source "PrivateModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/privatemode/PrivateModeManager$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/privatemode/PrivateModeManager$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/privatemode/PrivateModeManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/privatemode/PrivateModeManager$2$1;->this$1:Lcom/samsung/android/privatemode/PrivateModeManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$300()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "PPS_PrivateModeManager"

    const-string v1, "bindPrivateModeManager, onStateChange : PREPARED "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$300()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/samsung/android/privatemode/IPrivateModeClient;->onStateChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/privatemode/PrivateModeManager$2$1;->this$1:Lcom/samsung/android/privatemode/PrivateModeManager$2;

    iget-object v1, v1, Lcom/samsung/android/privatemode/PrivateModeManager$2;->this$0:Lcom/samsung/android/privatemode/PrivateModeManager;

    const-string v2, "bindPrivateModeManager"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$400(Lcom/samsung/android/privatemode/PrivateModeManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method