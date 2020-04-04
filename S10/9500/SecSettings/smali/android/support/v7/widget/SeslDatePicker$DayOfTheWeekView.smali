.class public Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;
.super Landroid/view/View;
.source "SeslDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DayOfTheWeekView"
.end annotation


# instance fields
.field private mDayColorSet:[I

.field private mDayLabelCalendar:Ljava/util/Calendar;

.field private mDefaultWeekdayFeatureString:Ljava/lang/String;

.field private mMonthDayLabelPaint:Landroid/graphics/Paint;

.field private mNormalDayTextColor:I

.field private mSaturdayTextColor:I

.field private mSundayTextColor:I

.field private mWeekdayFeatureString:Ljava/lang/String;

.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePicker;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 5

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    const-string v0, "XXXXXXR"

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_month_day_label_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Landroid/support/v7/appcompat/R$styleable;->DatePicker_dayTextColor:I

    sget v3, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_normal_text_color_light:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    sget v2, Landroid/support/v7/appcompat/R$styleable;->DatePicker_sundayTextColor:I

    sget v3, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_sunday_text_color_light:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mSundayTextColor:I

    sget v2, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_saturday_text_color_light:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mSaturdayTextColor:I

    const-string v2, "CscFeature_Calendar_SetColorOfDays"

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/support/v4/feature/SeslCscFeatureReflector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mWeekdayFeatureString:Ljava/lang/String;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    const-string v3, "sec-roboto-light"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$4100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$4600(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$4700(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$4100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    mul-int/2addr v3, v1

    div-int/2addr v2, v3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$4100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v4, 0x2

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePicker;->access$4100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v7

    rem-int/2addr v6, v7

    const/16 v7, 0x42

    if-eq v5, v7, :cond_2

    const/16 v7, 0x52

    if-eq v5, v7, :cond_1

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v8, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    aput v8, v7, v6

    goto :goto_1

    :cond_1
    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v8, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mSundayTextColor:I

    aput v8, v7, v6

    goto :goto_1

    :cond_2
    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v8, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mSaturdayTextColor:I

    aput v8, v7, v6

    nop

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    nop

    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$4100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$4200(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$4100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v5

    rem-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$4800(Landroid/support/v7/widget/SeslDatePicker;)Ljava/text/SimpleDateFormat;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$1100(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$4100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    sub-int v7, v6, v3

    mul-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v7, v2

    iget-object v8, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v8}, Landroid/support/v7/widget/SeslDatePicker;->access$4900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_3

    :cond_4
    mul-int v6, v1, v3

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v2

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePicker;->access$4900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v7

    add-int/2addr v7, v6

    :goto_3
    move v6, v7

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v7, v6

    int-to-float v8, v0

    iget-object v9, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
