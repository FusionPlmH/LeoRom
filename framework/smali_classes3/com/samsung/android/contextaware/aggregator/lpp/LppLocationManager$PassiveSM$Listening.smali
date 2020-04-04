.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;
.super Lcom/android/internal/util/State;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Listening"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "LppLocationManager"

    const-string/jumbo v1, "mLocationMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_MGR_RETRY:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->sendMessageDelayed(IJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationManager;

    move-result-object v1

    const-string/jumbo v2, "passive"

    const-wide/16 v3, 0x1388

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4700(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationListener;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1500(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/os/Looper;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8

    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    iget v3, p1, Landroid/os/Message;->what:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$1;->$SwitchMap$com$samsung$android$contextaware$aggregator$lpp$LppLocationManager$Msg:[I

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v1, v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4602(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "LppLocationManager"

    const-string/jumbo v1, "mLocationMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$900(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v1

    const-string/jumbo v2, "passive"

    const-wide/16 v3, 0x1388

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4700(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationListener;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1500(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/os/Looper;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$5000(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v1, v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$700(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->locPassUpdate(Landroid/location/Location;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v1, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4902(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Landroid/location/Location;)Landroid/location/Location;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4800(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->transitionTo(Lcom/android/internal/util/IState;)V

    nop

    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
