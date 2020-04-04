.class public Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;
.super Ljava/lang/Object;
.source "AnimationParking.java"


# static fields
.field public static final LEFT:Z = true

.field public static final RIGHT:Z

.field private static TAG:Ljava/lang/String;

.field public static baseX:I

.field public static baseY:I

.field private static handler4Parking:Landroid/os/Handler;

.field private static handler4PosCheck:Landroid/os/Handler;

.field private static handler4Shrink:Landroid/os/Handler;

.field private static handler4Turning:Landroid/os/Handler;

.field private static homeX:I

.field private static homeY:I

.field public static mAreaChanged:Z

.field private static mAutoUpdatePeriod:J

.field public static mOriginSide:Z

.field private static mParking2Shrink:J

.field private static mStep:I

.field private static mTimeOut:Z

.field private static mVelocityTime:J

.field private static menuX:I

.field private static menuY:I

.field private static recentX:I

.field private static recentY:I

.field private static runnable4Parking:Ljava/lang/Runnable;

.field private static runnable4PosCheck:Ljava/lang/Runnable;

.field private static runnable4Shrink:Ljava/lang/Runnable;

.field private static runnable4Turning:Ljava/lang/Runnable;

.field private static velocityCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AnimationParking"

    sput-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->TAG:Ljava/lang/String;

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->baseX:I

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->baseY:I

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4PosCheck:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Turning:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAreaChanged:Z

    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAutoUpdatePeriod:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mOriginSide:Z

    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mParking2Shrink:J

    const/16 v0, 0xf

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mStep:I

    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mVelocityTime:J

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/-$$Lambda$AnimationParking$o5Ip5Hk83RIVQJ6QJgFZ92Y6XaQ;->INSTANCE:Lcom/fusionleo/LeoX/systemui/animation/-$$Lambda$AnimationParking$o5Ip5Hk83RIVQJ6QJgFZ92Y6XaQ;

    sput-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    new-instance v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking$1;

    invoke-direct {v0}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking$1;-><init>()V

    sput-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4PosCheck:Ljava/lang/Runnable;

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/-$$Lambda$AnimationParking$AKowB1kNmnIILHUqA5bNwJp68UQ;->INSTANCE:Lcom/fusionleo/LeoX/systemui/animation/-$$Lambda$AnimationParking$AKowB1kNmnIILHUqA5bNwJp68UQ;

    sput-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/-$$Lambda$AnimationParking$XNMxa7W5xgJwQwHN5tADgo65U9s;->INSTANCE:Lcom/fusionleo/LeoX/systemui/animation/-$$Lambda$AnimationParking$XNMxa7W5xgJwQwHN5tADgo65U9s;

    sput-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Turning:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mTimeOut:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->velocityCheck:Z

    return p0
.end method

.method private static hideSub()V
    .locals 3

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    return-void
.end method

.method private static initial()V
    .locals 1

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->baseX:I

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->baseY:I

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 0

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->parking()V

    return-void
.end method

.method static synthetic lambda$static$1()V
    .locals 0

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->shrinking()V

    return-void
.end method

.method static synthetic lambda$static$2()V
    .locals 0

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->turning()V

    return-void
.end method

.method public static land()V
    .locals 2

    sget-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mOriginSide:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->stop()V

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateAll(II)V

    :cond_0
    sget v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->baseY:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_HEIGHT:I

    if-le v0, v1, :cond_1

    sget v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateBottom(II)V

    :cond_1
    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->shrinkStart()V

    return-void
.end method

