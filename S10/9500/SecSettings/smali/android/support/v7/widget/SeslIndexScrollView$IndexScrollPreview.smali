.class Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;
.super Landroid/view/View;
.source "SeslIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScrollPreview"
.end annotation


# instance fields
.field private mIsOpen:Z

.field private mPreviewCenterMargin:F

.field private mPreviewCenterX:F

.field private mPreviewCenterY:F

.field private mPreviewRadius:F

.field private mPreviewText:Ljava/lang/String;

.field private mShapePaint:Landroid/graphics/Paint;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Landroid/support/v7/widget/SeslIndexScrollView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslIndexScrollView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslIndexScrollView;->access$500(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_index_scroll_preview_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    sget v2, Landroid/support/v7/appcompat/R$color;->sesl_index_scroll_preview_text_color_light:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextBounds:Landroid/graphics/Rect;

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_index_scroll_preview_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewRadius:F

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_index_scroll_preview_margin_center:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterMargin:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->startAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterX:F

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterY:F

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewRadius:F

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterY:F

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewText:Ljava/lang/String;

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterX:F

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public open(FLjava/lang/String;)V
    .locals 1

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterY:F

    iput-object p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewText:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->startAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setLayout(IIII)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->layout(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$1100(Landroid/support/v7/widget/SeslIndexScrollView;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterMargin:F

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterX:F

    goto :goto_0

    :cond_0
    int-to-float v0, p3

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterMargin:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterX:F

    :goto_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public startAnimation()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$600(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v0

    const-string v2, "alpha"

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$600(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v0

    const-string v2, "alpha"

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
