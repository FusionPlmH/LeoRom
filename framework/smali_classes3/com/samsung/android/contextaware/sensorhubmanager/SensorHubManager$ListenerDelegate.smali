.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mSensorHubEventListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

.field final synthetic this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->access$300(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;-><init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    return-object v0
.end method


# virtual methods
.method getListener()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    return-object v0
.end method

.method onGetSensorHubDataLocked([BIJ)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->access$100(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->getEvent(I)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "SensorHubManager"

    const-string v2, "can\'t get an event form pool"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    if-nez v1, :cond_1

    const-string v1, "SensorHubManager"

    const-string v2, " no buffer in event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "onGetSensorHubDataLocked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-lez p2, :cond_6

    iget-object v3, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    array-length v3, v3

    if-ge v3, p2, :cond_2

    const-string v2, "SensorHubManager"

    const-string v3, "failed get event, too big data "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput p2, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->length:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "library("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    aget-byte v4, p1, v2

    aput-byte v4, v3, v2

    iget-object v3, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    aget-byte v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/4 v3, 0x1

    :goto_0
    if-ge v3, p2, :cond_6

    iget-object v4, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    aget-byte v5, p1, v3

    aput-byte v5, v4, v3

    const/16 v4, 0x100

    const/4 v5, 0x6

    if-lt p2, v4, :cond_3

    if-lt v3, v5, :cond_3

    add-int/lit8 v6, p2, -0x6

    if-lt v3, v6, :cond_4

    :cond_3
    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    aget-byte v6, v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4
    if-le p2, v4, :cond_5

    if-ne v3, v5, :cond_5

    const-string v4, " ..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const-string v3, "SensorHubManager"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iput v2, v3, Landroid/os/Message;->what:I

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
