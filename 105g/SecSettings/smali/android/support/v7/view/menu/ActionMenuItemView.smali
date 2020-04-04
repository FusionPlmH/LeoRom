.class public Landroid/support/v7/view/menu/ActionMenuItemView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;
.implements Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;,
        Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# instance fields
.field private mAllowTextWithIcon:Z

.field private mDefaultTextSize:F

.field private mExpandedFormat:Z

.field private mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsChangedRelativePadding:Z

.field private mIsLastItem:Z

.field private mIsLightTheme:Z

.field mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field mItemInvoker:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMinWidth:I

.field mPopupCallback:Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

.field private mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsChangedRelativePadding:Z

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsLastItem:Z

    iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsLightTheme:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionMenuItemView_android_minWidth:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    invoke-virtual {p0, p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v4, -0x1

    iput v4, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setSaveEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_actionMenuTextAppearance:I

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v4, :cond_0

    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-static {v5}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    iput v5, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1b

    if-le v5, v7, :cond_1

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/support/v7/view/menu/ActionMenuItemView;->seslSetButtonShapeEnabled(Z)V

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Landroid/support/v7/appcompat/R$drawable;->sesl_action_text_button_show_button_background:I

    invoke-virtual {v7, v8, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->isLightTheme()Z

    move-result v5

    iput-boolean v5, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsLightTheme:Z

    return-void
.end method

.method private hasNavigationbar()Z
    .locals 8

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    const-string/jumbo v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget v5, Landroid/support/v7/appcompat/R$dimen;->sesl_navigation_bar_height:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    iget v7, v3, Landroid/graphics/Point;->x:I

    if-eq v6, v7, :cond_1

    iget v6, v2, Landroid/graphics/Rect;->left:I

    if-ne v6, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    return v6

    :cond_1
    :goto_0
    const/4 v6, 0x1

    return v6
.end method

.method private isLightTheme()Z
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private shouldAllowTextWithIcon()Z
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v3, 0x1e0

    if-ge v1, v3, :cond_2

    const/16 v4, 0x280

    if-lt v1, v4, :cond_0

    if-ge v2, v3, :cond_2

    :cond_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method private updateTextButtonVisibility()V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    and-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_4

    iget-boolean v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsLightTheme:Z

    if-eqz v3, :cond_3

    sget v3, Landroid/support/v7/appcompat/R$drawable;->sesl_action_bar_item_text_background:I

    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_3
    sget v3, Landroid/support/v7/appcompat/R$drawable;->sesl_action_bar_item_text_background_dark:I

    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->setBackgroundResource(I)V

    :cond_4
    :goto_3
    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v0, :cond_5

    move-object v4, v2

    goto :goto_4

    :cond_5
    iget-object v4, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    :goto_4
    invoke-virtual {p0, v4}, Landroid/support/v7/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v4, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v0, :cond_7

    move-object v5, v2

    goto :goto_6

    :cond_7
    iget-object v5, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    :goto_6
    invoke-static {p0, v5}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_8
    invoke-static {p0, v4}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_7
    iget v5, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    const v6, 0x3f99999a    # 1.2f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_9

    const v5, 0x3f99999a    # 1.2f

    :cond_9
    iget v6, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    mul-float/2addr v6, v5

    invoke-virtual {p0, v1, v6}, Landroid/support/v7/view/menu/ActionMenuItemView;->setTextSize(IF)V

    :cond_a
    if-eqz v0, :cond_b

    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    nop

    :cond_b
    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipNull(Z)V

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipNull(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setTooltipOffset()V

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitleForItemView(Landroid/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setId(I)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

    :cond_1
    return-void
.end method

.method public needsDividerAfter()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method

.method public onHoverChanged(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipNull(Z)V

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setTooltipOffset()V

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onHoverChanged(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 11

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v4

    invoke-super {p0, v1, v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$drawable;->sesl_action_text_button_show_button_background:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->setBackgroundOn(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsLastItem:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$drawable;->sesl_more_button_show_button_background:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->setBackgroundOn(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$drawable;->sesl_action_icon_button_show_button_background:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->setBackgroundOn(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {v3}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/support/v7/view/menu/ActionMenuItemView;->setPadding(IIII)V

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_4

    iget v4, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    :cond_4
    iget v4, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I

    :goto_1
    const/high16 v5, 0x40000000    # 2.0f

    if-eq v1, v5, :cond_5

    iget v6, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v6, :cond_5

    if-ge v3, v4, :cond_5

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v5, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    :cond_5
    if-nez v0, :cond_6

    iget-object v5, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-boolean v7, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsChangedRelativePadding:Z

    if-nez v7, :cond_6

    sub-int v7, v5, v6

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    :cond_6
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipNull(Z)V

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setTooltipOffset()V

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->setBackgroundOff(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->actionFormatChanged()V

    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->setFrame(IIII)Z

    move-result v0

    iget-boolean v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsChangedRelativePadding:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v6, v5, 0x2

    add-int v7, v6, v2

    invoke-virtual {v1, v6, v3, v7, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_2
    :goto_0
    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v0, v2, :cond_0

    iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    :cond_0
    iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v1, v2, :cond_1

    iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    iget v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v1, v1, p1, v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method

.method public setIsLastItem(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsLastItem:Z

    return-void
.end method

.method public setItemInvoker(Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    iput p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    iput p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsChangedRelativePadding:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setPopupCallback(Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mPopupCallback:Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method

.method protected setTooltipOffset()V
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [I

    invoke-virtual {v0, v5}, Landroid/support/v7/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingStart()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingEnd()I

    move-result v9

    new-array v10, v4, [I

    invoke-virtual {v0, v10}, Landroid/support/v7/view/menu/ActionMenuItemView;->getLocationInWindow([I)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v11}, Landroid/support/v7/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string/jumbo v12, "window"

    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v12, v13}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v14, 0x0

    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    :goto_0
    move-object/from16 v17, v16

    move-object/from16 v18, v1

    move-object/from16 v2, v17

    instance-of v1, v2, Landroid/support/v7/widget/Toolbar;

    const/16 v16, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    move-object/from16 v19, v2

    iget v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v20, v4

    iget v4, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_3

    aget v1, v5, v16

    aget v2, v10, v16

    sub-int/2addr v1, v2

    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int v14, v1, v2

    goto :goto_1

    :cond_2
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    :cond_3
    :goto_1
    const/4 v1, 0x1

    aget v2, v10, v1

    add-int/2addr v2, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_7

    iget v4, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v21, v5

    iget v5, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    aget v5, v10, v16

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    sub-int v5, v6, v8

    sub-int/2addr v5, v9

    const/16 v16, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v9

    sub-int/2addr v4, v14

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasNavigationbar()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    if-eq v15, v5, :cond_5

    const/4 v5, 0x3

    if-ne v15, v5, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v22, v3

    goto :goto_3

    :cond_5
    :goto_2
    sget v5, Landroid/support/v7/appcompat/R$dimen;->sesl_navigation_bar_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v22, v3

    iget v3, v13, Landroid/util/DisplayMetrics;->density:F

    div-float v16, v5, v0

    move/from16 v23, v0

    mul-float v0, v16, v3

    float-to-int v0, v0

    add-int/2addr v4, v0

    goto :goto_3

    :cond_6
    move-object/from16 v22, v3

    goto :goto_3

    :cond_7
    move-object/from16 v22, v3

    move-object/from16 v21, v5

    aget v0, v10, v16

    add-int/2addr v0, v6

    sub-int v3, v6, v8

    sub-int/2addr v3, v9

    const/4 v4, 0x2

    div-int/2addr v3, v4

    sub-int/2addr v0, v3

    sub-int v4, v0, v8

    :goto_3
    move v0, v4

    invoke-static {v0, v2, v1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipPosition(III)V

    return-void

    :cond_8
    :goto_4
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipNull(Z)V

    return-void
.end method
