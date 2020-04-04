.class Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;
.super Ljava/lang/Object;
.source "SeslDatePickerSpinnerLayout.java"

# interfaces
.implements Landroid/support/v7/widget/SeslNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/support/v7/widget/SeslNumberPicker;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v4

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$402(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$700(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$602(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$900(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$802(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_6

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v11}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v12}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iget-object v13, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v13}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v14

    invoke-static {v11, v12, v13, v14}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)I

    move-result v7

    :cond_1
    if-ne v2, v7, :cond_2

    if-eq v3, v10, :cond_3

    :cond_2
    if-ne v2, v10, :cond_4

    if-ne v3, v7, :cond_4

    :cond_3
    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v11}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11, v8, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v11}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v11, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$802(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    goto :goto_0

    :cond_4
    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v11}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v11

    sub-int v12, v3, v2

    invoke-virtual {v11, v8, v12}, Ljava/util/Calendar;->add(II)V

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v11}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v12}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v12

    sub-int v13, v3, v2

    add-int/2addr v12, v13

    invoke-static {v11, v12}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$802(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    :cond_5
    :goto_0
    goto/16 :goto_2

    :cond_6
    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0xb

    if-ne v2, v7, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    if-nez v2, :cond_9

    if-ne v3, v7, :cond_9

    :cond_8
    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v9, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$602(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    goto :goto_1

    :cond_9
    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    sub-int v11, v3, v2

    invoke-virtual {v7, v9, v11}, Ljava/util/Calendar;->add(II)V

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v11}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v11

    sub-int v12, v3, v2

    add-int/2addr v11, v12

    invoke-static {v7, v11}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$602(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    :cond_a
    :goto_1
    const/4 v6, 0x1

    goto :goto_2

    :cond_b
    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    sub-int v11, v3, v2

    invoke-virtual {v7, v10, v11}, Ljava/util/Calendar;->add(II)V

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v11}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v11

    sub-int v12, v3, v2

    add-int/2addr v11, v12

    invoke-static {v7, v11}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$402(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    :cond_c
    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_2
    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v7

    const/4 v11, 0x0

    if-eqz v7, :cond_e

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v12}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v12

    iget-object v13, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v13}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v13

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v14

    invoke-static {v7, v12, v13, v14}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)I

    move-result v7

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v12}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v12

    if-le v12, v7, :cond_d

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v12, v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$802(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I

    :cond_d
    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v12}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v13, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v13}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v14}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/reflect/Method;

    move-result-object v14

    new-array v15, v9, [Ljava/lang/Object;

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v15, v11

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v15, v10

    invoke-static {v12, v13, v14, v15}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1700(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v12, v8, Ljava/lang/Boolean;

    if-eqz v12, :cond_e

    move-object v12, v8

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_e

    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v12, v11}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1102(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Z)Z

    :cond_e
    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v9}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v7

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v8

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v9

    :cond_f
    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v10, v7, v8, v9}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;III)V

    if-nez v4, :cond_10

    if-nez v5, :cond_10

    if-eqz v6, :cond_11

    :cond_10
    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v10, v11, v4, v5, v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1900(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;ZZZZ)V

    :cond_11
    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    return-void

    :cond_12
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7
.end method
