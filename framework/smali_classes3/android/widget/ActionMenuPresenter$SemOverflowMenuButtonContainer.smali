.class Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;
.super Landroid/widget/FrameLayout;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemOverflowMenuButtonContainer"
.end annotation


# static fields
.field private static final BADGE_LIMIT_NUMBER:I = 0x63


# instance fields
.field private mBadgeAdditionalWidth:F

.field private mBadgeDefaultWidth:F

.field private mBadgeView:Landroid/widget/TextView;

.field private mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

.field private mNumberFormat:Ljava/text/NumberFormat;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mNumberFormat:Ljava/text/NumberFormat;

    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1200(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;

    invoke-direct {v0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;

    invoke-direct {v0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1300(Landroid/widget/ActionMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109010b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050254

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050255

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    return-void
.end method


# virtual methods
.method getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method invalidateBadgeText()V
    .locals 7

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1400(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->semGetSumOfDigitsInBadges()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getOverflowBadgeText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/16 v3, 0x63

    if-le v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mNumberFormat:Ljava/text/NumberFormat;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public needsDividerAfter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10502ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050255

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050254

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10502ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10502eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getLayoutDirection()I

    move-result v5

    if-ne v4, v5, :cond_0

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int v0, v4, v3

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_3

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->View:[I

    const v6, 0x10102f6

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x24

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-le v0, v3, :cond_2

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->width:I

    goto :goto_1

    :cond_2
    iput v3, v1, Landroid/widget/ActionMenuView$LayoutParams;->width:I

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
