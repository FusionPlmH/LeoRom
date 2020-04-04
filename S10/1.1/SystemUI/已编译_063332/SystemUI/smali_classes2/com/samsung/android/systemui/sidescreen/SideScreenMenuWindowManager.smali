.class public Lcom/samsung/android/systemui/sidescreen/SideScreenMenuWindowManager;
.super Ljava/lang/Object;
.source "SideScreenMenuWindowManager.java"


# instance fields
.field private mPrimaryMenuLp:Landroid/view/WindowManager$LayoutParams;

.field private mSecondaryMenuLp:Landroid/view/WindowManager$LayoutParams;

.field private final mWindowManager:Landroid/view/WindowManager;


# virtual methods
.method getLayoutParam(I)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuWindowManager;->mPrimaryMenuLp:Landroid/view/WindowManager$LayoutParams;

    return-object v0

    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuWindowManager;->mSecondaryMenuLp:Landroid/view/WindowManager$LayoutParams;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method setTouchable(Landroid/view/View;IZ)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuWindowManager;->getLayoutParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "SideScreenMenuWindowManager"

    const-string v2, "Wrong layoutParam to set SideScreeMenu touchableAndFocusable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p3, :cond_1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method
