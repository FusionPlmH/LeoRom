.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorHubEventPool"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x80

.field private static final MAX_BUFFERS:I = 0x5

.field private static final MAX_BUFFER_SIZE:I = 0x400

.field private static final MAX_EVENTS:I = 0x5

.field private static final MAX_LARGE_BUFFERS:I = 0x1

.field private static final MAX_LARGE_EVENTS:I = 0x1


# instance fields
.field private final mBuffers:[Ljava/nio/ByteBuffer;

.field private final mEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

.field private final mLargeBuffers:[Ljava/nio/ByteBuffer;

.field private final mLargeEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

.field private mNumBuffers:I

.field private mNumEvents:I

.field private mNumLargeBuffers:I

.field private mNumLargeEvents:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    const/4 v0, 0x5

    new-array v1, v0, [Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iput-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mBuffers:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iput-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeBuffers:[Ljava/nio/ByteBuffer;

    return-void
.end method

.method private createSensorHubEvent(I)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;
    .locals 3

    const-string v0, "SensorHubManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " create new SensorEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method getBuffer(I)Ljava/nio/ByteBuffer;
    .locals 5

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    const-string v1, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrong buffer size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    rem-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_1

    add-int/lit8 v1, p1, 0x4

    rem-int/lit8 v2, p1, 0x4

    sub-int p1, v1, v2

    :cond_1
    const/4 v1, 0x0

    monitor-enter p0

    const/16 v2, 0x80

    if-gt p1, v2, :cond_3

    :try_start_0
    iget v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mBuffers:[Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object v1, v3

    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mBuffers:[Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    add-int/lit8 v4, v4, -0x1

    aput-object v0, v3, v4

    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    :cond_2
    if-nez v1, :cond_5

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-string v0, "SensorHubManager"

    const-string v2, " create new buffer 128"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    const/16 v2, 0x400

    if-gt p1, v2, :cond_5

    iget v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeBuffers:[Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object v1, v3

    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeBuffers:[Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    add-int/lit8 v4, v4, -0x1

    aput-object v0, v3, v4

    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    :cond_4
    if-nez v1, :cond_5

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-string v0, "SensorHubManager"

    const-string v2, " create new buffer 1024"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    if-nez v1, :cond_6

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-string v0, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " create new buffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getEvent(I)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;
    .locals 5

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const-string v1, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " wrong event size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v1, 0x0

    monitor-enter p0

    const/16 v2, 0x80

    if-ge p1, v2, :cond_2

    :try_start_0
    iget v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object v1, v3

    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    add-int/lit8 v4, v4, -0x1

    aput-object v0, v3, v4

    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    :cond_1
    if-nez v1, :cond_4

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->createSensorHubEvent(I)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    const/16 v2, 0x400

    if-ge p1, v2, :cond_4

    iget v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object v1, v3

    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    add-int/lit8 v4, v4, -0x1

    aput-object v0, v3, v4

    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    :cond_3
    if-nez v1, :cond_4

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->createSensorHubEvent(I)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    move-result-object v0

    move-object v1, v0

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->createSensorHubEvent(I)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    move-result-object v0

    move-object v1, v0

    :cond_5
    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method returnBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v1, 0x80

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mBuffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v1, 0x400

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeBuffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method returnEvent(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    array-length v0, v0

    const/16 v1, 0x80

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iget v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    aput-object p1, v1, v3

    iget v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x400

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iget v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    aput-object p1, v1, v3

    iget v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
