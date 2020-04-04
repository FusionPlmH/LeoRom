.class Landroid/support/v7/widget/SeslGradientColorWheel;
.super Landroid/view/View;
.source "SeslGradientColorWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;
    }
.end annotation


# instance fields
.field private final HUE_COLORS:[I

.field private cursorDrawable:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mCursorPaint:Landroid/graphics/Paint;

.field private final mCursorPaintSize:I

.field private mCursorPosX:F

.field private mCursorPosY:F

.field private final mCursorStrokeSize:I

.field private mHuePaint:Landroid/graphics/Paint;

.field private mListener:Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;

.field private mOrbitalRadius:I

.field private mRadius:I

.field private final mResources:Landroid/content/res/Resources;

.field private mSaturationPaint:Landroid/graphics/Paint;

.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->HUE_COLORS:[I

    iput-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_color_picker_gradient_wheel_cursor_paint_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaintSize:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_color_picker_gradient_wheel_cursor_paint_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_color_picker_gradient_wheel_cursor_out_stroke_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorStrokeSize:I

    invoke-direct {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->init()V

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method private init()V
    .locals 12

    iget-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_color_picker_gradient_wheel_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorStrokeSize:I

    add-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorStrokeSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    new-instance v1, Landroid/graphics/SweepGradient;

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->HUE_COLORS:[I

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/RadialGradient;

    iget v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v6, v4

    iget v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v7, v4

    iget v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v8, v4

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mContext:Landroid/content/Context;

    sget-boolean v6, Landroid/support/v7/widget/SeslColorPicker;->sIsLightTheme:Z

    if-eqz v6, :cond_0

    sget v6, Landroid/support/v7/appcompat/R$color;->sesl_color_picker_stroke_color_light:I

    goto :goto_0

    :cond_0
    sget v6, Landroid/support/v7/appcompat/R$color;->sesl_action_bar_background_color_dark:I

    :goto_0
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mResources:Landroid/content/res/Resources;

    sget v5, Landroid/support/v7/appcompat/R$drawable;->sesl_color_picker_gradient_wheel_cursor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/SeslGradientColorWheel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateCursorPosition(FF)V
    .locals 9

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-double v3, v3

    float-to-double v5, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-double v3, v3

    float-to-double v5, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaintSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    float-to-int v1, v1

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaintSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    float-to-int v2, v2

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaintSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaintSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    float-to-int v4, v4

    iget v5, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaintSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    nop

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SeslGradientColorWheel;->playSoundEffect(I)V

    nop

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    iget v5, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    div-float/2addr v3, v0

    add-float/2addr v1, v3

    iput v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    iget v5, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    div-float/2addr v3, v0

    add-float/2addr v1, v3

    iput v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mListener:Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosY:F

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-double v3, v1

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mRadius:I

    int-to-float v1, v1

    iget v5, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPosX:F

    sub-float/2addr v1, v5

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-float v1, v3

    const/high16 v3, 0x43340000    # 180.0f

    add-float/2addr v1, v3

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mOrbitalRadius:I

    int-to-float v3, v3

    div-float v3, v0, v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mListener:Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;

    invoke-interface {v4, v1, v3}, Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;->onWheelColorChanged(FF)V

    goto :goto_1

    :cond_3
    const-string v1, "SeslGradientColorWheel"

    const-string v3, "Listener is not set."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->invalidate()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setColor(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/SeslGradientColorWheel;->updateCursorPosition(FF)V

    return-void
.end method

.method setOnColorWheelInterface(Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mListener:Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;

    return-void
.end method

.method updateCursorColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
