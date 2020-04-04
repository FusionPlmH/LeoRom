.class public Lcom/android/internal/app/AlertController$ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonBarLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 10

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move v6, v2

    move v2, v1

    move v1, v5

    :goto_0
    const/16 v7, 0x8

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v7, :cond_0

    instance-of v7, v8, Landroid/widget/Button;

    if-eqz v7, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v2, v7

    const/high16 v7, -0x80000000

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v8, v9, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lt v2, v6, :cond_3

    if-ge v3, v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v5}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->setOrientation(I)V

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getOrientation()I

    move-result v1

    const/4 v8, 0x1

    if-eq v1, v8, :cond_6

    invoke-virtual {p0, v8}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->setOrientation(I)V

    nop

    :goto_2
    move v1, v5

    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v7, :cond_4

    instance-of v8, v5, Landroid/widget/Button;

    if-nez v8, :cond_4

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    add-int/lit8 v5, v1, 0x1

    goto :goto_2

    :cond_5
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->setGravity(I)V

    :cond_6
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
