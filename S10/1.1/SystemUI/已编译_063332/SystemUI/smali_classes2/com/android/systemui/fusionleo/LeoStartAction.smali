.class public Lcom/android/systemui/fusionleo/LeoStartAction;
.super Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;
.source "LeoStartAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;


# instance fields
.field private isMoving:Z

.field private mOnClick:Z

.field private startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/fusionleo/LeoStartAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fusionleo/LeoStartAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->isMoving:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->startY:F

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/fusionleo/LeoProvider/LeoObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, p0}, Lcom/fusionleo/LeoProvider/LeoObserver;-><init>(Landroid/os/Handler;Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;)V

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    invoke-static {v6}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoStartAction;->setActionVisibility()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarLeftGestureEnable:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarGestureVibratorEnable:I

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarGestureVibratorLevel:I

    invoke-static {v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoHaptics(Landroid/content/Context;II)V

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarLeftGesture:I

    invoke-static {v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onLeoChange(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoStartAction;->setActionVisibility()V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-super {p0, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->mContext:Landroid/content/Context;

    sget-boolean v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarLeftGestureEnable:Z

    iput-boolean v1, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->mOnClick:Z

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/systemui/fusionleo/LeoStartAction;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->mOnClick:Z

    if-eqz v1, :cond_1

    const-string v1, "#98f73a3a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoStartAction;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/fusionleo/LeoStartAction;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->isMoving:Z

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->isMoving:Z

    if-nez v1, :cond_3

    iput-boolean v4, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->isMoving:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->startY:F

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->startY:F

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

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoStatusBarLeftGestureEnable:Z

    iput-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->mOnClick:Z

    iget-boolean v0, p0, Lcom/android/systemui/fusionleo/LeoStartAction;->mOnClick:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/android/systemui/fusionleo/LeoStartAction;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoStartAction;->setClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoStartAction;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoStartAction;->setClickable(Z)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/fusionleo/LeoStartAction;->setVisibility(I)V

    :goto_0
    return-void
.end method
