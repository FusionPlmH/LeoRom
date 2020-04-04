.class Landroid/support/v7/widget/SeslOverScroller;
.super Ljava/lang/Object;
.source "SeslOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;
    }
.end annotation


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

.field private final mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Landroid/support/v7/widget/SeslScroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/support/v7/widget/SeslScroller$ViscousFluidInterpolator;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean p3, p0, Landroid/support/v7/widget/SeslOverScroller;->mFlywheel:Z

    new-instance v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    new-instance v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/v4/os/SeslPerfManagerReflector;->onSmoothScrollEvent(Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOverScroller;->setSmoothScrollEnabled(Z)V

    const-string v0, "SeslOverScroller"

    const-string v1, "does NOT support Smoothscroll booster thus Smoothscroll\'s disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->finish()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslOverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$000(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->finish()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$000(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$600(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v4}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$500(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v4

    int-to-long v5, v4

    cmp-long v5, v2, v5

    if-gez v5, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/SeslOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v6, v2

    int-to-float v7, v4

    div-float/2addr v6, v7

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->updateScroll(F)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslOverScroller;->abortAnimation()V

    nop

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fling(IIIIIIII)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/support/v7/widget/SeslOverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 10

    move-object v0, p0

    move v1, p3

    move v2, p4

    iget-boolean v3, v0, Landroid/support/v7/widget/SeslOverScroller;->mFlywheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v3}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$200(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v3

    iget-object v4, v0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v4}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$200(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v4

    int-to-float v5, v1

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    int-to-float v5, v2

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    int-to-float v5, v1

    add-float/2addr v5, v3

    float-to-int v1, v5

    int-to-float v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    :cond_0
    move v9, v2

    const/4 v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/SeslOverScroller;->mMode:I

    iget-object v3, v0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    move v4, p1

    move v5, v1

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-virtual/range {v3 .. v8}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    iget-object v2, v0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    move v3, p2

    move v4, v9

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p10

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method public getCurrVelocity()F
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$200(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$200(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$100(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$100(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$400(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$400(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$000(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$000(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSmoothScrollEnabled(Z)V
    .locals 2

    move v0, p1

    iget-object v1, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->setMode(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->setMode(I)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mMode:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startScroll(III)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startScroll(III)V

    return-void
.end method
