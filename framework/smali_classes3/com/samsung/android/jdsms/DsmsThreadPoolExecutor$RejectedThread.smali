.class final Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread;
.super Ljava/lang/Object;
.source "DsmsThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RejectedThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    const-string v0, "[DSMS-FRAMEWORK]"

    const-string v1, "DSMS Framework queue already full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
