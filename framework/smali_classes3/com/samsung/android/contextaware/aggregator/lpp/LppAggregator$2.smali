.class Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;
.super Landroid/os/Handler;
.source "LppAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->test()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xabaa

    if-ne v0, v1, :cond_1

    const-string v0, "LppAggregator"

    const-string/jumbo v2, "send apdr"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    move-object v6, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    iput-wide v7, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepFlag:D

    const-wide/16 v9, 0x0

    iput-wide v9, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long/2addr v9, v4

    iput-wide v9, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    iget-object v9, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->mag:[D

    const/4 v10, 0x3

    aput-wide v7, v9, v10

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    iget-object v8, v8, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mStatus:[I

    iget-object v9, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    iget-object v9, v9, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mStatus:[I

    array-length v9, v9

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    aget v8, v8, v9

    iput v8, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    iput v2, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->carryPos:I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$100(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->notifyApdrData(Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->sendApdr:Landroid/os/Handler;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
