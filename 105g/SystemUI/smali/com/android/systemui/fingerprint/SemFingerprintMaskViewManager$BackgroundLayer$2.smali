.class Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$2;
.super Ljava/lang/Object;
.source "SemFingerprintMaskViewManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->loadResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$2;->this$1:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onWindowFocusChanged$0(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$2;->this$1:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->dismiss()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$2;->this$1:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWindowFocusChanged: No focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$2;->this$1:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$2;->this$1:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    iget-object v2, v2, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1700(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$2;->this$1:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$BackgroundLayer$2$HeE6eEDatn5nkN9s6qc0h6oaA2g;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$BackgroundLayer$2$HeE6eEDatn5nkN9s6qc0h6oaA2g;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
