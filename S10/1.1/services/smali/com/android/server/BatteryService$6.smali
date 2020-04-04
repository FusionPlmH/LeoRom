.class Lcom/android/server/BatteryService$6;
.super Landroid/os/Handler;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->startCallThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;Z)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
