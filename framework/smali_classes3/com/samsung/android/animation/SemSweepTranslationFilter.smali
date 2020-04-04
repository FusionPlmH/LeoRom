.class public Lcom/samsung/android/animation/SemSweepTranslationFilter;
.super Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;
.source "SemSweepTranslationFilter.java"


# static fields
.field private static final BG_ALPHA:I = 0xe1

.field private static final COEFFICIENT_FOR_VELOCITY_ADJUSTMENT:I = 0x17

.field private static final DEBUGGABLE_LOW:Z

.field private static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field private static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final SWEEP_TEXT_PADDING_DP:I = 0x10

.field private static SWEEP_TEXT_PADDING_PX:I = 0x0

.field private static final SWIPE_DURATION:I = 0x258

.field private static final TAG:Ljava/lang/String; = "SemSweepTranslationFilter"

.field private static VELOCITY_UNITS:I

.field private static sDecel:Landroid/view/animation/Interpolator;


# instance fields
.field private final DEBUGGABLE:Z

.field private final leftColor:I

.field private mBgLeftToRight:Landroid/graphics/Paint;

.field private mBgRightToLeft:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mDeltaX:F

.field private mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mEndXOfActionUpAnimator:F

.field private mListView:Landroid/widget/ListView;

.field private mSweepBitmap:Landroid/graphics/Bitmap;

.field private mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

.field private mSweepDirection:I

.field private mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

.field private mSweepRect:Landroid/graphics/Rect;

.field private mSweepRectFullyDrawn:Z

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextPaintSize:I

.field private mViewForeground:Landroid/view/View;

.field private mViewTop:I

.field private final rightColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->sDecel:Landroid/view/animation/Interpolator;

    const/16 v0, 0x3e8

    sput v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->VELOCITY_UNITS:I

    return-void
.end method

