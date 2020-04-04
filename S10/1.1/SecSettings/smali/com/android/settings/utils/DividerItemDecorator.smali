.class public Lcom/android/settings/utils/DividerItemDecorator;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecorator.java"


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mInsetLeft:I

.field private mInsetRight:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/utils/DividerItemDecorator;->mInsetLeft:I

    iput v0, p0, Lcom/android/settings/utils/DividerItemDecorator;->mInsetRight:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/settings/utils/DividerItemDecorator;->mDividerHeight:I

    return-void
.end method


# virtual methods
.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/utils/DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/utils/DividerItemDecorator;->mDividerHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/android/settings/utils/DividerItemDecorator;->mInsetLeft:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/utils/DividerItemDecorator;->mInsetRight:I

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_0

    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/settings/utils/DividerItemDecorator;->mDividerHeight:I

    add-int/2addr v7, v6

    iget-object v8, p0, Lcom/android/settings/utils/DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v0, v6, v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Lcom/android/settings/utils/DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    iput p2, p0, Lcom/android/settings/utils/DividerItemDecorator;->mInsetLeft:I

    iput p3, p0, Lcom/android/settings/utils/DividerItemDecorator;->mInsetRight:I

    iput-object p1, p0, Lcom/android/settings/utils/DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/utils/DividerItemDecorator;->mDividerHeight:I

    return-void
.end method
