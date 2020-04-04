.class public Lcom/samsung/android/settings/display/widget/IntervalSeekBar;
.super Landroid/widget/SeekBar;
.source "IntervalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;,
        Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;,
        Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Marker;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mDisableAnimator:Landroid/animation/ValueAnimator;

.field public mDisableDuration:I

.field public mDisableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field public mEnableAnimator:Landroid/animation/ValueAnimator;

.field public mEnableDuration:I

.field public mEnableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mIsAnimating:Ljava/lang/Boolean;

.field public mLine:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;",
            ">;"
        }
    .end annotation
.end field

.field public mMarkers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Marker;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mPaint1:Landroid/graphics/Paint;

.field private mPaint2:Landroid/graphics/Paint;

.field public mPointer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;",
            ">;"
        }
    .end annotation
.end field

.field private mRect:Landroid/graphics/Rect;

.field mSelectedFontSize:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mIsAnimating:Ljava/lang/Boolean;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mEnableAnimator:Landroid/animation/ValueAnimator;

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mEnableDuration:I

    new-instance v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$1;-><init>(Lcom/samsung/android/settings/display/widget/IntervalSeekBar;)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mEnableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDisableAnimator:Landroid/animation/ValueAnimator;

    iput v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDisableDuration:I

    new-instance v0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$2;-><init>(Lcom/samsung/android/settings/display/widget/IntervalSeekBar;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDisableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mLine:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mContext:Landroid/content/Context;

    const v0, 0x7f0806c6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setDrawable(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/widget/IntervalSeekBar;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->animateMarkers(F)V

    return-void
.end method

.method private animateMarkers(F)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Marker;

    iget v3, v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Marker;->mStartMarkerX:F

    iget v4, v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Marker;->mTargetMarkerX:F

    iget v5, v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Marker;->mStartMarkerX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Marker;->mMarkerX:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;

    iget v3, v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;->mStartLineX:F

    iget v4, v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;->mTargetLineX:F

    iget v5, v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;->mStartLineX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;->mLineX:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;

    iget v3, v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;->mStartPointerX:F

    iget v4, v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;->mTargetPointerX:F

    iget v5, v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;->mStartPointerX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;->mPointerX:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    float-to-double v1, p1

    const-wide v3, 0x3fee666666666666L    # 0.95

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mIsAnimating:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->resetMarkers()V

    :cond_3
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v0, v0, [I

    aput p1, v0, v2

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private drawMarkers(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingBottom:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingLeft:I

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingTop:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingRight:I

    sub-int/2addr v2, v3

    int-to-float v8, v2

    iget-object v7, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    move v4, v1

    move v5, v8

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const-string v2, "IntervalSeekBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawMarkers canvas.getHeight() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", lineHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mPaddingTop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPaddingBottom : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDrawable.getIntrinsicHeight()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    move v2, v9

    :goto_0
    move v10, v2

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v10, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v2, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    iget v2, v11, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;->mLineX:F

    sub-float v5, v8, v2

    iget-object v7, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaint1:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    iget v5, v11, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;->mLineX:F

    iget-object v7, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaint1:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v8

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v2, v10, 0x1

    goto :goto_0

    :cond_1
    move v2, v9

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;

    iget-object v4, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070446

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, v3, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;->mPointerX:F

    int-to-float v6, v4

    iget-object v7, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v1, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    nop

    :goto_3
    move v2, v9

    iget-object v3, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Marker;

    iget v4, v3, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Marker;->mMarkerX:F

    float-to-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget v4, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mSelectedFontSize:I

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    add-int/lit8 v9, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070447

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060284

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaint:Landroid/graphics/Paint;

    int-to-float v4, v1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaint1:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaint1:Landroid/graphics/Paint;

    const v4, 0x7f060151

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaint1:Landroid/graphics/Paint;

    int-to-float v4, v1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaint2:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaint2:Landroid/graphics/Paint;

    const v3, 0x10602e8

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private initEnableMarkers(Z)V
    .locals 8

    iget v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mWidth:I

    iget v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    const/4 v2, 0x6

    :goto_0
    int-to-float v3, v1

    div-float v3, v0, v3

    int-to-float v4, v2

    div-float v4, v0, v4

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    if-ge v5, v2, :cond_1

    new-instance v7, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Marker;

    invoke-direct {v7, v6}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Marker;-><init>(Lcom/samsung/android/settings/display/widget/IntervalSeekBar$1;)V

    move-object v6, v7

    iput v3, v6, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Marker;->mStartMarkerX:F

    iput v3, v6, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Marker;->mMarkerX:F

    iput v4, v6, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Marker;->mTargetMarkerX:F

    iget-object v7, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;-><init>(Lcom/samsung/android/settings/display/widget/IntervalSeekBar$1;)V

    const/high16 v7, 0x40400000    # 3.0f

    if-eqz p1, :cond_2

    iput v0, v5, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;->mStartLineX:F

    iput v0, v5, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;->mLineX:F

    mul-float/2addr v7, v4

    sub-float v7, v0, v7

    iput v7, v5, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;->mTargetLineX:F

    goto :goto_2

    :cond_2
    mul-float/2addr v7, v3

    sub-float v7, v0, v7

    iput v7, v5, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;->mStartLineX:F

    iput v7, v5, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;->mLineX:F

    iput v0, v5, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Line;->mTargetLineX:F

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;

    invoke-direct {v7, v6}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;-><init>(Lcom/samsung/android/settings/display/widget/IntervalSeekBar$1;)V

    move-object v6, v7

    sget v7, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    iput v7, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mSelectedFontSize:I

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mSelectedFontSize:I

    sub-int v7, v1, v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    iput v7, v6, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;->mStartPointerX:F

    iput v7, v6, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;->mPointerX:F

    iget v7, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mSelectedFontSize:I

    sub-int v7, v2, v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    iput v7, v6, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;->mTargetPointerX:F

    goto :goto_3

    :cond_3
    iget v7, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mSelectedFontSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    iput v7, v6, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;->mStartPointerX:F

    iput v7, v6, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;->mPointerX:F

    iget v7, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mSelectedFontSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    iput v7, v6, Lcom/samsung/android/settings/display/widget/IntervalSeekBar$Pointer;->mTargetPointerX:F

    :goto_3
    iget-object v7, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private resetMarkers()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method


# virtual methods
.method public animationStart(Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->initEnableMarkers(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mEnableAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mEnableDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mEnableAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mEnableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mEnableAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mIsAnimating:Ljava/lang/Boolean;

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mIsAnimating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->drawMarkers(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingBottom:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingLeft:I

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const-string v1, "IntervalSeekBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw canvas.getHeight() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", translate_dx : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPaddingTop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPaddingBottom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mDrawable.getIntrinsicHeight()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->getMax()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "elite"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mPaddingRight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mWidth:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDrawable(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->init(Landroid/content/Context;)V

    return-void
.end method
