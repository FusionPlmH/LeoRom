.class public Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;
.super Ljava/lang/Object;
.source "SideScreenDivider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

.field private mDockSide:I

.field private mLastFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

.field private mMinimized:Z

.field private mMode:I

.field private mSideScreenDividerSize:I

.field private mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

.field private mVisible:Z


# direct methods
.method private addView()V
    .locals 9

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMode:I

    const v1, 0x7f0d0207

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0208

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->setVisibility(I)V

    nop

    :goto_0
    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDockSide:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mSideScreenDividerSize:I

    move v5, v2

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    if-eqz v0, :cond_2

    :goto_3
    move v6, v1

    goto :goto_4

    :cond_2
    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mSideScreenDividerSize:I

    goto :goto_3

    :goto_4
    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->setController(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDockSide:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->onSideScreenDockSideChanged(I)V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mLastFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mLastFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->onFocusStackChanged(Landroid/app/ActivityManager$StackInfo;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    iget-boolean v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMinimized:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->onSideScreenMinimizedChanged(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->getWindowManager()Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    const/16 v7, 0xa35

    const-string v8, "SideScreenDivider"

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->addDivider(Landroid/view/View;IIILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hide()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->removeView()V

    :cond_0
    return-void
.end method

.method private removeView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->getWindowManager()Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->setController(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    return-void
.end method

.method private show()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SIDE_SCREEN_SHOW_DIVIDER:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->addView()V

    return-void

    :cond_1
    nop

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->isSideScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method getWindowManager()Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->getWindowManager()Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    move-result-object v0

    return-object v0
.end method

.method isSideScreenVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->getSideScreenVisibility()Z

    move-result v0

    return v0
.end method

.method onSideScreenDockSideChanged(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDockSide:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mDockSide:I

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->removeView()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->addView()V

    :cond_0
    return-void
.end method

.method onSideScreenMinimizedChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMinimized:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMinimized:Z

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;->onSideScreenMinimizedChanged(Z)V

    :cond_0
    return-void
.end method

.method onSideScreenModeChanged(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mMode:I

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->removeView()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->addView()V

    :cond_0
    return-void
.end method

.method setTouchable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->isSideScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->getWindowManager()Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mView:Lcom/samsung/android/systemui/sidescreen/SideScreenDividerView;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenWindowManager;->setTouchable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method updateVisibilityIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->isUnFolding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->show()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->hide()V

    :goto_1
    return-void
.end method
