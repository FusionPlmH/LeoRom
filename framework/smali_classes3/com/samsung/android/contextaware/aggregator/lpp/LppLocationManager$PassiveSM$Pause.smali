.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;
.super Lcom/android/internal/util/State;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pause"
.end annotation


# instance fields
.field batchStart:Z

.field firstTime:Z

.field final synthetic this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->batchStart:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->firstTime:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4700(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->firstTime:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->PASSIVE_INACTIVE_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const-wide/32 v3, 0xafc8

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->sendMessageDelayed(IJ)V

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->firstTime:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->PASSIVE_INACTIVE_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const-wide/16 v3, 0x4e20

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->sendMessageDelayed(IJ)V

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->batchStart:Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10

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

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->getName()Ljava/lang/String;

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

    const/16 v1, 0x12

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->batchStart:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$5100(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationManager;

    move-result-object v3

    const-string/jumbo v4, "passive"

    const-wide/16 v5, 0x1388

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4700(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationListener;

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1500(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/os/Looper;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$5000(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->batchStart:Z

    nop

    :goto_0
    return v2
.end method
