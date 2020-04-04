.class public Landroid/support/v7/util/SeslSubheaderRoundedCorner;
.super Landroid/support/v7/util/SeslRoundedCorner;
.source "SeslSubheaderRoundedCorner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public drawRoundedCorner(IIIILandroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeHeight:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

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

    iput v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mX:I

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mY:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mX:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mY:I

    :goto_0
    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mX:I

    iget v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mY:I

    iget v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mX:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mY:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeHeight:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method
