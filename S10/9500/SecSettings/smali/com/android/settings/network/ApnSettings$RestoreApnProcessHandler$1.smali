.class Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler$1;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler$1;->this$1:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$100()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler$1;->this$1:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    invoke-static {v0}, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->access$2400(Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler$1;->this$1:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    new-instance v2, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler$1;->this$1:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    iget-object v3, v3, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {v2, v3, v1}, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/ApnSettings;Lcom/android/settings/network/ApnSettings$1;)V

    invoke-static {v0, v2}, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->access$2402(Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler$1;->this$1:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    invoke-static {v0}, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->access$2400(Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler$1;->this$1:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    iget-object v0, v0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v0, v1}, Lcom/android/settings/network/ApnSettings;->access$502(Lcom/android/settings/network/ApnSettings;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
