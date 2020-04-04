.class public Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SecFontStylePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerticalLineItemDecoration"
.end annotation


# instance fields
.field private final ATTRS:[I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->ATTRS:[I

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->ATTRS:[I

    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

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

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$100(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0702e0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutDirection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v9

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->access$100(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int v5, v9, v6

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, v7, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
