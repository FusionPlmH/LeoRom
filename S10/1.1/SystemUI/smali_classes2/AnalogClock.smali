.class public Lcom/android/systemui/fusionleo/AnalogClock;
.super Landroid/view/View;
.source "AnalogClock.java"


# instance fields
.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mContext:Landroid/content/Context;

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F

.field private mTypedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fusionleo/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fusionleo/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/fusionleo/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/systemui/fusionleo/AnalogClock$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/fusionleo/AnalogClock$2;-><init>(Lcom/android/systemui/fusionleo/AnalogClock;)V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/R$styleable;->LeoAnalogClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/AnalogClock;->updateAnalogClock()V

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDialWidth:I

    iget-object v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDialHeight:I

    new-instance v0, Lcom/android/systemui/fusionleo/AnalogClock$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock$1;-><init>(Lcom/android/systemui/fusionleo/AnalogClock;Landroid/os/Handler;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/fusionleo/-$$Lambda$AnalogClock$FzEfaeVdnSJsoXC-yezMJkU1w84;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/fusionleo/-$$Lambda$AnalogClock$FzEfaeVdnSJsoXC-yezMJkU1w84;-><init>(Lcom/android/systemui/fusionleo/AnalogClock;Landroid/database/ContentObserver;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fusionleo/AnalogClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/AnalogClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/fusionleo/AnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method private onTimeChanged()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iget-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    iget-object v2, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->second:I

    int-to-float v3, v1

    int-to-float v4, v2

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mMinutes:F

    int-to-float v3, v0

    iget v4, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mHour:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mChanged:Z

    iget-object v3, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0, v3}, Lcom/android/systemui/fusionleo/AnalogClock;->updateContentDescription(Landroid/text/format/Time;)V

    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 5

    const/16 v0, 0x81

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    const/16 v4, 0x81

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$0$AnalogClock(Landroid/database/ContentObserver;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->NotificationPanel:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/AnalogClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0}, Lcom/android/systemui/fusionleo/AnalogClock;->onTimeChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mAttached:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v2, v0, Lcom/android/systemui/fusionleo/AnalogClock;->mChanged:Z

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/fusionleo/AnalogClock;->mChanged:Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fusionleo/AnalogClock;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fusionleo/AnalogClock;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fusionleo/AnalogClock;->getBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fusionleo/AnalogClock;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v6, v4, 0x2

    iget-object v7, v0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    const/4 v10, 0x0

    if-lt v3, v8, :cond_1

    if-ge v4, v9, :cond_2

    :cond_1
    const/4 v10, 0x1

    int-to-float v11, v3

    int-to-float v12, v8

    div-float/2addr v11, v12

    int-to-float v12, v4

    int-to-float v13, v9

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v12, v5

    int-to-float v13, v6

    invoke-virtual {v1, v11, v11, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    if-eqz v2, :cond_3

    div-int/lit8 v11, v8, 0x2

    sub-int v11, v5, v11

    div-int/lit8 v12, v9, 0x2

    sub-int v12, v6, v12

    div-int/lit8 v13, v8, 0x2

    add-int/2addr v13, v5

    div-int/lit8 v14, v9, 0x2

    add-int/2addr v14, v6

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v11, v0, Lcom/android/systemui/fusionleo/AnalogClock;->mHour:F

    const/high16 v12, 0x41400000    # 12.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x43b40000    # 360.0f

    mul-float v11, v11, v12

    int-to-float v13, v5

    int-to-float v14, v6

    invoke-virtual {v1, v11, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v11, v0, Lcom/android/systemui/fusionleo/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v13, v8, 0x2

    sub-int v13, v5, v13

    div-int/lit8 v14, v9, 0x2

    sub-int v14, v6, v14

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v5

    div-int/lit8 v16, v9, 0x2

    add-int v12, v6, v16

    invoke-virtual {v11, v13, v14, v15, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v12, v0, Lcom/android/systemui/fusionleo/AnalogClock;->mMinutes:F

    const/high16 v13, 0x42700000    # 60.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x43b40000    # 360.0f

    mul-float v12, v12, v13

    int-to-float v13, v5

    int-to-float v14, v6

    invoke-virtual {v1, v12, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v12, v0, Lcom/android/systemui/fusionleo/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v13, v8, 0x2

    sub-int v13, v5, v13

    div-int/lit8 v14, v9, 0x2

    sub-int v14, v6, v14

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v5

    div-int/lit8 v16, v9, 0x2

    add-int v0, v6, v16

    invoke-virtual {v12, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_5
    invoke-virtual {v12, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v10, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v6, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDialWidth:I

    if-ge v1, v6, :cond_0

    int-to-float v7, v1

    int-to-float v6, v6

    div-float v4, v7, v6

    :cond_0
    if-eqz v2, :cond_1

    iget v6, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDialHeight:I

    if-ge v3, v6, :cond_1

    int-to-float v7, v3

    int-to-float v6, v6

    div-float v5, v7, v6

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float v7, v7, v6

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Lcom/android/systemui/fusionleo/AnalogClock;->resolveSizeAndState(III)I

    move-result v7

    iget v9, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDialHeight:I

    int-to-float v9, v9

    mul-float v9, v9, v6

    float-to-int v9, v9

    invoke-static {v9, p2, v8}, Lcom/android/systemui/fusionleo/AnalogClock;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/fusionleo/AnalogClock;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mChanged:Z

    return-void
.end method

.method public updateAnalogClock()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNotificationPanelAnalogClockDial:I

    iget-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mTypedArray:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mTypedArray:Landroid/content/res/TypedArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mTypedArray:Landroid/content/res/TypedArray;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x7

    if-nez v1, :cond_a

    if-ne v0, v2, :cond_0

    const-string v1, "analogclock_custom_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    const-string v1, "analogclock_dot_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v1, "analogclock_baii_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const-string v1, "analogclock_spectrum_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const-string v1, "analogclock_spidey_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    const-string v1, "analogclock_hit_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_6

    const-string v1, "analogclock_num_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    const-string v1, "analogclock_kaleidoscope_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const-string v1, "analogclock_dian_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    const-string v1, "analogclock_yuan_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_9
    if-nez v0, :cond_a

    const-string v1, "analogclock_sneeky_dial"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    :cond_a
    :goto_0
    if-ge v0, v4, :cond_b

    iget-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNotificationPanelAnalogClockDialColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_c

    const-string v1, "analogclock_hour"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNotificationPanelAnalogClockHourColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_d

    const-string v1, "analogclock_min"

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/AnalogClock;->AnalogClockDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNotificationPanelAnalogClockMinuteColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
