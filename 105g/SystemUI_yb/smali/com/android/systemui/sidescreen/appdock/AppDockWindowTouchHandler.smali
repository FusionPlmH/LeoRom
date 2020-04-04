.class public Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;
.super Ljava/lang/Object;
.source "AppDockWindowTouchHandler.java"


# instance fields
.field mDeltaPoint:Landroid/graphics/Point;

.field mDownPoint:Landroid/graphics/Point;

.field mEdgeSlop:I

.field mLastPoint:Landroid/graphics/Point;

.field mMovePoint:Landroid/graphics/Point;

.field mTouchDownTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mDownPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mLastPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mDeltaPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mMovePoint:Landroid/graphics/Point;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mEdgeSlop:I

    return-void
.end method


# virtual methods
.method public getEdgeSlop()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mEdgeSlop:I

    return v0
.end method

.method public getMovePoint()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mMovePoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public onPreTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mLastPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mLastPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mDeltaPoint:Landroid/graphics/Point;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Point;->set(II)V

    iget-object v5, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mDownPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v5, v1, v5

    iget-object v6, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mDownPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v6, v2, v6

    iget-object v7, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mMovePoint:Landroid/graphics/Point;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v3, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mDeltaPoint:Landroid/graphics/Point;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Point;->set(II)V

    iget-object v3, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mMovePoint:Landroid/graphics/Point;

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Point;->set(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mTouchDownTime:J

    nop

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowTouchHandler;->mLastPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
