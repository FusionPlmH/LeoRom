.class public Lcom/fusionleo/LeoX/systemui/widget/MeterHome;
.super Lcom/fusionleo/LeoX/systemui/widget/MeterBase;
.source "MeterHome.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private changeX:I

.field private changeY:I

.field private hasMoved:Z

.field private mTouchStartX:I

.field private mTouchStartY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->changeX:I

    iput v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->changeY:I

    iput-boolean v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->hasMoved:Z

    iput v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->mTouchStartX:I

    iput v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->mTouchStartY:I

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->Register(Ljava/lang/String;Lcom/fusionleo/LeoX/systemui/widget/MeterBase;)V

    const-string v0, "home_selector"

    const-string v1, "pop_home"

    const-string v2, "home_pressed"

    invoke-virtual {p0, v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->MiniButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Click()V
    .locals 3

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoMiniHomeAction:I

    sget-object v1, Lcom/fusionleo/LeoProvider/LeoManages;->mLeoFloatBall:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    const/16 v2, 0xc9

    invoke-virtual {p0, v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->updateAction(ILjava/lang/String;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/widget/Until;->initialPop(Landroid/content/Context;)V

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->land()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->STATUS_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->mTouchStartX:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v3, Lcom/fusionleo/LeoX/systemui/widget/Until;->MOVE_MAX_SIZE:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->mTouchStartY:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v3, Lcom/fusionleo/LeoX/systemui/widget/Until;->MOVE_MAX_SIZE:I

    if-gt v2, v3, :cond_0

    invoke-super {p0, p1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->changeX:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->changeY:I

    sub-int v3, v1, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x3

    if-gt v4, v5, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v5, :cond_5

    :cond_2
    sget v4, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->baseX:I

    add-int/2addr v4, v2

    sput v4, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->baseX:I

    sget v4, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->baseY:I

    add-int/2addr v4, v3

    sput v4, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->baseY:I

    sget v4, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->baseX:I

    sget v5, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->baseY:I

    invoke-static {v4, v5}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateAll(II)V

    iput v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->changeX:I

    iput v1, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->changeY:I

    invoke-virtual {p0}, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->moved()V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->hasMoved:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->hasMoved:Z

    goto :goto_0

    :cond_4
    iput v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->changeX:I

    iput v1, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->changeY:I

    iput v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->mTouchStartX:I

    iput v1, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->mTouchStartY:I

    nop

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method