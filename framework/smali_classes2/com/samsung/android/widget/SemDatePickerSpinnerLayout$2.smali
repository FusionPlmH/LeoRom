.class Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;
.super Ljava/lang/Object;
.source "SemDatePickerSpinnerLayout.java"

# interfaces
.implements Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$300(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$500(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$402(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$700(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$602(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$900(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$802(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$1000(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$300(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v13}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$1100(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v14

    invoke-static {v11, v12, v13, v14}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$1200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)I

    move-result v7

    :cond_1
    if-ne v2, v7, :cond_2

    if-eq v3, v10, :cond_3

    :cond_2
    if-ne v2, v10, :cond_4

    if-ne v3, v7, :cond_4

    :cond_3
    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11, v8, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$300(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$802(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    goto :goto_0

    :cond_4
    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v11

    sub-int v12, v3, v2

    invoke-virtual {v11, v8, v12}, Ljava/util/Calendar;->add(II)V

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$300(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    sub-int v12, v3, v2

    invoke-static {v11, v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$812(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    :cond_5
    :goto_0
    goto/16 :goto_2

    :cond_6
    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$1300(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

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
    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v9, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$300(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$602(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    goto :goto_1

    :cond_9
    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    sub-int v11, v3, v2

    invoke-virtual {v7, v9, v11}, Ljava/util/Calendar;->add(II)V

    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$300(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    sub-int v11, v3, v2

    invoke-static {v7, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$612(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    :cond_a
    :goto_1
    const/4 v6, 0x1

    goto :goto_2

    :cond_b
    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$1400(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    sub-int v11, v3, v2

    invoke-virtual {v7, v10, v11}, Ljava/util/Calendar;->add(II)V

    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$300(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    sub-int v11, v3, v2

    invoke-static {v7, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$412(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    :cond_c
    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_2
    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$300(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v7

    const/4 v11, 0x0

    if-eqz v7, :cond_e

    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$400(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v12

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v13}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$600(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v13

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$1100(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v14

    invoke-static {v7, v12, v13, v14}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$1200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)I

    move-result v7

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$600(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v12

    if-le v12, v7, :cond_d

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v12, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$802(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I

    :cond_d
    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$1100(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v13}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$1500(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v14}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$1600(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/reflect/Method;

    move-result-object v14

    new-array v15, v9, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$400(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v15, v11

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$600(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v15, v10

    invoke-static {v12, v13, v14, v15}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$1700(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v12, v8, Ljava/lang/Boolean;

    if-eqz v12, :cond_e

    move-object v12, v8

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_e

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v12, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$1102(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Z)Z

    :cond_e
    iget-object v7, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v8, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$300(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$400(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v7

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$600(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v8

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$800(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v9

    :cond_f
    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10, v7, v8, v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$1800(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;III)V

    if-nez v4, :cond_10

    if-nez v5, :cond_10

    if-eqz v6, :cond_11

    :cond_10
    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10, v11, v4, v5, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$1900(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;ZZZZ)V

    :cond_11
    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$2000(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    return-void

    :cond_12
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7
.end method
