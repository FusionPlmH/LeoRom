.class Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SeslDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePicker;

.field views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v7/widget/SeslSimpleMonthView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->access$3600(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    move-object v1, p3

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    const-string v1, "finishUpdate"

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->access$3600(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V

    return-void
.end method

.method public getCount()I
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslDatePicker;->getMaxMonth()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v0, 0xc

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Landroid/support/v7/widget/SeslDatePicker;->access$902(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->access$3500(Landroid/support/v7/widget/SeslDatePicker;I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v7/widget/SeslDatePicker;->access$902(Landroid/support/v7/widget/SeslDatePicker;I)I

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v1

    return v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Landroid/support/v7/widget/SeslSimpleMonthView;

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$500(Landroid/support/v7/widget/SeslDatePicker;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SeslSimpleMonthView;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "instantiateItem : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->access$3600(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->setClickable(Z)V

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->setOnDayClickListener(Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;)V

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->setOnDeactivatedDayClickListener(Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;)V

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->setTextColor()V

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v4

    add-int v22, v1, v4

    div-int/lit8 v4, v22, 0xc

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v5}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v5

    add-int/2addr v4, v5

    rem-int/lit8 v5, v22, 0xc

    const/4 v6, 0x0

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePicker;->access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v7, v1}, Landroid/support/v7/widget/SeslDatePicker;->access$3700(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;

    move-result-object v7

    iget v4, v7, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->year:I

    iget v5, v7, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->month:I

    iget-boolean v6, v7, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    :cond_0
    move v15, v4

    move v14, v5

    move v13, v6

    const/4 v4, -0x1

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$1400(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-ne v5, v15, :cond_1

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$1400(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v14, :cond_1

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$1400(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    :cond_1
    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, -0x1

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$1600(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v5

    if-ne v5, v15, :cond_2

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$1700(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v5

    if-ne v5, v14, :cond_2

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$1800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v4

    :cond_2
    move/from16 v23, v4

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$3800(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v4

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    iget-object v5, v5, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v2, v4, v13, v5}, Landroid/support/v7/widget/SeslSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    :cond_3
    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$2000(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$2000(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v8}, Landroid/support/v7/widget/SeslDatePicker;->access$2000(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v9}, Landroid/support/v7/widget/SeslDatePicker;->access$2500(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePicker;->access$2500(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePicker;->access$2500(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePicker;->access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePicker;->access$2100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v4

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePicker;->access$2200(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v5

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePicker;->access$2300(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v8

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePicker;->access$2600(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePicker;->access$2700(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v7

    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePicker;->access$2800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v6

    :cond_4
    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v29, v6

    move/from16 v28, v7

    move/from16 v26, v8

    move/from16 v27, v9

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v8

    const/4 v9, 0x1

    const/16 v10, 0x1f

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$3900(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$4000(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v12

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$2400(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v16

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$2900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v20

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$1900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v21

    move-object v4, v2

    move/from16 v5, v23

    move v6, v14

    move v7, v15

    move/from16 v30, v13

    move/from16 v13, v24

    move/from16 v31, v14

    move/from16 v14, v25

    move/from16 v32, v15

    move/from16 v15, v26

    move/from16 v17, v27

    move/from16 v18, v28

    move/from16 v19, v29

    invoke-virtual/range {v4 .. v21}, Landroid/support/v7/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    if-nez v1, :cond_5

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->setFirstMonth()V

    goto :goto_0

    :cond_5
    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_6

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->setLastMonth()V

    :cond_6
    :goto_0
    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v1, :cond_7

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    add-int/lit8 v5, v1, -0x1

    invoke-static {v4, v5}, Landroid/support/v7/widget/SeslDatePicker;->access$3700(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;

    move-result-object v4

    iget-boolean v5, v4, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    if-eqz v5, :cond_7

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->setPrevMonthLeap()V

    :cond_7
    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v4

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_8

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->access$3700(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;

    move-result-object v3

    iget-boolean v4, v3, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->setNextMonthLeap()V

    :cond_8
    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->getNumDays()I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->access$4102(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->getWeekStart()I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->access$4202(Landroid/support/v7/widget/SeslDatePicker;I)I

    move-object/from16 v4, p1

    check-cast v4, Landroid/support/v4/view/ViewPager;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    const-string/jumbo v1, "startUpdate"

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->access$3600(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V

    return-void
.end method
