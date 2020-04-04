.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;
.super Ljava/lang/Object;
.source "SensorHubManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHubListener"
.end annotation


# instance fields
.field mHeader:Ljava/nio/ByteBuffer;

.field private final mHubCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHubDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubDataMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubCountMap:Ljava/util/HashMap;

    const/16 p1, 0x8

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    if-lez v1, :cond_b

    const/16 v6, 0x400

    if-gt v1, v6, :cond_b

    if-ltz v2, :cond_b

    if-gt v2, v1, :cond_b

    if-lez v5, :cond_b

    if-le v5, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubDataMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubCountMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    iget-object v8, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubDataMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubCountMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_0
    if-nez v6, :cond_3

    iget-object v8, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v8}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->access$100(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->getBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    :cond_3
    if-nez v6, :cond_4

    const-string v3, "SensorHubManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There is no buffer for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    if-le v1, v8, :cond_5

    const-string v3, "SensorHubManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong timestamp : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , buffer size : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , total : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/4 v8, 0x2

    move v9, v8

    move v8, v2

    :goto_1
    if-gt v8, v5, :cond_7

    const/16 v10, 0xf

    if-le v9, v10, :cond_6

    const-string v3, "SensorHubManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data is too big"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    add-int/lit8 v11, v9, 0x1

    aget v9, v10, v9

    invoke-virtual {v6, v8, v9}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x4

    move v9, v11

    goto :goto_1

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v10, v5, v2

    add-int/2addr v10, v4

    add-int/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v1, :cond_9

    iget-object v7, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v7}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->access$200(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    nop

    :goto_2
    if-ge v3, v7, :cond_8

    iget-object v8, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v8}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->access$200(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v8, v10, v1, v11, v12}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->onGetSensorHubDataLocked([BIJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->access$100(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->returnBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v1, :cond_a

    const-string v3, "SensorHubManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The Packet is bigger than data size"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubCountMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "SensorHubManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mHubDataMap size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubDataMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", buffer count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", timestamp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_b
    :goto_4
    const-string v3, "SensorHubManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSensorChanged : wrong data "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
