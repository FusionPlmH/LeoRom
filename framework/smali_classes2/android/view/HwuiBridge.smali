.class public final Landroid/view/HwuiBridge;
.super Ljava/lang/Object;
.source "HwuiBridge.java"


# static fields
.field private static final mGetNativeAnimatorMethod:Ljava/lang/reflect/Method;

.field private static final mNativeRenderNodeField:Ljava/lang/reflect/Field;

.field private static final mRenderNodeField:Ljava/lang/reflect/Field;


# instance fields
.field private final mFunctor:J

.field private final mNativePtr:J

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Landroid/view/RenderNodeAnimator;

    const-string v4, "getNativeAnimator"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v0, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v4, Landroid/view/View;

    const-string/jumbo v5, "mRenderNode"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v1, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v4, Landroid/view/RenderNode;

    const-string/jumbo v5, "mNativeRenderNode"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v2, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_0
    sput-object v0, Landroid/view/HwuiBridge;->mGetNativeAnimatorMethod:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/view/HwuiBridge;->mRenderNodeField:Ljava/lang/reflect/Field;

    sput-object v2, Landroid/view/HwuiBridge;->mNativeRenderNodeField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    :try_start_0
    sget-object v2, Landroid/view/HwuiBridge;->mRenderNodeField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RenderNode;

    sget-object v3, Landroid/view/HwuiBridge;->mNativeRenderNodeField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    iput-object p1, p0, Landroid/view/HwuiBridge;->mView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Landroid/view/HwuiBridge;->nCreate(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/HwuiBridge;->mNativePtr:J

    iget-wide v2, p0, Landroid/view/HwuiBridge;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/HwuiBridge;->nGetFunctor(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/HwuiBridge;->mFunctor:J

    if-eqz p2, :cond_0

    new-instance v2, Landroid/view/HwuiBridge$1;

    invoke-direct {v2, p0}, Landroid/view/HwuiBridge$1;-><init>(Landroid/view/HwuiBridge;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method

.method private createAnimator()J
    .locals 5

    iget-object v0, p0, Landroid/view/HwuiBridge;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    new-instance v0, Landroid/view/RenderNodeAnimator;

    const/16 v3, 0xc

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    iget-object v3, p0, Landroid/view/HwuiBridge;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    :try_start_0
    sget-object v3, Landroid/view/HwuiBridge;->mGetNativeAnimatorMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    nop

    nop

    invoke-static {v1, v2}, Landroid/view/HwuiBridge;->nSetAnimatorEndless(J)V

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    return-wide v1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    return-wide v1
.end method

.method private native nCreate(J)J
.end method

.method private static native nDelete(J)V
.end method

.method private static native nForceStopRenderingNow(J)V
.end method

.method private static native nGetFunctor(J)J
.end method

.method private static native nGetRenderingController(J)J
.end method

.method private static native nScheduleRendering(J)V
.end method

.method private static native nSetAnimatorEndless(J)V
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/DisplayListCanvas;

    iget-wide v1, p0, Landroid/view/HwuiBridge;->mFunctor:J

    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayListCanvas;->callDrawGLFunction2(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t run on non-hardware accelerated canvas. Canvas must be instance of DisplayListCanvas!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-wide v0, p0, Landroid/view/HwuiBridge;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/HwuiBridge;->nDelete(J)V

    return-void
.end method

.method public forceStopRenderingNow()V
    .locals 2

    iget-wide v0, p0, Landroid/view/HwuiBridge;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/HwuiBridge;->nForceStopRenderingNow(J)V

    return-void
.end method

.method getNativeRenderNode()J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    sget-object v2, Landroid/view/HwuiBridge;->mRenderNodeField:Ljava/lang/reflect/Field;

    iget-object v3, p0, Landroid/view/HwuiBridge;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RenderNode;

    sget-object v3, Landroid/view/HwuiBridge;->mNativeRenderNodeField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-wide v0
.end method

.method public getRenderingController()J
    .locals 2

    iget-wide v0, p0, Landroid/view/HwuiBridge;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/HwuiBridge;->nGetRenderingController(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public scheduleRendering()V
    .locals 2

    iget-wide v0, p0, Landroid/view/HwuiBridge;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/HwuiBridge;->nScheduleRendering(J)V

    return-void
.end method
