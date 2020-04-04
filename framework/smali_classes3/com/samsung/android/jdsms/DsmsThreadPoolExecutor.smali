.class public final Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "DsmsThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread;
    }
.end annotation


# static fields
.field private static final KEEP_ALIVE_TIME_MS:I = 0x1f4

.field private static final MAXIMUM_THREADS:I = 0x14

.field private static final MINIMUM_THREADS:I = 0x4

.field private static final QUEUE_POOL_SIZE:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .locals 8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x1f4

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread;-><init>(Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$1;)V

    const/4 v1, 0x4

    const/16 v2, 0x14

    const-wide/16 v3, 0x1f4

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method
