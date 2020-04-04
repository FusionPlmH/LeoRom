.class Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;
.super Ljava/lang/Object;
.source "SeslDatePicker.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePicker;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/SeslDatePicker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 12

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$1100(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->access$1202(Landroid/support/v7/widget/SeslDatePicker;Z)Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$4300(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->access$4302(Landroid/support/v7/widget/SeslDatePicker;Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslDatePicker;->access$802(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v0

    add-int/2addr v0, p1

    div-int/lit8 v1, v0, 0xc

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit8 v2, v0, 0xc

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$1400(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5, p1}, Landroid/support/v7/widget/SeslDatePicker;->access$3700(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;

    move-result-object v5

    iget v1, v5, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->year:I

    iget v2, v5, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->month:I

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$1800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    iget-boolean v7, v5, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    invoke-static {v6, v7}, Landroid/support/v7/widget/SeslDatePicker;->access$3002(Landroid/support/v7/widget/SeslDatePicker;Z)Z

    :cond_2
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v1, v6, :cond_3

    const/4 v5, 0x1

    :cond_3
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v7, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v6

    const/4 v8, 0x2

    invoke-virtual {v6, v8, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v4, v7}, Ljava/util/Calendar;->set(II)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-le v3, v6, :cond_4

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    :cond_4
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$4400(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/16 v6, 0x3e8

    iput v6, v4, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$4400(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$4400(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    const/16 v9, 0x3e9

    iput v9, v6, Landroid/os/Message;->what:I

    iget-object v9, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v9}, Landroid/support/v7/widget/SeslDatePicker;->access$4400(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v9, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v9}, Landroid/support/v7/widget/SeslDatePicker;->access$4500(Landroid/support/v7/widget/SeslDatePicker;)Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    move-result-object v9

    iget-object v9, v9, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    const/16 v11, 0x10

    if-eqz v10, :cond_5

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {v10}, Landroid/support/v7/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v11, :cond_5

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {v10, v7}, Landroid/support/v7/widget/SeslSimpleMonthView;->setImportantForAccessibility(I)V

    :cond_5
    if-eqz p1, :cond_6

    add-int/lit8 v10, p1, -0x1

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    add-int/lit8 v10, p1, -0x1

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {v10}, Landroid/support/v7/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v11, :cond_6

    add-int/lit8 v10, p1, -0x1

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {v10, v8}, Landroid/support/v7/widget/SeslSimpleMonthView;->setImportantForAccessibility(I)V

    :cond_6
    iget-object v10, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePicker;->access$900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v10

    sub-int/2addr v10, v7

    if-eq p1, v10, :cond_7

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {v7}, Landroid/support/v7/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v11, :cond_7

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SeslSimpleMonthView;->setImportantForAccessibility(I)V

    :cond_7
    return-void
.end method
