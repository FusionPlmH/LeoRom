.class Lcom/samsung/android/settings/SimPersoLockSettings$1;
.super Landroid/os/Handler;
.source "SimPersoLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SimPersoLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SimPersoLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SimPersoLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/SimPersoLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    const-string v1, "SimPersoLockSettings"

    const-string v2, "Unexpected msg"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const-string v1, "SimPersoLockSettings"

    const-string v2, "Exception Occured!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/SimPersoLockSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    const-string v1, "SimPersoLockSettings"

    const-string v2, "ar.result == NULL! - it does not need to refresh"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/SimPersoLockSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/SimPersoLockSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/SimPersoLockSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/SimPersoLockSettings;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-static {v1, v2}, Lcom/samsung/android/settings/SimPersoLockSettings;->access$100(Lcom/samsung/android/settings/SimPersoLockSettings;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/SimPersoLockSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/SimPersoLockSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/SimPersoLockSettings;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    move v2, v3

    nop

    :cond_5
    invoke-static {v1, v2}, Lcom/samsung/android/settings/SimPersoLockSettings;->access$000(Lcom/samsung/android/settings/SimPersoLockSettings;Z)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
