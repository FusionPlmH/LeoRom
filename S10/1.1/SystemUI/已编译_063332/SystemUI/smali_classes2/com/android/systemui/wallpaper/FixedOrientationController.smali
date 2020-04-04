.class public Lcom/android/systemui/wallpaper/FixedOrientationController;
.super Ljava/lang/Object;
.source "FixedOrientationController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLastForcedRotation:I

.field private mLastHeight:I

.field private mLastWidth:I

.field private mShouldEnableScreenRotation:Z

.field private mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/FixedOrientationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastWidth:I

    iput v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastHeight:I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mShouldEnableScreenRotation:Z

    return-void
.end method


# virtual methods
.method public applyPortraitRotation()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->isLockScreenRotationAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/wallpaper/FixedOrientationController;->TAG:Ljava/lang/String;

    const-string v1, "Lock rotation is not allowed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->clearPortraitRotation()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    move v4, v6

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    sget-object v7, Lcom/android/systemui/wallpaper/FixedOrientationController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "w = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", h = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", isRtl = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", newR = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", oldR = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    if-ne v3, v7, :cond_4

    iget v7, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastHeight:I

    if-ne v1, v7, :cond_4

    iget v7, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastWidth:I

    if-ne v2, v7, :cond_4

    sget-object v5, Lcom/android/systemui/wallpaper/FixedOrientationController;->TAG:Ljava/lang/String;

    const-string v6, "Same configuration."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-nez v2, :cond_5

    move v7, v6

    goto :goto_1

    :cond_5
    move v7, v5

    :goto_1
    if-nez v1, :cond_6

    move v5, v6

    nop

    :cond_6
    or-int/2addr v5, v7

    if-eqz v5, :cond_7

    return-void

    :cond_7
    iput v3, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    iput v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastHeight:I

    iput v2, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastWidth:I

    const/4 v5, 0x3

    const/4 v7, 0x0

    if-ne v3, v6, :cond_8

    iget-object v8, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    const/high16 v9, -0x3d4c0000    # -90.0f

    invoke-virtual {v8, v9}, Landroid/view/View;->setRotation(F)V

    goto :goto_2

    :cond_8
    if-ne v3, v5, :cond_9

    iget-object v8, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {v8, v9}, Landroid/view/View;->setRotation(F)V

    goto :goto_2

    :cond_9
    const/4 v8, 0x2

    if-ne v3, v8, :cond_a

    iget-object v8, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    const/high16 v9, 0x43340000    # 180.0f

    invoke-virtual {v8, v9}, Landroid/view/View;->setRotation(F)V

    goto :goto_2

    :cond_a
    iget-object v8, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setRotation(F)V

    :goto_2
    iget-object v8, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_10

    if-eq v3, v6, :cond_d

    if-ne v3, v5, :cond_b

    goto :goto_3

    :cond_b
    if-le v2, v1, :cond_c

    move v5, v1

    move v1, v2

    move v2, v5

    :cond_c
    iget-object v5, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationX(F)V

    iget-object v5, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationY(F)V

    sget-object v5, Lcom/android/systemui/wallpaper/FixedOrientationController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#2 port w = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", h = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    :cond_d
    :goto_3
    if-le v1, v2, :cond_e

    move v5, v1

    move v1, v2

    move v2, v5

    :cond_e
    sub-int v5, v2, v1

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    if-eqz v4, :cond_f

    iget-object v7, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    neg-float v9, v5

    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    :cond_f
    iget-object v7, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationX(F)V

    :goto_4
    iget-object v7, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    sub-int v9, v1, v2

    int-to-float v9, v9

    div-float/2addr v9, v6

    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationY(F)V

    sget-object v6, Lcom/android/systemui/wallpaper/FixedOrientationController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#2 land w = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", h = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    nop

    :goto_5
    iget-object v5, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    :cond_10
    return-void
.end method

.method public clearPortraitRotation()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/FixedOrientationController;->TAG:Ljava/lang/String;

    const-string v1, "clearPortraitRotation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public isLockScreenRotationAllowed()Z
    .locals 3

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mShouldEnableScreenRotation:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method
