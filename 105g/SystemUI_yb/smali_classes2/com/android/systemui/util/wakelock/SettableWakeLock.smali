.class public Lcom/android/systemui/util/wakelock/SettableWakeLock;
.super Ljava/lang/Object;
.source "SettableWakeLock.java"


# instance fields
.field private mAcquired:Z

.field private final mInner:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "inner wakelock required"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    return-void
.end method


# virtual methods
.method public declared-synchronized setAcquired(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mAcquired:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release()V

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
