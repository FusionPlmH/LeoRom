.class public Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;
.super Landroid/view/View;
.source "SecZenScheduleRepeatButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawRepeatCircleView"
.end annotation


# instance fields
.field mPaint:Landroid/graphics/Paint;

.field final mRadius:I

.field mRepeatToggleButton:Landroid/view/View;

.field mSelectionRatio:F

.field final mStartMargin:I

.field final mStroke:I

.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mSelectionRatio:F

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRadius:I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mStroke:I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mStartMargin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRepeatToggleButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setWillNotDraw(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mContext:Landroid/content/Context;

    const v2, 0x7f0601e3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRepeatToggleButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$500(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mStartMargin:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRepeatToggleButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRepeatToggleButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$500(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRepeatToggleButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mSelectionRatio:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method setRepeatToggleButton(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRepeatToggleButton:Landroid/view/View;

    return-void
.end method

.method setSelectionRatio(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mSelectionRatio:F

    return-void
.end method
