.class public Landroid/support/v7/util/SeslRoundedCorner;
.super Ljava/lang/Object;
.source "SeslRoundedCorner.java"


# instance fields
.field mBottomLeftRound:Landroid/graphics/drawable/Drawable;

.field mBottomLeftRoundColor:I

.field mBottomRightRound:Landroid/graphics/drawable/Drawable;

.field mBottomRightRoundColor:I

.field mContext:Landroid/content/Context;

.field mIsMutate:Z

.field mIsStrokeRoundedCorner:Z

.field mRes:Landroid/content/res/Resources;

.field mRoundRadius:I

.field mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

.field mRoundStrokeHeight:I

.field mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

.field mRoundedCornerBounds:Landroid/graphics/Rect;

.field mRoundedCornerMode:I

.field mTopLeftRound:Landroid/graphics/drawable/Drawable;

.field mTopLeftRoundColor:I

.field mTopRightRound:Landroid/graphics/drawable/Drawable;

.field mTopRightRoundColor:I

.field mX:I

.field mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsMutate:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    iput-boolean p2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    invoke-direct {p0}, Landroid/support/v7/util/SeslRoundedCorner;->initRoundedCorner()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsMutate:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    iput-boolean p2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    iput-boolean p3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsMutate:Z

    invoke-direct {p0}, Landroid/support/v7/util/SeslRoundedCorner;->initRoundedCorner()V

    return-void
.end method

.method private initRoundedCorner()V
    .locals 6

    const/16 v0, 0x1a

    int-to-float v1, v0

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v4, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v2, v3

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    :cond_1
    const-string v3, "SeslRoundedCorner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initRoundedCorner, rounded corner with stroke = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", dark theme = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mutate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsMutate:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$color;->sesl_round_and_bgcolor_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRoundColor:I

    iput v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    iput v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRoundColor:I

    iput v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_top_left_round_stroke:I

    iget-object v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_top_right_round_stroke:I

    iget-object v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_bottom_left_round_stroke:I

    iget-object v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_bottom_right_round_stroke:I

    iget-object v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_2
    iget-boolean v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsMutate:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$color;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRoundColor:I

    iput v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    iput v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRoundColor:I

    iput v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_top_left_round:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_top_right_round:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_bottom_left_round:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_bottom_right_round:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$color;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRoundColor:I

    iput v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    iput v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRoundColor:I

    iput v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_top_left_round:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_top_right_round:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_bottom_left_round:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_bottom_right_round:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_round_stroke:I

    iget-object v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$dimen;->sesl_round_stroke_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeHeight:I

    return-void
.end method


# virtual methods
.method public drawRoundedCorner(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeHeight:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method public drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mX:I

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mY:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mX:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mY:I

    :goto_0
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mX:I

    iget v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mY:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mX:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mY:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeHeight:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method

.method public getRoundedCornerRadius()I
    .locals 1

    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    return v0
.end method

.method public setRoundedCornerColor(II)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_0

    const-string v0, "SeslRoundedCorner"

    const-string v1, "can not change round color on stroke rounded corners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_a

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_9

    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    if-eq p2, v0, :cond_2

    :cond_1
    const-string v0, "SeslRoundedCorner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", top color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottom color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/util/SeslRoundedCorner;->initRoundedCorner()V

    :cond_4
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_5

    iput p2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_5
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_6

    iput p2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRoundColor:I

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_7

    iput p2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_7
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_8

    iput p2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRoundColor:I

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_8
    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use wrong rounded corners to the param, corners = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no rounded corner on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRoundedCorners(I)V
    .locals 3

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_2

    iput p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/util/SeslRoundedCorner;->initRoundedCorner()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use wrong rounded corners to the param, corners = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
