.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;
.super Lcom/android/internal/util/State;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PassGpsBatch"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$4100(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11

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

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;->getName()Ljava/lang/String;

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

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$5100(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4900(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/Location;

    move-result-object v1

    const/high16 v3, 0x42000000    # 32.0f

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v1, v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$4100(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4900(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4900(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-static/range {v3 .. v10}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->validPassDist(DDDD)Z

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v1, v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$4100(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v1, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$4902(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Landroid/location/Location;)Landroid/location/Location;

    nop

    :goto_1
    return v2
.end method
