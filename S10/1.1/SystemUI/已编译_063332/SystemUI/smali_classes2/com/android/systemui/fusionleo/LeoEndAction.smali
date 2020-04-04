.class public Lcom/android/systemui/fusionleo/LeoEndAction;
.super Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;
.source "LeoEndAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isMoving:Z

.field private mOnClick:Z

.field private startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/fusionleo/LeoEndAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fusionleo/LeoEndAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->isMoving:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->startY:F

    invoke-virtual {p0, p0}, Lcom/android/systemui/fusionleo/LeoEndAction;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoEndAction;->setClickable(Z)V

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoEndAction;->setActionVisibility()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarRightGestureEnable:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarGestureVibratorEnable:I

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarGestureVibratorLevel:I

    invoke-static {v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoHaptics(Landroid/content/Context;II)V

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarRightGesture:I

    invoke-static {v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-super {p0, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->mContext:Landroid/content/Context;

    sget-boolean v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarRightGestureEnable:Z

    iput-boolean v1, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->mOnClick:Z

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/systemui/fusionleo/LeoEndAction;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->mOnClick:Z

    if-eqz v1, :cond_1

    const-string v1, "#98f73a3a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoEndAction;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/fusionleo/LeoEndAction;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->isMoving:Z

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->isMoving:Z

    if-nez v1, :cond_3

    iput-boolean v4, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->isMoving:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->startY:F

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->startY:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->expandStatusBar(Landroid/content/Context;)V

    :cond_4
    :goto_1
    return v4
.end method

.method public setActionVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarRightGestureEnable:Z

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->mOnClick:Z

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoEndAction;->mOnClick:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/android/systemui/fusionleo/LeoEndAction;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoEndAction;->setClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoEndAction;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoEndAction;->setClickable(Z)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoEndAction;->setVisibility(I)V

    :goto_0
    return-void
.end method
