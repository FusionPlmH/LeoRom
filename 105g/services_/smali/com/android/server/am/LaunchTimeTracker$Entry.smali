.class Lcom/android/server/am/LaunchTimeTracker$Entry;
.super Ljava/lang/Object;
.source "LaunchTimeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LaunchTimeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field mFullyDrawnStartTime:J

.field mLastSetDisplayTimeActivity:Lcom/android/server/am/ActivityRecord;

.field mLaunchStartTime:J


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLastSetDisplayTimeActivity:Lcom/android/server/am/ActivityRecord;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/LaunchTimeTracker$Entry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/LaunchTimeTracker$Entry;->stopFullyDrawnTraceIfNeeded()V

    return-void
.end method

.method private startLaunchTraces(Ljava/lang/String;)V
    .locals 5

    iget-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-wide/16 v2, 0x40

    if-eqz v0, :cond_0

    const-string/jumbo v0, "drawing"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launching: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string/jumbo v0, "drawing"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method private stopFullyDrawnTraceIfNeeded()V
    .locals 6

    iget-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x40

    const-string/jumbo v4, "drawing"

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iput-wide v2, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method setLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 8

    const/4 v0, 0x0

    iget-wide v1, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLastSetDisplayTimeActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLastSetDisplayTimeActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "there was set displayTime of last activity. so it should be cleared."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLastSetDisplayTimeActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLastSetDisplayTimeActivity:Lcom/android/server/am/ActivityRecord;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v1, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->setAppLaunchFlag(Z)V

    :cond_1
    if-nez v0, :cond_2

    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    move-object v0, v5

    :cond_2
    const-string v5, "ActivityManager"

    const-string/jumbo v6, "mTimer start at this point for Notification solution"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/am/LaunchTimeTracker$Entry$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/LaunchTimeTracker$Entry$1;-><init>(Lcom/android/server/am/LaunchTimeTracker$Entry;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v5, "ActivityManager"

    const-string/jumbo v6, "mTimer scheduling done"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/LaunchTimeTracker$Entry;->startLaunchTraces(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v1, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    iput-wide v1, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    goto :goto_0

    :cond_3
    iget-wide v1, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/LaunchTimeTracker$Entry;->startLaunchTraces(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    iput-wide v1, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    :cond_4
    :goto_0
    return-void
.end method
