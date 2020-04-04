.class Landroid/support/v7/widget/AppCompatPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AppCompatPopupWindow.java"


# static fields
.field private static final COMPAT_OVERLAP_ANCHOR:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasNavigationBar:Z

.field private mNavigationBarHeight:I

.field private mOverlapAnchor:Z

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/AppCompatPopupWindow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatPopupWindow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .locals 3

    if-eqz p1, :cond_1

    const/high16 v0, 0x10f0000

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/transition/TransitionSet;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/transition/TransitionSet;

    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->PopupWindow:[I

    invoke-static {p1, p2, v0, p3, p4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_overlapAnchor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_overlapAnchor:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatPopupWindow;->setSupportOverlapAnchor(Z)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mContext:Landroid/content/Context;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_1

    sget v1, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_popupEnterTransition:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatPopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v1

    sget v3, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_popupExitTransition:I

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v7/widget/AppCompatPopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatPopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatPopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_android_popupBackground:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    invoke-static {p1}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/view/ActionBarPolicy;->hasNavigationBar()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mHasNavigationBar:Z

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_navigation_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mNavigationBarHeight:I

    return-void
.end method

.method private setSupportOverlapAnchor(Z)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/widget/PopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    if-eqz p3, :cond_1

    invoke-static {p1, v0}, Landroid/support/v4/view/SeslViewReflector;->getWindowDisplayFrame(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mHasNavigationBar:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v1, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mNavigationBarHeight:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatPopupWindow;->getSupportOverlapAnchor()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    aget v3, v1, v4

    sub-int v3, v2, v3

    sub-int/2addr v3, p2

    goto :goto_1

    :cond_3
    aget v3, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    sub-int v3, v2, v3

    sub-int/2addr v3, p2

    :goto_1
    aget v4, v1, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    add-int/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v6, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    :cond_4
    return v5
.end method

.method public getSupportOverlapAnchor()Z
    .locals 1

    invoke-static {p0}, Landroid/support/v4/widget/PopupWindowCompat;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 6

    sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void
.end method
