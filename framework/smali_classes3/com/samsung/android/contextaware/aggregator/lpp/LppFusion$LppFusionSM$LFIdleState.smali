.class Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
.super Lcom/android/internal/util/State;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LFIdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    const-string v0, "LppFusion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    const-string v0, "LppFusion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    iget v3, p1, Landroid/os/Message;->what:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;->$SwitchMap$com$samsung$android$contextaware$aggregator$lpp$LppFusion$StateMsg:[I

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "LppFusion"

    const-string v2, "Msg not handled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->stop()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->stop()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->stop()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$900(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->exit()V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$800(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v1, v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverLocationData(Landroid/location/Location;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$800(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const-string v2, "LppFusion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "batch loc list size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/location/Location;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Landroid/location/Location;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v5, v5, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v5

    new-instance v6, Landroid/location/Location;

    invoke-direct {v6, v4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverLocationData(Landroid/location/Location;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$800(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->locRequest(I)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "LPPAlgoLnr\t Location is requested"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$700(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->start()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v1, v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v2, v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$200(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->start(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->start()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    nop

    :goto_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
