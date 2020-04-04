.class Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;
.super Landroid/os/Handler;
.source "LeoNetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fusionleo/LeoNetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private formatOutput(JJLjava/lang/String;)Ljava/lang/String;
    .locals 6

    long-to-float v0, p3

    long-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-long v0, v0

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$700(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1400()Ljava/text/DecimalFormat;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1500(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1400()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v5}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$700(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x4b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1600(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1400()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v5}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1500(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1400()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v5}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1600(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x47

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private shouldHide(JJ)Z
    .locals 5

    long-to-float v0, p1

    long-to-float v1, p3

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-long v0, v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1700(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1800(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23

    move-object/from16 v6, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$000(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v2, v0

    iget-object v4, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v4}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$100(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$200(I)I

    move-result v4

    int-to-double v4, v4

    const-wide v7, 0x3fee666666666666L    # 0.95

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v7

    const/4 v7, 0x1

    cmpg-double v8, v2, v4

    if-gez v8, :cond_1

    move-object/from16 v8, p1

    iget v2, v8, Landroid/os/Message;->what:I

    if-eq v2, v7, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    move-wide v9, v0

    goto :goto_0

    :cond_1
    move-object/from16 v8, p1

    :cond_2
    move-wide v9, v0

    :goto_0
    iget-object v0, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$002(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;J)J

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v11

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v13

    iget-object v0, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$300(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)J

    move-result-wide v0

    sub-long v0, v11, v0

    iget-object v2, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$400(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)J

    move-result-wide v2

    sub-long v2, v13, v2

    invoke-direct {v6, v0, v1, v9, v10}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->shouldHide(JJ)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_3

    iget-object v4, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    const-string v7, ""

    invoke-virtual {v4, v7}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-virtual {v4, v5}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setVisibility(I)V

    goto/16 :goto_7

    :cond_3
    iget-object v4, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v4}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$500(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v4}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$600(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)V

    iget-object v4, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-virtual {v4, v5}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setVisibility(I)V

    goto/16 :goto_7

    :cond_4
    iget-object v4, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v4}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$700(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v4

    const/16 v5, 0x400

    if-ne v4, v5, :cond_5

    const-string v4, "B/s"

    move-wide/from16 v18, v0

    move-wide v15, v2

    move-object/from16 v17, v4

    goto :goto_1

    :cond_5
    const-string v4, "b/s"

    const-wide/16 v15, 0x8

    mul-long v0, v0, v15

    mul-long v2, v2, v15

    move-wide/from16 v18, v0

    move-wide v15, v2

    move-object/from16 v17, v4

    :goto_1
    const-string v20, ""

    iget-object v0, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$100(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v0

    invoke-static {v0, v7}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$800(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$900(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide v3, v15

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    const-string v1, "network_info_up"

    invoke-virtual {v0, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide v3, v15

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object/from16 v20, v0

    goto :goto_3

    :cond_7
    move-object/from16 v0, v20

    :goto_3
    iget-object v1, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$100(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$800(II)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1000(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v1

    move-object v7, v0

    move v5, v1

    goto :goto_4

    :cond_8
    iget-object v1, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1100(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v1

    move-object v7, v0

    move v5, v1

    :goto_4
    iget-object v0, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$100(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$800(II)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$900(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-wide v1, v9

    move-object v8, v4

    move-object/from16 v20, v7

    move-object v7, v3

    move-wide/from16 v3, v18

    move-wide/from16 v21, v15

    move v15, v5

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    const-string v1, "network_info_down"

    invoke-virtual {v0, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    move-object/from16 v20, v7

    move-wide/from16 v21, v15

    move-object v7, v3

    move v15, v5

    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide/from16 v3, v18

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_a
    move-object/from16 v20, v7

    move-wide/from16 v21, v15

    move v15, v5

    :goto_6
    iget-object v0, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-virtual {v0}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iget-object v0, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    int-to-float v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setTextSize(IF)V

    iget-object v0, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-virtual {v0, v7}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v0, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->setVisibility(I)V

    move-wide/from16 v0, v18

    move-wide/from16 v2, v21

    :goto_7
    iget-object v4, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v4, v11, v12}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$302(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;J)J

    iget-object v4, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v4, v13, v14}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$402(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;J)J

    iget-object v4, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v4}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$600(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)V

    iget-object v4, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v4}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1300(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v5}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1200(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)Ljava/lang/Runnable;

    move-result-object v5

    iget-object v7, v6, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$1;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v7}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$100(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$200(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
