.class public Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;
.super Ljava/lang/Object;
.source "NetSpeedPolicy2.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mControlLimitSpeed:I

.field private mLimitAllSpeedQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLimitReturnUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

.field private mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

.field private mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

.field public mWhiteUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NetSpeedPolicy2"

    sput-object v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iput-object p3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, p3, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mWhiteUidList:Ljava/util/List;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mLimitAllSpeedQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mLimitReturnUidList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public limitAllBgSpeed(IZ)V
    .locals 7

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mLimitAllSpeedQueue:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mLimitAllSpeedQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mControlLimitSpeed:I

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iput-boolean v0, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isControlBgTotalSpeed:Z

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setDropRule(IZ)Z

    iput v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mControlLimitSpeed:I

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getForegroundUids()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setReturnRule(IZ)Z

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mLimitReturnUidList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mControlLimitSpeed:I

    if-eq v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mControlLimitSpeed:I

    invoke-virtual {v3, v4, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setDropRule(IZ)Z

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setDropRule(IZ)Z

    iput v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mControlLimitSpeed:I

    :cond_4
    :goto_1
    goto/16 :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mLimitAllSpeedQueue:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cancel speed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not in limited list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mLimitAllSpeedQueue:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mLimitAllSpeedQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iput-boolean v1, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isControlBgTotalSpeed:Z

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mControlLimitSpeed:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setDropRule(IZ)Z

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mLimitReturnUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setReturnRule(IZ)Z

    goto :goto_2

    :cond_7
    iput v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mControlLimitSpeed:I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mLimitReturnUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mLimitAllSpeedQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mControlLimitSpeed:I

    if-eq v2, v3, :cond_9

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mControlLimitSpeed:I

    invoke-virtual {v3, v4, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setDropRule(IZ)Z

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setDropRule(IZ)Z

    iput v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mControlLimitSpeed:I

    :cond_9
    :goto_3
    return-void
.end method

.method public setWhiteListLimitRule()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mWhiteUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getWhiteUidList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mWhiteUidList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mWhiteUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setReturnRule(IZ)Z

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getWhiteUidList()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mWhiteUidList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setReturnRule(IZ)Z

    :cond_2
    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mWhiteUidList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    invoke-virtual {v4, v3, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setReturnRule(IZ)Z

    :cond_4
    goto :goto_2

    :cond_5
    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mWhiteUidList:Ljava/util/List;

    :cond_6
    return-void
.end method

.method public updateLimitStaus()V
    .locals 6

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mControlLimitSpeed:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getForegroundUids()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mLimitReturnUidList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setReturnRule(IZ)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_1
    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mLimitReturnUidList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->setReturnRule(IZ)Z

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->mLimitReturnUidList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_1

    :cond_4
    return-void
.end method
