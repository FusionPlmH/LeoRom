.class Lcom/android/systemui/statusbar/DebugLogMonitor$1;
.super Landroid/os/Handler;
.source "DebugLogMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DebugLogMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DebugLogMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor$1;->this$0:Lcom/android/systemui/statusbar/DebugLogMonitor;

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
    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor$1;->this$0:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->access$600(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor$1;->this$0:Lcom/android/systemui/statusbar/DebugLogMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->access$500(Lcom/android/systemui/statusbar/DebugLogMonitor;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor$1;->this$0:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->access$400(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor$1;->this$0:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->access$300(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor$1;->this$0:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->access$200(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor$1;->this$0:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->access$100(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor$1;->this$0:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->access$000(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1388
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
