.class public Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;
.super Ljava/lang/Object;
.source "MultiWindowGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$BypassMotionEventInjector;,
        Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBypassEventInjector:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$BypassMotionEventInjector;

.field private final mContext:Landroid/content/Context;

.field final mController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

.field private mGestureDetectionView:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

.field private mHandler:Landroid/os/Handler;

.field private mIsGestureDetectionViewTouchable:Z

.field private final mNotSupportedReason:[I

.field private mRestoreEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAppDock:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->DEBUG:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mNotSupportedReason:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->restoreTouchData()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->isGestureDetectionDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->reset()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mGestureDetectionView:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->onGathering(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;Landroid/view/MotionEvent;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->bypassEvent(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mShowAppDock:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bypassEvent(Landroid/view/MotionEvent;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$78AJGk3nEWDtoGO-I2TtGmSIh-g;

    invoke-direct {v2, p0, p2, v0}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$78AJGk3nEWDtoGO-I2TtGmSIh-g;-><init>(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;ZLandroid/view/MotionEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->restoreTouchData()V

    return-void
.end method

.method private isGestureDetectionDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mIsGestureDetectionViewTouchable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mGestureDetectionView:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mGestureDetectionView:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->getWindowFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->isUnFolding()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$bypassEvent$1(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;ZLandroid/view/MotionEvent;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const-string v0, "MultiWindowGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bypassEvent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$onGathering$2(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "MultiWindowGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGathering - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$reset$3(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)V
    .locals 2

    const-string v0, "MultiWindowGestureDetector"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static synthetic lambda$restoreTouchData$0(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "MultiWindowGestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreTouchData - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mBypassEventInjector:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$BypassMotionEventInjector;

    invoke-virtual {v2, v1}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$BypassMotionEventInjector;->byPassRawEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private onGathering(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$5QD1qErJookZAdegYOZtPJU2pEo;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$5QD1qErJookZAdegYOZtPJU2pEo;-><init>(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private reset()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$o4EM3u3G1oZiekpx6oAmetgpwCQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$o4EM3u3G1oZiekpx6oAmetgpwCQ;-><init>(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private restoreTouchData()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$XYBgMhSvAJc0aSVh7D7RfZEKA3U;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$XYBgMhSvAJc0aSVh7D7RfZEKA3U;-><init>(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
