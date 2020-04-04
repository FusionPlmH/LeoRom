.class Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;
.super Landroid/os/Handler;
.source "SemMediaResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaResourceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

.field final synthetic this$0:Lcom/samsung/android/media/SemMediaResourceHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "SemMediaResourceHelper"

    const-string/jumbo v1, "onCapacityError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->access$200(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->access$200(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;->onError(Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "SemMediaResourceHelper"

    const-string/jumbo v1, "onState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->access$100(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->access$100(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;->onStateChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "SemMediaResourceHelper"

    const-string/jumbo v1, "onRemove"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->access$000(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->access$000(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;->onRemove(Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "SemMediaResourceHelper"

    const-string/jumbo v1, "onAdd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->access$000(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->access$000(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;->onAdd(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v0, "SemMediaResourceHelper"

    const-string/jumbo v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->access$000(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->access$000(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;->onError(Lcom/samsung/android/media/SemMediaResourceHelper;)V

    :cond_1
    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
