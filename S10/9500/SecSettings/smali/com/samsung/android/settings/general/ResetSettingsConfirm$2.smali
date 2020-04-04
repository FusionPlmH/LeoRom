.class Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;
.super Landroid/os/Handler;
.source "ResetSettingsConfirm.java"


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

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->access$000(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    iget-object v0, v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    iget-object v0, v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    iget-object v0, v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->access$002(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->access$200(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2$1;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;Landroid/content/Context;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_2
    return-void
.end method
