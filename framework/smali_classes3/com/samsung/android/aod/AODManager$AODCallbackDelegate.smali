.class Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
.super Lcom/samsung/android/aod/IAODCallback$Stub;
.source "AODManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/AODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AODCallbackDelegate"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/android/aod/AODListener;

.field final synthetic this$0:Lcom/samsung/android/aod/AODManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/aod/AODManager;Lcom/samsung/android/aod/AODListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->this$0:Lcom/samsung/android/aod/AODManager;

    invoke-direct {p0}, Lcom/samsung/android/aod/IAODCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mListener:Lcom/samsung/android/aod/AODListener;

    new-instance v0, Landroid/os/Handler;

    iget-object p1, p1, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$onScreenTurningOn$0(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mListener:Lcom/samsung/android/aod/AODListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mListener:Lcom/samsung/android/aod/AODListener;

    invoke-interface {v0}, Lcom/samsung/android/aod/AODListener;->onScreenTurningOn()V

    :cond_0
    return-void
.end method


# virtual methods
.method getListener()Lcom/samsung/android/aod/AODListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mListener:Lcom/samsung/android/aod/AODListener;

    return-object v0
.end method

.method public onScreenTurningOn()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/aod/-$$Lambda$AODManager$AODCallbackDelegate$W46fbpeX7ztB942mPdygC6rzXCo;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/-$$Lambda$AODManager$AODCallbackDelegate$W46fbpeX7ztB942mPdygC6rzXCo;-><init>(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
