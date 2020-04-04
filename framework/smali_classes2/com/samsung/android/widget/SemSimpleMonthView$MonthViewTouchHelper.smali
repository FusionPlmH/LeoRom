.class Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "SemSimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemSimpleMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewTouchHelper"
.end annotation


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/widget/SemSimpleMonthView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemSimpleMonthView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private getItemBounds(ILandroid/graphics/Rect;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1500(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1600(Lcom/samsung/android/widget/SemSimpleMonthView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v2}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1700(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1800(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1900(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v4

    div-int/2addr v3, v4

    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$500(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1900(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    div-int v5, v4, v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1900(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v6

    rem-int v6, v4, v6

    mul-int v7, v6, v3

    add-int/2addr v7, v0

    mul-int v8, v5, v2

    add-int/2addr v8, v1

    add-int v9, v7, v3

    add-int v10, v8, v2

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getItemDescription(I)Ljava/lang/CharSequence;
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-object v2, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v3, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1000(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v3

    iget-object v4, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$800(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/Calendar;->set(III)V

    iget-object v2, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v2}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2000(Lcom/samsung/android/widget/SemSimpleMonthView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x16

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$700(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2100(Lcom/samsung/android/widget/SemSimpleMonthView;)Ldalvik/system/PathClassLoader;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1000(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v3

    iget-object v4, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$800(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v4

    iget-object v5, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$900(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v5

    const/4 v6, 0x1

    if-gtz v0, :cond_1

    iget-object v7, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$800(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v7

    iget-object v8, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$900(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v8

    xor-int/2addr v8, v6

    sub-int/2addr v7, v8

    iget-object v4, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2200(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v5

    if-gez v7, :cond_0

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0xb

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    iget-object v7, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v7, v4, v3, v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1100(Lcom/samsung/android/widget/SemSimpleMonthView;IIZ)I

    move-result v7

    add-int/2addr v0, v7

    :goto_1
    goto :goto_3

    :cond_1
    iget-object v7, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1300(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v7

    if-le v0, v7, :cond_3

    iget-object v7, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$800(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v7

    iget-object v8, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2300(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v8

    xor-int/2addr v8, v6

    add-int/2addr v7, v8

    iget-object v4, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2300(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v5

    const/16 v4, 0xb

    if-le v7, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_2
    iget-object v7, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1300(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v7

    sub-int/2addr v0, v7

    goto :goto_1

    :cond_3
    :goto_3
    move v7, v5

    move v5, v0

    iget-object v0, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v8, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2400(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2500(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v10, v13

    const/4 v11, 0x3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v10, v11

    invoke-static {v0, v8, v9, v10}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2600(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v8, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2400(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2700(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v0, v8, v9, v10}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2600(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v0, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v9, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2400(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v10}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2800(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v0, v9, v10, v11}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2600(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iget-object v0, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v10, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v10}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2400(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v11}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2900(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v0, v10, v11, v14}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2600(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v0, v8, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    instance-of v0, v9, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    instance-of v0, v10, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    move-object v0, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v14, v9

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object v15, v10

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v11, v0, v14, v15}, Ljava/util/Calendar;->set(III)V

    :try_start_0
    const-string v0, "com.android.calendar.event.widget.datetimepicker.LunarDateUtils"

    iget-object v14, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v14}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2100(Lcom/samsung/android/widget/SemSimpleMonthView;)Ldalvik/system/PathClassLoader;

    move-result-object v14

    invoke-static {v0, v6, v14}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v14

    nop

    nop

    if-nez v0, :cond_4

    const-string v6, "SemSimpleMonthView"

    const-string v12, "getItemDescription, Calendar LunarDateUtils class is null"

    invoke-static {v6, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    iget-object v14, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    const-string v15, "buildLunarDateString"

    new-array v6, v13, [Ljava/lang/Class;

    const-class v17, Ljava/util/Calendar;

    aput-object v17, v6, v12

    const-class v17, Landroid/content/Context;

    const/16 v16, 0x1

    aput-object v17, v6, v16

    invoke-static {v14, v0, v15, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$3000(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget-object v14, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    const/4 v15, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v11, v13, v12

    iget-object v12, v1, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {v12}, Lcom/samsung/android/widget/SemSimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v12

    aput-object v12, v13, v16

    invoke-static {v14, v15, v6, v13}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$2600(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_6

    move-object v2, v12

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v6, "SemSimpleMonthView"

    const-string v12, "getItemDescription, Calendar LunarDateUtils class not found"

    invoke-static {v6, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5
    move v5, v0

    :cond_6
    :goto_4
    return-object v2
.end method


# virtual methods
.method public clearFocusedVirtualView()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->getFocusedVirtualView()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method protected getVirtualViewAt(FF)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$000(Lcom/samsung/android/widget/SemSimpleMonthView;FF)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$100(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$200(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$300(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$400(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_1
    const/high16 v1, -0x80000000

    return v1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$500(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$500(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x2a

    if-gt v1, v2, :cond_3

    sub-int v2, v1, v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$100(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$200(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$300(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$400(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v3

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/util/IntArray;->add(I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-eq p2, v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$500(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$100(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$200(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v1

    if-lt p1, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$300(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$400(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v1

    if-le p1, v1, :cond_3

    :cond_2
    return v2

    :cond_3
    const/4 v1, 0x2

    const/16 v3, 0xb

    const/4 v4, 0x5

    if-gtz p1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$700(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$800(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$900(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v1

    xor-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-gez v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1000(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$900(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1100(Lcom/samsung/android/widget/SemSimpleMonthView;IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1000(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v4

    sub-int/2addr v4, v2

    add-int v5, v1, p1

    invoke-static {v3, v4, v0, v5, v2}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1200(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZ)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1000(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$900(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v4

    invoke-static {v1, v0, v3, v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1100(Lcom/samsung/android/widget/SemSimpleMonthView;IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1000(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v4

    add-int v5, v1, p1

    invoke-static {v3, v4, v0, v5, v2}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1200(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZ)V

    :goto_0
    goto/16 :goto_2

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1000(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$800(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    invoke-virtual {v0, v3, v5, v2}, Ljava/util/Calendar;->set(III)V

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v3, v5, v1, v4, v2}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1200(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZ)V

    goto/16 :goto_2

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1300(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    if-le p1, v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$700(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$800(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v1

    add-int/2addr v1, v2

    if-le v1, v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1000(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1300(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    sub-int v5, p1, v5

    invoke-static {v3, v4, v0, v5, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1200(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZ)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1000(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1300(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    sub-int v5, p1, v5

    invoke-static {v3, v4, v1, v5, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1200(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZ)V

    :goto_1
    goto :goto_2

    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1000(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$800(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1300(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1300(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v5, v6, v1, v4, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1200(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZ)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1000(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$800(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v3

    invoke-static {v0, v1, v3, p1}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$1400(Lcom/samsung/android/widget/SemSimpleMonthView;III)V

    :goto_2
    return v2
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$500(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$500(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$600(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->access$600(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setFocusedVirtualView(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    return-void
.end method
