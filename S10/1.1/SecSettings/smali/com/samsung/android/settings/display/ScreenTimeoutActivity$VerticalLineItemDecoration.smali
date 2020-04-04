.class public Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ScreenTimeoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenTimeoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerticalLineItemDecoration"
.end annotation


# instance fields
.field private final ATTRS:[I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mIsVisibleFooterViewDivider:Z

.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->ATTRS:[I

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mIsVisibleFooterViewDivider:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->ATTRS:[I

    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 11

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_3

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v6

    iget-boolean v8, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mIsVisibleFooterViewDivider:Z

    if-eqz v8, :cond_0

    add-int/lit8 v8, v0, -0x2

    if-eq v1, v8, :cond_2

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutDirection()I

    move-result v8

    const v9, 0x7f0702d3

    if-nez v8, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v8

    iget-object v10, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v10}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->access$000(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    add-int v4, v8, v9

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    sub-int v5, v8, v9

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v8, v10

    iget-object v10, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v10}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->access$000(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sub-int v5, v8, v9

    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v6, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public setVisibleFooterViewDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mIsVisibleFooterViewDivider:Z

    return-void
.end method
