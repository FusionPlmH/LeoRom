.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SContextInfo"
.end annotation


# instance fields
.field private mInfo:Landroid/hardware/SensorAdditionalInfo;

.field protected mIsDone:Z

.field final synthetic this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;I[B)V
    .locals 10

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit8 v3, p2, 0x4

    const/4 v4, 0x0

    if-lez v3, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    div-int/lit8 v6, p2, 0x4

    add-int/lit8 v6, v6, 0x2

    if-ge v1, v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    new-array v5, v1, [I

    if-lez v3, :cond_4

    const/4 v6, 0x4

    new-array v6, v6, [B

    move v7, v3

    :goto_2
    if-lez v7, :cond_3

    sub-int v8, v3, v7

    sub-int v9, p2, v7

    aget-byte v9, p3, v9

    aput-byte v9, v6, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_3
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    aput v9, v5, v8

    :cond_4
    aput p2, v5, v4

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v6

    invoke-virtual {v0, v5, v2, v6}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    invoke-static {p1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->access$000(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/hardware/Sensor;

    move-result-object p1

    invoke-static {p1, v5}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->mInfo:Landroid/hardware/SensorAdditionalInfo;

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->mIsDone:Z

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;)Landroid/hardware/SensorAdditionalInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->mInfo:Landroid/hardware/SensorAdditionalInfo;

    return-object v0
.end method
