.class public Lcom/fusionleo/LeoX/systemui/FloatWindowManager;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"


# static fields
.field private static mBallView:Lcom/android/systemui/fusionleo/LeoFloatBall;

.field private static mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBallView(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->mBallView:Lcom/android/systemui/fusionleo/LeoFloatBall;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    new-instance v3, Lcom/android/systemui/fusionleo/LeoFloatBall;

    invoke-direct {v3, p0}, Lcom/android/systemui/fusionleo/LeoFloatBall;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->mBallView:Lcom/android/systemui/fusionleo/LeoFloatBall;

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    div-int/lit8 v4, v2, 0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v4, 0x7d2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v4, 0x28

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v4, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->mBallView:Lcom/android/systemui/fusionleo/LeoFloatBall;

    invoke-virtual {v4, v3}, Lcom/android/systemui/fusionleo/LeoFloatBall;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    sget-object v4, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->mBallView:Lcom/android/systemui/fusionleo/LeoFloatBall;

    invoke-interface {v0, v4, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    sget-object v0, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    sget-object v0, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static removeBallView(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->mBallView:Lcom/android/systemui/fusionleo/LeoFloatBall;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    sget-object v1, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->mBallView:Lcom/android/systemui/fusionleo/LeoFloatBall;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/fusionleo/LeoX/systemui/FloatWindowManager;->mBallView:Lcom/android/systemui/fusionleo/LeoFloatBall;

    :cond_0
    return-void
.end method
