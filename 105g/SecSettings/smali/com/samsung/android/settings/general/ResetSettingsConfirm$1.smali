.class Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;
.super Landroid/content/BroadcastReceiver;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/general/ResetSettingsConfirm;->onActivityCreated(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->access$002(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    new-instance v2, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;

    iget-object v3, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;)V

    iput-object v2, v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetTask:Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    iget-object v0, v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetTask:Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