.method constructor <init>(Landroid/widget/ListView;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE:Z

    const-string v1, "#6ebd52"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->leftColor:I

    const-string v1, "#56c0e5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->rightColor:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mEndXOfActionUpAnimator:F

    iput v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDeltaX:F

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    const/16 v1, 0x50

    iput v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaintSize:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    iput v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewTop:I

    iput-object p2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->leftColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    iget v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->rightColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaintSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mContext:Landroid/content/Context;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->convertDipToPixels(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->SWEEP_TEXT_PADDING_PX:I

    return-void
.end method

.method private static convertDipToPixels(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    cmpl-float v0, p7, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaintSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p8, :cond_2

    if-eqz p5, :cond_1

    invoke-virtual {p8, p5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {p8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, p6, p5}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawSweepText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;
    .locals 30

    move-object/from16 v12, p0

    move/from16 v13, p2

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/view/View;

    if-eqz v9, :cond_2

    instance-of v2, v9, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    instance-of v2, v9, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v0, v2, v3

    :cond_2
    :goto_0
    move v8, v0

    iput v8, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewTop:I

    new-instance v0, Landroid/graphics/Rect;

    add-int v2, v8, v11

    invoke-direct {v0, v10, v8, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRect:Landroid/graphics/Rect;

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v7, v0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v5, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v4, v0, v2

    const/4 v0, 0x0

    cmpl-float v2, p3, v0

    if-lez v2, :cond_7

    iput v6, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableLeftToRight:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5

    sget-boolean v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    if-eqz v0, :cond_4

    const-string v0, "SemSweepTranslationFilter"

    const-string/jumbo v2, "mSweepConfiguration.drawableLeftToRight is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v1

    :cond_5
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v17, v1

    float-to-int v1, v13

    invoke-direct {v2, v6, v6, v1, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    iget-object v6, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v6, v6, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    move-object/from16 v19, v3

    iget-object v3, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v3, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    add-int v3, v16, v3

    move/from16 v20, v4

    const/4 v4, 0x0

    invoke-direct {v1, v6, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v1

    sub-int v1, v11, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v6, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    if-eqz v1, :cond_6

    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->backgroundColorLeftToRight:I

    if-eqz v1, :cond_6

    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    iget-object v3, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v3, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->backgroundColorLeftToRight:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    iget-object v3, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    const/16 v18, 0xff

    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textLeftToRight:Ljava/lang/String;

    iget-object v4, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v4, v4, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    move/from16 v22, v0

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableLeftToRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object v0, v12

    move-object/from16 v24, v1

    move-object v1, v7

    move/from16 v14, v20

    const/16 v21, 0x0

    move/from16 v20, v4

    move/from16 v4, v18

    move/from16 v26, v5

    move-object v5, v6

    move-object/from16 v18, v6

    move-object/from16 v6, v24

    move-object/from16 v21, v7

    move/from16 v7, v20

    move/from16 v20, v8

    move-object/from16 v8, v23

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/graphics/Rect;

    float-to-int v0, v13

    const/4 v8, 0x0

    invoke-direct {v5, v0, v8, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftToRight:Landroid/graphics/Paint;

    float-to-int v7, v14

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textLeftToRight:Ljava/lang/String;

    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    const/16 v23, 0x0

    move-object v3, v12

    move-object/from16 v4, v21

    move-object/from16 v8, v18

    move-object/from16 v24, v9

    move-object v9, v0

    move/from16 v27, v10

    move v10, v1

    move v0, v11

    move-object/from16 v11, v23

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    nop

    move v1, v0

    move/from16 v25, v14

    move/from16 v0, v26

    goto/16 :goto_1

    :cond_7
    move v14, v4

    move/from16 v26, v5

    move-object/from16 v21, v7

    move/from16 v20, v8

    move-object/from16 v24, v9

    move/from16 v27, v10

    move v8, v6

    move v10, v14

    cmpg-float v0, p3, v0

    if-gez v0, :cond_b

    const/4 v0, 0x1

    iput v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v9, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableRightToLeft:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_9

    sget-boolean v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    if-eqz v0, :cond_8

    const-string v0, "SemSweepTranslationFilter"

    const-string/jumbo v2, "mSweepConfiguration.drawableRightToLeft is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v1

    :cond_9
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    new-instance v2, Landroid/graphics/Rect;

    move/from16 v5, v26

    float-to-int v0, v5

    sub-int v0, v15, v0

    invoke-direct {v2, v0, v8, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    sub-int v1, v15, v16

    iget-object v3, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v3, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    sub-int/2addr v1, v3

    iget-object v3, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v3, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    sub-int v3, v15, v3

    invoke-direct {v0, v1, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v0

    sub-int v0, v11, v6

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v8, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    if-eqz v0, :cond_a

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->backgroundColorRightToLeft:I

    if-eqz v0, :cond_a

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->backgroundColorRightToLeft:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_a
    iget-object v3, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    const/16 v17, 0xff

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v1, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textRightToLeft:Ljava/lang/String;

    iget-object v0, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    iget-object v8, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v8, v8, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableRightToLeft:Landroid/graphics/drawable/Drawable;

    move/from16 v18, v0

    move-object v0, v12

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    move-object/from16 v22, v4

    move/from16 v4, v17

    move/from16 v28, v5

    move-object/from16 v5, v22

    move/from16 v17, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v7

    move/from16 v7, v18

    move-object/from16 v29, v9

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v28

    float-to-int v1, v0

    sub-int v1, v15, v1

    invoke-direct {v5, v9, v9, v1, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightToLeft:Landroid/graphics/Paint;

    float-to-int v7, v10

    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v9, v1, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textRightToLeft:Ljava/lang/String;

    iget-object v1, v12, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    const/16 v18, 0x0

    move-object v3, v12

    move-object/from16 v4, v21

    move-object/from16 v8, v22

    move-object/from16 v23, v29

    move/from16 v25, v10

    move v10, v1

    move v1, v11

    move-object/from16 v11, v18

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_b
    move/from16 v25, v10

    move v1, v11

    move/from16 v0, v26

    :goto_1
    return-object v21
.end method

.method private drawSweepText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, p3, v4, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v6, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p4, :cond_1

    iget v8, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget v8, p4, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v9, v9, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    sub-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    int-to-float v6, v8

    goto :goto_0

    :cond_0
    iget v8, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    if-nez v8, :cond_1

    iget v8, p4, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v9, v9, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    add-int/2addr v8, v9

    int-to-float v6, v8

    :cond_1
    :goto_0
    iget-boolean v8, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_2
    int-to-float v8, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    div-float v9, v5, v9

    add-float/2addr v8, v9

    iget v9, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v8, v9

    iget-boolean v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewTop:I

    int-to-float v7, v7

    add-float/2addr v8, v7

    iput-boolean v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    :cond_3
    invoke-virtual {p1, p3, v6, v8, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTextToCenter(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, p3, v4, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    int-to-float v5, v0

    div-float/2addr v5, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v5, v4

    invoke-virtual {p1, p3, v3, v5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-object v0
.end method

.method private initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0
.end method


# virtual methods
.method public createActionUpAnimator(Landroid/view/View;FIFZ)Landroid/animation/ValueAnimator;
    .locals 14

    move-object v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v2

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    int-to-float v1, v2

    :cond_0
    sget-boolean v4, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    if-eqz v4, :cond_1

    const-string v4, "SemSweepTranslationFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemSweepTranslationFilter : createActionUpAnimator() : Math.abs(adjustedVelocityX) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v4, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    if-eqz v4, :cond_2

    const-string v4, "SemSweepTranslationFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemSweepTranslationFilter : createActionUpAnimator() : scaledTouchSlop * 23 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v6, p3, 0x17

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-int/lit8 v5, p3, 0x17

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x44160000    # 600.0f

    const/4 v7, 0x1

    if-lez v4, :cond_5

    if-eqz p5, :cond_5

    sget-boolean v8, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    if-eqz v8, :cond_3

    const-string v8, "SemSweepTranslationFilter"

    const-string v9, "SemSweepTranslationFilter : createActionUpAnimator() : kick in animation with given velocity, point #1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v8, v8

    sub-int v8, v2, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    int-to-float v10, v2

    div-float/2addr v9, v10

    sub-float/2addr v5, v9

    mul-float/2addr v6, v5

    float-to-int v5, v6

    int-to-long v5, v5

    const-wide/16 v9, 0x258

    cmp-long v9, v5, v9

    if-lez v9, :cond_4

    const-wide/16 v5, 0x258

    :cond_4
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->signum(F)F

    move-result v9

    int-to-float v10, v2

    mul-float/2addr v9, v10

    const/4 v8, 0x0

    goto :goto_0

    :cond_5
    int-to-float v8, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    cmpl-float v8, v3, v8

    if-lez v8, :cond_7

    sget-boolean v8, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    if-eqz v8, :cond_6

    const-string v8, "SemSweepTranslationFilter"

    const-string v9, "SemSweepTranslationFilter : createActionUpAnimator() : Greater than a half of the width, point #2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v2

    div-float/2addr v8, v9

    sub-float/2addr v5, v8

    mul-float/2addr v6, v5

    float-to-int v5, v6

    int-to-long v5, v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->signum(F)F

    move-result v8

    int-to-float v9, v2

    mul-float/2addr v9, v8

    const/4 v8, 0x0

    goto :goto_0

    :cond_7
    sget-boolean v5, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    if-eqz v5, :cond_8

    const-string v5, "SemSweepTranslationFilter"

    const-string v8, "SemSweepTranslationFilter : createActionUpAnimator() : Not far enough - animate it back, point #3"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v6, v5

    int-to-float v5, v2

    div-float/2addr v6, v5

    float-to-int v5, v6

    int-to-long v5, v5

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iput-boolean v7, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mIsAnimationBack:Z

    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-gez v10, :cond_9

    const-wide/16 v5, 0x258

    :cond_9
    iput v9, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mEndXOfActionUpAnimator:F

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v7, [F

    const/4 v12, 0x0

    aput v8, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v13, v7, [F

    aput v9, v13, v12

    invoke-static {v11, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    aput-object v10, v13, v12

    aput-object v11, v13, v7

    move-object v7, p1

    invoke-static {v7, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v13, Lcom/samsung/android/animation/SemSweepTranslationFilter;->sDecel:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v12
.end method

.method public doMoveAction(Landroid/view/View;FI)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDeltaX:F

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v3, p3, v0, v2}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public doRefresh()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mIsAnimationBack:Z

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->removeCachedBitmap()V

    return-void
.end method

.method public doUpActionWhenAnimationUpdate(IF)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, p2, v2

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-direct {p0, v2, v1, p2}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v2, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getBitmapDrawableBound()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEndXOfActionUpAnimator()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mEndXOfActionUpAnimator:F

    return v0
.end method

.method public getSweepBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    sget-boolean v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    if-eqz v0, :cond_0

    const-string v0, "SemSweepTranslationFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSweepBitmapDrawable : mDrawSweepBitmapDrawable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public initAnimationFilter(Landroid/view/View;FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;)V
    .locals 0

    iput-object p4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    iput-object p5, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    return-void
.end method

.method public bridge synthetic isAnimationBack()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->isAnimationBack()Z

    move-result v0

    return v0
.end method

.method public removeCachedBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setForegroundView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    return-void
.end method
