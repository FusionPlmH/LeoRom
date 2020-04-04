.class Lcom/android/server/am/LaunchTimeTracker$Entry$1;
.super Ljava/util/TimerTask;
.source "LaunchTimeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/LaunchTimeTracker$Entry;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LaunchTimeTracker$Entry;


# direct methods
.method constructor <init>(Lcom/android/server/am/LaunchTimeTracker$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/LaunchTimeTracker$Entry$1;->this$0:Lcom/android/server/am/LaunchTimeTracker$Entry;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->setAppLaunchFlag(Z)V

    return-void
.end method
