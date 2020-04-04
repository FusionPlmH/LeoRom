.class Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;
.super Ljava/lang/Object;
.source "ResetSettingsConfirm.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/general/ResetSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->access$402(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Landroid/os/Messenger;)Landroid/os/Messenger;

    const-string v0, "ResetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "svc connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-virtual {v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->registerAccCallbackToService()V

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-virtual {v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetAccHelper()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->access$402(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Landroid/os/Messenger;)Landroid/os/Messenger;

    const-string v0, "ResetSettings"

    const-string/jumbo v1, "svc disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
