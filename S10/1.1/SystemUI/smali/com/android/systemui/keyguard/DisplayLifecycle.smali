.class public Lcom/android/systemui/keyguard/DisplayLifecycle;
.super Lcom/android/systemui/keyguard/Lifecycle;
.source "DisplayLifecycle.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/keyguard/Lifecycle<",
        "Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDisplayHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayMetricsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayRealSizeHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplaySizeHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFolderOpened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/keyguard/Lifecycle;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    new-instance v0, Lcom/android/systemui/keyguard/DisplayLifecycle$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$1;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-object p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatchDisplayAdded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatchDisplayRemoved(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatchDisplayChanged(I)V

    return-void
.end method

.method private addDisplay(I)V
    .locals 3

    sget-object v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDisplay id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateCacheVariables(I)V

    return-void

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    const-string v2, "addDisplay return - display is null or id is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dispatchDisplayAdded(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$JDzg2f_V3TcmuDcQHStUWidJuN0;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$JDzg2f_V3TcmuDcQHStUWidJuN0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private dispatchDisplayChanged(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateDisplay(I)V

    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$YI2YkSdft3g6BGmJyV8S9jQ188E;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$YI2YkSdft3g6BGmJyV8S9jQ188E;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private dispatchDisplayRemoved(I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$pHBATUygzshxG3LZ2EGkbjaJxSI;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$pHBATUygzshxG3LZ2EGkbjaJxSI;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->removeDisplay(I)V

    return-void
.end method

.method private dispatchFolderStateChanged(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchFolderStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateCacheVariables(I)V

    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$F5X1nrllIKa1hKRWGSfWgHTCbtg;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$F5X1nrllIKa1hKRWGSfWgHTCbtg;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$dispatchDisplayAdded$0(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;->onDisplayAdded(I)V

    return-void
.end method

.method static synthetic lambda$dispatchDisplayChanged$1(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;->onDisplayChanged(I)V

    return-void
.end method

.method static synthetic lambda$dispatchDisplayRemoved$2(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;->onDisplayRemoved(I)V

    return-void
.end method

.method static synthetic lambda$dispatchFolderStateChanged$3(ZLcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;->onFolderStateChanged(Z)V

    return-void
.end method

.method static synthetic lambda$dump$4(Ljava/io/PrintWriter;Landroid/view/Display;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$hOu5EpideKFxvp13MOGmN5nhzUA(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private removeDisplay(I)V
    .locals 3

    sget-object v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDisplay id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateCacheVariables(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    if-nez v1, :cond_1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    if-nez v2, :cond_2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    move-object v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/DisplayMetrics;

    if-nez v3, :cond_3

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v3, v4

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v4, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCacheVariables id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", display = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", realSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDisplay(I)V
    .locals 3

    sget-object v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDisplay id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateDisplay return - display is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateCacheVariables(I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "DisplayLifecycle:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$hOu5EpideKFxvp13MOGmN5nhzUA;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$hOu5EpideKFxvp13MOGmN5nhzUA;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$1vUhABt7fEV_i358Gr7cxgqgNYk;

    invoke-direct {v1, p2}, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$1vUhABt7fEV_i358Gr7cxgqgNYk;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/Display;

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    const-string v2, "getDisplay() is null, get directly from DisplayManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getRealSize()Landroid/graphics/Point;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getRealSize(I)Landroid/graphics/Point;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRealSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is null, return empty Point"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public setFolderState(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatchFolderStateChanged(Z)V

    return-void
.end method