.method private static parking()V
    .locals 2

    sget v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->parking2Margin(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->parking2Margin(Z)V

    :goto_0
    return-void
.end method

.method private static parking2Margin(Z)V
    .locals 6

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    if-nez p0, :cond_0

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    sub-int v0, v1, v2

    :cond_0
    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mStep:I

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    if-le v2, v0, :cond_1

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mStep:I

    neg-int v1, v2

    :cond_1
    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    add-int/2addr v2, v1

    sput v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    invoke-static {v2, v3}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateAll(II)V

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mStep:I

    if-gt v2, v3, :cond_2

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    invoke-static {v2, v3}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateAll(II)V

    sget-object v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Turning:Landroid/os/Handler;

    sget-object v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Turning:Ljava/lang/Runnable;

    sget-wide v4, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mParking2Shrink:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    sget-object v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    sget-wide v4, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static posCalculateLeftX(II)V
    .locals 3

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    if-gt p0, v0, :cond_0

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    sub-int v0, p0, v0

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentX:I

    sput p1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentY:I

    div-int/lit8 v0, p0, 0x2

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeX:I

    div-int/lit8 v0, p0, 0x2

    sub-int v0, p1, v0

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeY:I

    div-int/lit8 v0, p0, 0x2

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuX:I

    div-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuY:I

    return-void

    :cond_0
    sget-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mOriginSide:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    if-ge p0, v0, :cond_1

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    sub-int v0, p0, v0

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentX:I

    sput p1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentY:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeX:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeY:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuX:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuY:I

    return-void

    :cond_1
    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->SHRINK_LINE:I

    add-int/2addr v0, v1

    if-ge p0, v0, :cond_2

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    sub-int v0, p0, v0

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentX:I

    sput p1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentY:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeX:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeY:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuX:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuY:I

    return-void

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAreaChanged:Z

    sput p0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentX:I

    sput p1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentY:I

    sput p0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeX:I

    sput p1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeY:I

    sput p0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuX:I

    sput p1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuY:I

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->hideSub()V

    return-void
.end method

.method private static quickSlide()V
    .locals 2

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4PosCheck:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4PosCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mTimeOut:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->velocityCheck:Z

    :cond_0
    sget-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAreaChanged:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->velocityCheck:Z

    :cond_1
    return-void
.end method

.method private static showOrHide(I)V
    .locals 2

    sget-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->velocityCheck:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->hideSub()V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAreaChanged:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->hideSub()V

    return-void

    :cond_1
    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    if-gt p0, v0, :cond_3

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->showSub()V

    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->hideSub()V

    return-void
.end method

.method private static showSub()V
    .locals 3

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    return-void
.end method

.method public static shrinkStart()V
    .locals 4

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static shrinking()V
    .locals 5

    sget v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mStep:I

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    if-ge v1, v2, :cond_0

    neg-int v0, v0

    :cond_0
    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    add-int/2addr v1, v0

    sput v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    invoke-static {v1, v2}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateAll(II)V

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v3, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    sput v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    invoke-static {v1, v2}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateAll(II)V

    sput-boolean v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->velocityCheck:Z

    sput-boolean v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mOriginSide:Z

    sput-boolean v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAreaChanged:Z

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->start()V

    return-void

    :cond_1
    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    sput v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v4, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    invoke-static {v1, v4}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateAll(II)V

    sput-boolean v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->velocityCheck:Z

    sput-boolean v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mOriginSide:Z

    sput-boolean v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAreaChanged:Z

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->start()V

    return-void

    :cond_2
    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v3, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static start()V
    .locals 4

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->quickSlide()V

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->initial()V

    sget v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mOriginSide:Z

    sput-boolean v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAreaChanged:Z

    sput-boolean v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->velocityCheck:Z

    sput v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->start()V

    return-void

    :cond_0
    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v3, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    sput-boolean v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mOriginSide:Z

    sput-boolean v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAreaChanged:Z

    sput-boolean v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->velocityCheck:Z

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->start()V

    return-void

    :cond_1
    sget v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateTop(II)V

    sget v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateBottom(II)V

    sget-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAreaChanged:Z

    if-nez v0, :cond_6

    sget v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->PARKING_LINE:I

    if-lt v0, v1, :cond_5

    sget v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->PARKING_LINE_RIGHT:I

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mOriginSide:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    if-le v0, v1, :cond_3

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    sget-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mOriginSide:Z

    if-nez v0, :cond_4

    sget v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    if-ge v0, v1, :cond_4

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    sget-wide v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    :goto_0
    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_6
    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static stop()V
    .locals 4

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationTransparent;->stop()V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Turning:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Turning:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mTimeOut:Z

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4PosCheck:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4PosCheck:Ljava/lang/Runnable;

    sget-wide v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mVelocityTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static turning()V
    .locals 4

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->handler4Turning:Landroid/os/Handler;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->runnable4Turning:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateAll(II)V
    .locals 2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    if-le p0, v0, :cond_1

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sub-int p0, v0, v1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    invoke-virtual {v0, p0, p1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->update(II)V

    sput p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->baseX:I

    sput p1, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->baseY:I

    sget-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mOriginSide:Z

    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateAllLeft(II)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateAllRight(II)V

    :goto_0
    return-void
.end method

.method private static updateAllLeft(II)V
    .locals 3

    invoke-static {p0}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->showOrHide(I)V

    invoke-static {p0, p1}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->posCalculateLeftX(II)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentX:I

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentY:I

    invoke-virtual {v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->update(II)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeX:I

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeY:I

    invoke-virtual {v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->update(II)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuX:I

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuY:I

    invoke-virtual {v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->update(II)V

    return-void
.end method

.method private static updateAllRight(II)V
    .locals 3

    invoke-static {p0}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->showOrHide(I)V

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE_RIGHT:I

    if-lt p0, v0, :cond_0

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    add-int/2addr v0, p0

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentX:I

    sput p1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentY:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    add-int/2addr v0, p0

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeX:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeY:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    add-int/2addr v0, p0

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuX:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuY:I

    goto/16 :goto_0

    :cond_0
    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    if-le p0, v0, :cond_1

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    add-int/2addr v0, p0

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentX:I

    sput p1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentY:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeX:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeY:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuX:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuY:I

    goto/16 :goto_0

    :cond_1
    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->SHRINK_LINE:I

    sub-int/2addr v0, v1

    if-le p0, v0, :cond_2

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    add-int/2addr v0, p0

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentX:I

    sput p1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentY:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeX:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeY:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuX:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuY:I

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mOriginSide:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mAreaChanged:Z

    sput p0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentX:I

    sput p1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentY:I

    sput p0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeX:I

    sput p1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeY:I

    sput p0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuX:I

    sput p1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuY:I

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->hideSub()V

    :cond_3
    :goto_0
    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentX:I

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->recentY:I

    invoke-virtual {v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->update(II)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeX:I

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->homeY:I

    invoke-virtual {v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->update(II)V

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;

    sget v1, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuX:I

    sget v2, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->menuY:I

    invoke-virtual {v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->update(II)V

    return-void
.end method

.method private static updateBottom(II)V
    .locals 2

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->BOTTOM_LINE:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mOriginSide:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->PARKING_LINE:I

    if-lt p0, v0, :cond_2

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    if-gt p0, v0, :cond_2

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->BOTTOM_LINE:I

    sput p0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    invoke-static {p0, v0}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateAll(II)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->PARKING_LINE:I

    sub-int/2addr v0, v1

    if-gt p0, v0, :cond_2

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    if-le p0, v0, :cond_2

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->BOTTOM_LINE:I

    sput p0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    invoke-static {p0, v0}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateAll(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static updateTop(II)V
    .locals 4

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    int-to-double v0, v0

    const-wide v2, 0x3fe69fbe76c8b439L    # 0.707

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->mOriginSide:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->PARKING_LINE:I

    if-lt p0, v0, :cond_2

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    if-gt p0, v0, :cond_2

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sput p0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    invoke-static {p0, v0}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateAll(II)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->PARKING_LINE:I

    sub-int/2addr v0, v1

    if-gt p0, v0, :cond_2

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    if-le p0, v0, :cond_2

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sput p0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseX:I

    sput v0, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->baseY:I

    invoke-static {p0, v0}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->updateAll(II)V

    :cond_2
    :goto_0
    return-void
.end method
