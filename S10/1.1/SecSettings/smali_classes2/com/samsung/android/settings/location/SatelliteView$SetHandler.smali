.class public Lcom/samsung/android/settings/location/SatelliteView$SetHandler;
.super Landroid/os/Handler;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/SatelliteView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/location/SatelliteView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [D

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$200()D

    move-result-wide v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v3, v5

    const/4 v7, 0x0

    aput-wide v3, v2, v7

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$300()D

    move-result-wide v3

    mul-double/2addr v3, v5

    const/4 v5, 0x1

    aput-wide v3, v2, v5

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    move-object/from16 v4, p1

    iget v6, v4, Landroid/os/Message;->what:I

    const/4 v8, 0x4

    const v9, 0x7f12127a

    const/4 v10, 0x3

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    iget-object v6, v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v6}, Lcom/samsung/android/settings/location/SatelliteView;->access$2300(Lcom/samsung/android/settings/location/SatelliteView;)Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->invalidate()V

    iget-object v6, v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$400()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v7

    iget-object v7, v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v7}, Lcom/samsung/android/settings/location/SatelliteView;->access$600(Lcom/samsung/android/settings/location/SatelliteView;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v8, v5

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$500()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v1

    iget-object v1, v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget-object v1, v1, Lcom/samsung/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v1, v8, v10

    invoke-virtual {v6, v9, v8}, Lcom/samsung/android/settings/location/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v5}, Lcom/samsung/android/settings/location/SatelliteView;->access$2500(Lcom/samsung/android/settings/location/SatelliteView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_1
    sget v6, Lcom/samsung/android/settings/location/SatelliteView;->ani_count:I

    sub-int/2addr v6, v5

    sput v6, Lcom/samsung/android/settings/location/SatelliteView;->ani_count:I

    if-ltz v6, :cond_0

    iget-object v6, v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v6}, Lcom/samsung/android/settings/location/SatelliteView;->access$2300(Lcom/samsung/android/settings/location/SatelliteView;)Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    move-result-object v6

    sget-wide v11, Lcom/samsung/android/settings/location/SatelliteView;->ani_gap_x:D

    sget v13, Lcom/samsung/android/settings/location/SatelliteView;->ani_count:I

    int-to-double v13, v13

    mul-double/2addr v11, v13

    sget-wide v13, Lcom/samsung/android/settings/location/SatelliteView;->ani_gap_y:D

    neg-double v13, v13

    sget v15, Lcom/samsung/android/settings/location/SatelliteView;->ani_count:I

    int-to-double v9, v15

    mul-double/2addr v13, v9

    invoke-virtual {v6, v11, v12, v13, v14}, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->setPoint(DD)V

    iget-object v6, v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v6}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    iget-object v6, v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$400()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v7

    iget-object v7, v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v7}, Lcom/samsung/android/settings/location/SatelliteView;->access$600(Lcom/samsung/android/settings/location/SatelliteView;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v8, v5

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$500()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v1

    iget-object v5, v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget-object v5, v5, Lcom/samsung/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v5, v8, v7

    const v5, 0x7f12127a

    invoke-virtual {v6, v5, v8}, Lcom/samsung/android/settings/location/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v6}, Lcom/samsung/android/settings/location/SatelliteView;->access$2500(Lcom/samsung/android/settings/location/SatelliteView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    iput v1, v3, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$2400()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v3, v6, v7}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    const/4 v1, 0x3

    iput v1, v3, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$2400()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v0, v3, v5, v6}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$2600()I

    move-result v1

    sput v1, Lcom/samsung/android/settings/location/SatelliteView;->ani_count:I

    goto :goto_0

    :pswitch_2
    iget-object v1, v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v1}, Lcom/samsung/android/settings/location/SatelliteView;->startGPS()V

    iget-object v1, v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v1}, Lcom/samsung/android/settings/location/SatelliteView;->access$2300(Lcom/samsung/android/settings/location/SatelliteView;)Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->invalidate()V

    iget-object v1, v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v1}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    const/4 v1, 0x3

    iput v1, v3, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$2400()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v3, v6, v7}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
