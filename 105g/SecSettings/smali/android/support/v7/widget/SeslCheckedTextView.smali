.class public Landroid/support/v7/widget/SeslCheckedTextView;
.super Landroid/widget/TextView;
.source "SeslCheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslCheckedTextView$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBasePadding:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkGravity:I

.field private mCheckMarkResource:I

.field private mCheckMarkTintList:Landroid/content/res/ColorStateList;

.field private mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mCheckMarkWidth:I

.field private mChecked:Z

.field private mDrawablePadding:I

.field private mHasCheckMarkTint:Z

.field private mHasCheckMarkTintMode:Z

.field private mNeedRequestlayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/SeslCheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    const v1, 0x800003

    iput v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkGravity:I

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView_android_checkMark:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SeslCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v4, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView_android_checkMarkTintMode:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    sget v4, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView_android_checkMarkTintMode:I

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v6, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v6}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v5, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    :cond_1
    sget v4, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView_android_checkMarkTint:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView_android_checkMarkTint:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    iput-boolean v5, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    :cond_2
    sget v4, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView_checkMarkGravity:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkGravity:I

    sget v1, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView_android_checked:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslCheckedTextView;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroid/support/v7/appcompat/R$dimen;->sesl_checked_text_padding:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mDrawablePadding:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    return-void
.end method

.method private applyCheckMarkTint()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private isCheckMarkAtStart()Z
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkGravity:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private setBasePadding(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mBasePadding:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mBasePadding:I

    :goto_0
    return-void
.end method

.method private setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslCheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    sget-object v0, Landroid/support/v7/widget/SeslCheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslCheckedTextView;->setMinHeight(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    :cond_3
    iput v2, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    :goto_2
    iput-object p1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkResource:I

    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->resolvePadding(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->isCheckMarkAtStart()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslCheckedTextView;->setBasePadding(Z)V

    return-void
.end method

.method private updatePadding()V
    .locals 5

    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->resetPaddingToInitialValues(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    iget v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mBasePadding:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mDrawablePadding:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mBasePadding:I

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->isCheckMarkAtStart()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    or-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    invoke-static {p0, v0}, Landroid/support/v4/view/SeslViewReflector;->setField_mPaddingLeft(Landroid/view/View;I)V

    goto :goto_3

    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    or-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    invoke-static {p0, v0}, Landroid/support/v4/view/SeslViewReflector;->setField_mPaddingRight(Landroid/view/View;I)V

    :goto_3
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->requestLayout()V

    iput-boolean v3, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslCheckedTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslCheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/widget/SeslTextViewReflector;->getField_mSingleLine(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/support/v7/widget/SeslCheckedTextView;->invalidate(IIII)V

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/support/v7/widget/SeslCheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslCheckedTextView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-eq v1, v4, :cond_1

    const/16 v4, 0x50

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getHeight()I

    move-result v4

    sub-int v3, v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v3, v4, 0x2

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->isCheckMarkAtStart()Z

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getWidth()I

    move-result v5

    move v6, v3

    add-int v7, v6, v2

    if-eqz v4, :cond_2

    iget v8, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mBasePadding:I

    iget v9, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    add-int/2addr v9, v8

    goto :goto_1

    :cond_2
    iget v8, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mBasePadding:I

    sub-int v9, v5, v8

    iget v8, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    sub-int v8, v9, v8

    :goto_1
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getScrollX()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getScrollX()I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual {v0, v10, v6, v11, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v8, v6, v9, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getScrollX()I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getScrollX()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual {v10, v11, v6, v12, v7}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/SeslCheckedTextView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslCheckedTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslCheckedTextView$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslCheckedTextView;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->requestLayout()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->updatePadding()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/SeslCheckedTextView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SeslCheckedTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Landroid/support/v7/widget/SeslCheckedTextView$SavedState;->checked:Z

    return-object v1
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkResource:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslCheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslCheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    return-void
.end method

.method public setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mChecked:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->refreshDrawableState()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/SeslViewReflector;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslCheckedTextView;->setChecked(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
