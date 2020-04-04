.class Landroid/support/v7/widget/RecyclerView$2;
.super Landroid/os/Handler;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v2, :cond_1

    const-string v2, "SeslRecyclerView"

    const-string v3, "No adapter attached; skipping MSG_HOVERSCROLL_MOVE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->access$002(Landroid/support/v7/widget/RecyclerView;J)J

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$000(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v4

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->access$200(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->access$102(Landroid/support/v7/widget/RecyclerView;J)J

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$300(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$000(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v3

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$400(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$500(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    goto/16 :goto_b

    :cond_2
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$600(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$000(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v3

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$400(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$700(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    goto/16 :goto_b

    :cond_3
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$300(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$800(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView;->access$1002(Landroid/support/v7/widget/RecyclerView;I)I

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v3

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v5, v4}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_4
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView;->access$802(Landroid/support/v7/widget/RecyclerView;Z)Z

    :cond_5
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_6

    move v5, v4

    goto :goto_0

    :cond_6
    move v5, v7

    :goto_0
    if-nez v5, :cond_9

    if-lez v3, :cond_9

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-gt v8, v9, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-le v8, v9, :cond_7

    goto :goto_1

    :cond_7
    move v8, v7

    goto :goto_2

    :cond_8
    :goto_1
    move v8, v4

    :goto_2
    move v5, v8

    :cond_9
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)I

    move-result v6

    if-lez v6, :cond_a

    move v6, v4

    goto :goto_3

    :cond_a
    move v6, v7

    :goto_3
    if-nez v6, :cond_c

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_c

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v9, v10, :cond_b

    move v9, v4

    goto :goto_4

    :cond_b
    move v9, v7

    :goto_4
    move v6, v9

    :cond_c
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$1300(Landroid/support/v7/widget/RecyclerView;)F

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v10}, Landroid/support/v7/widget/RecyclerView;->access$1400(Landroid/support/v7/widget/RecyclerView;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v4, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView;->access$1202(Landroid/support/v7/widget/RecyclerView;I)I

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$100(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v8

    const-wide/16 v11, 0x2

    cmp-long v8, v8, v11

    const-wide/16 v11, 0x4

    if-lez v8, :cond_d

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$100(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-gez v8, :cond_d

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v11, v13

    double-to-int v11, v11

    add-int/2addr v9, v11

    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView;->access$1202(Landroid/support/v7/widget/RecyclerView;I)I

    goto :goto_5

    :cond_d
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$100(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v8

    cmp-long v8, v8, v11

    const-wide/16 v11, 0x5

    if-ltz v8, :cond_e

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$100(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-gez v8, :cond_e

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v11, v13

    double-to-int v11, v11

    add-int/2addr v9, v11

    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView;->access$1202(Landroid/support/v7/widget/RecyclerView;I)I

    goto :goto_5

    :cond_e
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$100(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-ltz v8, :cond_f

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v11, v13

    double-to-int v11, v11

    add-int/2addr v9, v11

    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView;->access$1202(Landroid/support/v7/widget/RecyclerView;I)I

    :cond_f
    :goto_5
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_12

    const/4 v8, -0x1

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    mul-int/2addr v8, v11

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$1600(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_10

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$1700(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_11

    :cond_10
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$1800(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    if-eq v2, v11, :cond_15

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$1900(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-ne v2, v4, :cond_15

    :cond_11
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1700(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/support/v7/widget/RecyclerView;->access$1602(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$2100(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    invoke-static {v2, v11}, Landroid/support/v7/widget/RecyclerView;->access$2002(Landroid/support/v7/widget/RecyclerView;I)I

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$2300(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    invoke-static {v2, v11}, Landroid/support/v7/widget/RecyclerView;->access$2202(Landroid/support/v7/widget/RecyclerView;I)I

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    invoke-static {v2, v11}, Landroid/support/v7/widget/RecyclerView;->access$1802(Landroid/support/v7/widget/RecyclerView;I)I

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v4}, Landroid/support/v7/widget/RecyclerView;->access$1902(Landroid/support/v7/widget/RecyclerView;Z)Z

    goto :goto_6

    :cond_12
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v8

    mul-int/2addr v8, v4

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$1600(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_13

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$2400(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_14

    :cond_13
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$1800(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    if-eq v2, v11, :cond_15

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$1900(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-ne v2, v4, :cond_15

    :cond_14
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$2400(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/support/v7/widget/RecyclerView;->access$1602(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$2500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    invoke-static {v2, v11}, Landroid/support/v7/widget/RecyclerView;->access$2002(Landroid/support/v7/widget/RecyclerView;I)I

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$2600(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    invoke-static {v2, v11}, Landroid/support/v7/widget/RecyclerView;->access$2202(Landroid/support/v7/widget/RecyclerView;I)I

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    invoke-static {v2, v11}, Landroid/support/v7/widget/RecyclerView;->access$1802(Landroid/support/v7/widget/RecyclerView;I)I

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v4}, Landroid/support/v7/widget/RecyclerView;->access$1902(Landroid/support/v7/widget/RecyclerView;Z)Z

    :cond_15
    :goto_6
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {v2, v11}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_16

    goto/16 :goto_b

    :cond_16
    if-gez v8, :cond_17

    if-nez v6, :cond_18

    :cond_17
    if-lez v8, :cond_1b

    if-eqz v5, :cond_1b

    :cond_18
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v9, v4}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move v13, v8

    invoke-virtual/range {v11 .. v16}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$2700(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$2800(Landroid/support/v7/widget/RecyclerView;)I

    move-result v4

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    invoke-static {v2, v4, v9, v7}, Landroid/support/v7/widget/RecyclerView;->access$3000(Landroid/support/v7/widget/RecyclerView;IIZ)V

    goto :goto_7

    :cond_19
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v8}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_1a
    :goto_7
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$3300(Landroid/support/v7/widget/RecyclerView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v4

    int-to-long v9, v4

    invoke-virtual {v2, v7, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_b

    :cond_1b
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    if-eqz v2, :cond_1d

    if-ne v2, v4, :cond_1c

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$3400(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v11

    if-nez v11, :cond_1c

    goto :goto_8

    :cond_1c
    move v11, v7

    goto :goto_9

    :cond_1d
    :goto_8
    move v11, v4

    :goto_9
    if-eqz v11, :cond_20

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->access$3500(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v12

    if-nez v12, :cond_20

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    const v13, 0x3ecccccd    # 0.4f

    if-ne v12, v9, :cond_1e

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$3600(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v9

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v12

    iget-object v14, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v14

    invoke-virtual {v9, v12, v14}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$3600(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v9

    invoke-virtual {v9, v13, v10, v7}, Landroid/support/v4/widget/SeslEdgeEffect;->onPullCallOnRelease(FFI)V

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1f

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    goto :goto_a

    :cond_1e
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    if-ne v9, v4, :cond_1f

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v9

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v12

    iget-object v14, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v14

    invoke-virtual {v9, v12, v14}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v9

    invoke-virtual {v9, v13, v10, v7}, Landroid/support/v4/widget/SeslEdgeEffect;->onPullCallOnRelease(FFI)V

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9, v4}, Landroid/support/v7/widget/RecyclerView;->access$3800(Landroid/support/v7/widget/RecyclerView;I)V

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9, v4}, Landroid/support/v7/widget/RecyclerView;->access$3900(Landroid/support/v7/widget/RecyclerView;I)V

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$3600(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1f

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$3600(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    :cond_1f
    :goto_a
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9, v4}, Landroid/support/v7/widget/RecyclerView;->access$3502(Landroid/support/v7/widget/RecyclerView;Z)Z

    :cond_20
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$4000(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    if-ne v9, v4, :cond_21

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v7}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    :cond_21
    if-nez v11, :cond_22

    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->access$3500(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v7

    if-nez v7, :cond_22

    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7, v4}, Landroid/support/v7/widget/RecyclerView;->access$3502(Landroid/support/v7/widget/RecyclerView;Z)Z

    :cond_22
    nop

    :goto_b
    return-void
.end method
