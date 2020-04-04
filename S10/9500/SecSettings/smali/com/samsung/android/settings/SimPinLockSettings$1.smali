.class Lcom/samsung/android/settings/SimPinLockSettings$1;
.super Landroid/os/Handler;
.source "SimPinLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SimPinLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SimPinLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SimPinLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SimPinLockSettings$1;->this$0:Lcom/samsung/android/settings/SimPinLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/samsung/android/settings/SimPinLockSettings$1;->this$0:Lcom/samsung/android/settings/SimPinLockSettings;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/samsung/android/settings/SimPinLockSettings;->access$002(Lcom/samsung/android/settings/SimPinLockSettings;Z)Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget v2, p1, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x12c

    packed-switch v2, :pswitch_data_0

    const-string v2, "SimPinLockSettings"

    const-string v3, "Unexpected msg"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    new-instance v2, Lcom/samsung/android/settings/SimPinLockSettings$1$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/SimPinLockSettings$1$2;-><init>(Lcom/samsung/android/settings/SimPinLockSettings$1;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :pswitch_1
    new-instance v2, Lcom/samsung/android/settings/SimPinLockSettings$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/SimPinLockSettings$1$1;-><init>(Lcom/samsung/android/settings/SimPinLockSettings$1;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
