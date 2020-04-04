.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SeslNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/res/SeslCompatibilityInfoReflector;->getField_applicationScale(Landroid/content/res/Resources;)F

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v3, v1}, Landroid/support/v4/graphics/SeslRectReflector;->scale(Landroid/graphics/Rect;F)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPicker;->isVisibleToUserWrapper()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    move-object v4, v3

    iget-object v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object v6, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v6, v6, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/SeslNumberPicker;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    aget v6, v5, v6

    aget v2, v5, v2

    invoke-virtual {v4, v6, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-static {v4, v1}, Landroid/support/v4/graphics/SeslRectReflector;->scale(Landroid/graphics/Rect;F)V

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_2

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v2

    iget-object v6, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v6}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v6

    if-ge v2, v6, :cond_4

    :cond_3
    const/16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v2

    iget-object v6, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v6}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v6

    if-le v2, v6, :cond_6

    :cond_5
    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_6
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/SeslNumberPicker;->isVisibleToUserWrapper(Landroid/graphics/Rect;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    move-object v3, v2

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/SeslNumberPicker;->getLocationOnScreen([I)V

    const/4 v5, 0x0

    aget v5, v4, v5

    aget v1, v4, v1

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualCurrentButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SeslNumberPicker;->isVisibleToUserWrapper(Landroid/graphics/Rect;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    move-object v2, v1

    iget-object v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object v6, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v6, v6, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/SeslNumberPicker;->getLocationOnScreen([I)V

    aget v4, v5, v4

    aget v3, v5, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVirtualCurrentButtonText()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2300(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    if-gt v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2400(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v2, v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    if-lt v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2400(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v2, v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2300(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    if-gt v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2400(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int v3, v0, v3

    aget-object v2, v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasVirtualDecrementButton()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_0

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

.method private hasVirtualIncrementButton()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_0

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

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3700(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/SeslNumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3700(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/SeslNumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 13

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPicker;->getScrollX()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, v5, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v5}, Landroid/support/v7/widget/SeslNumberPicker;->getScrollY()I

    move-result v12

    iget-object v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3400(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    const/high16 v7, -0x80000000

    if-eq v5, v7, :cond_1

    :cond_0
    if-eq p1, v6, :cond_3

    packed-switch p1, :pswitch_data_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    :cond_2
    return-object v5

    :pswitch_0
    const/4 v6, 0x3

    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    iget-object v8, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v8}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v8

    sub-int v9, v5, v8

    sub-int v5, v1, v0

    add-int v10, v4, v5

    sub-int v5, v3, v2

    add-int v11, v12, v5

    move-object v5, p0

    move v8, v4

    invoke-direct/range {v5 .. v11}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    return-object v5

    :pswitch_1
    iget-object v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v6}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v6

    add-int/2addr v5, v6

    sub-int v6, v1, v0

    add-int/2addr v6, v4

    iget-object v7, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v8}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    return-object v5

    :pswitch_2
    const/4 v6, 0x1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v7

    sub-int v5, v1, v0

    add-int v10, v4, v5

    iget-object v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    iget-object v8, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v8}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v8

    add-int v11, v5, v8

    move-object v5, p0

    move v8, v4

    move v9, v12

    invoke-direct/range {v5 .. v11}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    return-object v5

    :cond_3
    sub-int v5, v1, v0

    add-int/2addr v5, v4

    sub-int v6, v3, v2

    add-int/2addr v6, v12

    invoke-direct {p0, v4, v12, v5, v6}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    packed-switch p2, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    return-object v2

    :pswitch_0
    invoke-direct {p0, v0, p2, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 10

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$700(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getRight()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v2

    const/4 v3, -0x1

    const/high16 v4, -0x80000000

    const/16 v5, 0x80

    const/16 v6, 0x40

    const/4 v7, 0x1

    if-eq p1, v3, :cond_17

    const v3, 0x8000

    const/high16 v8, 0x10000

    const/16 v9, 0x10

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eq p2, v9, :cond_5

    if-eq p2, v6, :cond_3

    if-eq p2, v5, :cond_1

    return v1

    :cond_1
    iget v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v3, p1, :cond_2

    iput v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v8}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v3, v1, v4, v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_2
    return v1

    :cond_3
    iget v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_4

    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v3, v1, v4, v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_4
    return v1

    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    invoke-virtual {p0, p1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    return v7

    :cond_6
    return v1

    :pswitch_1
    if-eq p2, v9, :cond_f

    const/16 v9, 0x20

    if-eq p2, v9, :cond_d

    if-eq p2, v6, :cond_b

    if-eq p2, v5, :cond_9

    packed-switch p2, :pswitch_data_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    return v1

    :pswitch_2
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    return v7

    :cond_7
    return v1

    :pswitch_3
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    move-result v1

    return v1

    :cond_8
    return v1

    :cond_9
    iget v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v3, p1, :cond_a

    iput v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v8}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_a
    return v1

    :cond_b
    iget v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_c

    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v5

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_c
    return v1

    :cond_d
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->performLongClick()V

    return v7

    :cond_e
    return v1

    :cond_f
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->performClick()V

    return v7

    :cond_10
    return v1

    :pswitch_4
    if-eq p2, v9, :cond_15

    if-eq p2, v6, :cond_13

    if-eq p2, v5, :cond_11

    return v1

    :cond_11
    iget v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v3, p1, :cond_12

    iput v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v8}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v3, v1, v1, v0, v4}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_12
    return v1

    :cond_13
    iget v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_14

    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v3, v1, v1, v0, v4}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_14
    return v1

    :cond_15
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    invoke-virtual {p0, p1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    return v7

    :cond_16
    return v1

    :cond_17
    if-eq p2, v6, :cond_20

    if-eq p2, v5, :cond_1e

    const/16 v3, 0x1000

    if-eq p2, v3, :cond_1b

    const/16 v3, 0x2000

    if-eq p2, v3, :cond_18

    nop

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v1

    return v1

    :cond_18
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    if-le v3, v4, :cond_1a

    :cond_19
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    return v7

    :cond_1a
    return v1

    :cond_1b
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    if-ge v3, v4, :cond_1d

    :cond_1c
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    return v7

    :cond_1d
    return v1

    :cond_1e
    iget v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v3, p1, :cond_1f

    iput v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {v1}, Landroid/support/v4/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    return v7

    :cond_1f
    return v1

    :cond_20
    iget v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v3, p1, :cond_21

    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {v1}, Landroid/support/v4/view/SeslViewReflector;->requestAccessibilityFocus(Landroid/view/View;)Z

    return v7

    :cond_21
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
