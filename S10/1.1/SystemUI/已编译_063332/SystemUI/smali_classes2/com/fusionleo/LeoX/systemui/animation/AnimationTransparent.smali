.class public Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;
.super Ljava/lang/Object;
.source "AnimationTransparent.java"


# static fields
.field private static currentAlpha:I

.field private static endAlpha:I

.field private static handler4Transparent:Landroid/os/Handler;

.field private static periodTime:I

.field private static runnable4Transparent:Ljava/lang/Runnable;

.field private static startAlpha:I

.field private static time4Trans:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xff

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->currentAlpha:I

    const/16 v1, 0x64

    sput v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->endAlpha:I

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->startAlpha:I

    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->time4Trans:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->handler4Transparent:Landroid/os/Handler;

    const/16 v0, 0xa

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->periodTime:I

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/-$$Lambda$AnimationTransparent$yIv_Xk6tkV6v8UxwVL1OHd69-6g;->INSTANCE:Lcom/fusionleo/LeoX/systemui/animation/-$$Lambda$AnimationTransparent$yIv_Xk6tkV6v8UxwVL1OHd69-6g;

    sput-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->runnable4Transparent:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 0

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->transparenting()V

    return-void
.end method

.method public static start()V
    .locals 4

    sget-wide v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->time4Trans:J

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->startAlpha:I

    sget v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->endAlpha:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    sput v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->periodTime:I

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->handler4Transparent:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->runnable4Transparent:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    return-void
.end method

.method public static stop()V
    .locals 3

    sget v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->startAlpha:I

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->currentAlpha:I

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->handler4Transparent:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->runnable4Transparent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->startAlpha:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setAlpha(F)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    return-void
.end method

.method private static transparenting()V
    .locals 4

    sget v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->currentAlpha:I

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->endAlpha:I

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->currentAlpha:I

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->currentAlpha:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setAlpha(F)V

    sget-wide v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->time4Trans:J

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->startAlpha:I

    sget v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->endAlpha:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    sput v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->periodTime:I

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->handler4Transparent:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->runnable4Transparent:Ljava/lang/Runnable;

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->periodTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
