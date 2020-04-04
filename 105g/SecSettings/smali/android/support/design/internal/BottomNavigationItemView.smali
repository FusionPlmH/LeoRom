.class public Landroid/support/design/internal/BottomNavigationItemView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultMargin:I

.field private mHasIcon:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mIconTint:Landroid/content/res/ColorStateList;

.field private mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mItemPosition:I

.field private mLargeLabel:Landroid/widget/TextView;

.field private mLargeLabelAppearance:I

.field private mScaleDownFactor:F

.field private mScaleUpFactor:F

.field private mShiftAmount:I

.field private mShiftingMode:Z

.field private mSmallLabel:Landroid/widget/TextView;

.field private mSmallLabelAppearance:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/internal/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mHasIcon:Z

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-boolean p4, p0, Landroid/support/design/internal/BottomNavigationItemView;->mHasIcon:Z

    sget v2, Landroid/support/design/R$dimen;->sesl_bottom_navigation_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iget-boolean v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftingMode:Z

    if-eqz v2, :cond_0

    sget v2, Landroid/support/design/R$dimen;->sesl_bottom_navigation_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Landroid/support/design/R$dimen;->sesl_bottom_navigation_active_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int v4, v2, v3

    iput v4, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftAmount:I

    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    int-to-float v6, v2

    div-float/2addr v4, v6

    iput v4, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleUpFactor:F

    int-to-float v4, v2

    mul-float/2addr v5, v4

    int-to-float v4, v3

    div-float/2addr v5, v4

    iput v5, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleDownFactor:F

    :cond_0
    iget-boolean v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mHasIcon:Z

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroid/support/design/R$layout;->sesl_bottom_navigation_item:I

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Landroid/support/design/R$styleable;->BottomNavigationView:[I

    sget v2, Landroid/support/design/R$style;->Widget_Design_BottomNavigationView:I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroid/support/design/R$layout;->sesl_bottom_navigation_item_text:I

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Landroid/support/design/R$styleable;->BottomNavigationView:[I

    sget v2, Landroid/support/design/R$style;->Widget_Design_BottomNavigationView_Text:I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    sget v2, Landroid/support/design/R$styleable;->BottomNavigationView_bottomTextAppearance:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabelAppearance:I

    sget v2, Landroid/support/design/R$styleable;->BottomNavigationView_bottomTextAppearance:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabelAppearance:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v2, Landroid/support/design/R$id;->icon:I

    invoke-virtual {p0, v2}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    sget v2, Landroid/support/design/R$id;->largeLabel:I

    invoke-virtual {p0, v2}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    sget v2, Landroid/support/design/R$id;->smallLabel:I

    invoke-virtual {p0, v2}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabelAppearance:I

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabelAppearance:I

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabelAppearance:I

    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setLargeTextSize(ILandroid/widget/TextView;)V

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabelAppearance:I

    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setLargeTextSize(ILandroid/widget/TextView;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method private setLargeTextSize(ILandroid/widget/TextView;)V
    .locals 7

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    const v3, 0x3fa66666    # 1.3f

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v5, v4, v3

    if-lez v5, :cond_0

    move v4, v3

    :cond_0
    if-eqz p2, :cond_1

    const/4 v5, 0x1

    mul-float v6, v2, v4

    invoke-virtual {p2, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemPosition()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemPosition:I

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setCheckable(Z)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setId(I)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabelAppearance:I

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;->setLargeTextSize(ILandroid/widget/TextView;)V

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabelAppearance:I

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;->setLargeTextSize(ILandroid/widget/TextView;)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/support/design/internal/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 6

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mHasIcon:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_bottom_navigation_icon_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    :cond_0
    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftingMode:Z

    const/4 v1, 0x0

    const/16 v2, 0x31

    const/4 v3, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    :goto_0
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iget v5, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftAmount:I

    add-int/2addr v2, v5

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleUpFactor:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleUpFactor:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleDownFactor:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleDownFactor:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    :goto_1
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->refreshDrawableState()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    nop

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/support/v4/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIconTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIconTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemPosition:I

    return-void
.end method

.method public setShiftingMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftingMode:Z

    return-void
.end method

.method setShowButtonShape(ILandroid/content/res/ColorStateList;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$drawable;->sesl_bottomnavigation_show_button_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$drawable;->sesl_bottom_navigation_show_background_o:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
