.class Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlowMotionEventResult"
.end annotation


# instance fields
.field private events:[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

.field final synthetic this$0:Lcom/samsung/android/camera/core/SemCamera;


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core/SemCamera;[B)V
    .locals 7

    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->events:[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    const/4 v1, 0x0

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    const-string v2, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SlowMotionEventResult : numberOfEvent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v1, [Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    iput-object v2, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->events:[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->events:[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    new-instance v5, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    invoke-direct {v5, p1, v0}, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;-><init>(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$1;)V

    aput-object v5, v4, v2

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->events:[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    aget-object v4, v4, v2

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v3, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v3, v5

    iput v3, v4, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;->startMillisecond:I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->events:[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    aget-object v3, v3, v2

    add-int/lit8 v4, v6, 0x1

    aget-byte v5, p2, v6

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;->endMillisecond:I

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core/SemCamera;[BLcom/samsung/android/camera/core/SemCamera$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;-><init>(Lcom/samsung/android/camera/core/SemCamera;[B)V

    return-void
.end method

.method static synthetic access$7000(Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;)[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->events:[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    return-object v0
.end method
