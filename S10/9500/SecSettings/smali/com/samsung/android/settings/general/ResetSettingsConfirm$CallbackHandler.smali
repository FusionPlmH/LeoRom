.class public Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;
.super Landroid/os/Handler;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/general/ResetSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string v0, "ResetSettings"

    const-string v1, "Acc Reset Complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->access$200(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {v1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->access$200(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {v2}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->access$400(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-virtual {v2}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->unregisterAccCallbackFromService()V

    :cond_1
    :goto_0
    return-void
.end method
