.class public Lcom/samsung/android/visualeffect/circle/CircleContainer;
.super Landroid/widget/FrameLayout;
.source "CircleContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;
    }
.end annotation


# instance fields
.field private final COLOR_RIPPLE_RATIO:F

.field private final TOP_RIPPLE_RATIO:F

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

.field mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

.field mColorRipple:Landroid/widget/ImageView;

.field private mColorState:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mIsAutoState:Z

.field mTopRipple:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->TOP_RIPPLE_RATIO:F

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->COLOR_RIPPLE_RATIO:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->TOP_RIPPLE_RATIO:F

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->COLOR_RIPPLE_RATIO:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->TOP_RIPPLE_RATIO:F

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->COLOR_RIPPLE_RATIO:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->TOP_RIPPLE_RATIO:F

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->COLOR_RIPPLE_RATIO:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Lcom/samsung/android/visualeffect/circle/Circle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    const-string v0, "circle_container_transition_name"

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setTransitionName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCircleColorState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    div-int v4, v1, v0

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    int-to-float v5, v0

    const v6, 0x3f83d70a    # 1.03f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCircle(II)V
    .locals 6

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0802aa

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v2, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0802ab

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/samsung/android/visualeffect/circle/Circle;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    div-int/lit8 v3, p1, 0x2

    sub-int/2addr v3, p2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/visualeffect/circle/Circle;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setCircleColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->CIRCLE_PROGRESS:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v1, v2, p1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/circle/Circle;->setRingColor(I)V

    :cond_0
    return-void
.end method

.method public setCircleListener(Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    return-void
.end method

.method public setScore(IIZ)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZI)V

    return-void
.end method

.method public setScore(IIZI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->CIRCLE_PROGRESS:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v1, v2, p2}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/samsung/android/visualeffect/circle/Circle;->setScore(IIZI)V

    :cond_0
    return-void
.end method
