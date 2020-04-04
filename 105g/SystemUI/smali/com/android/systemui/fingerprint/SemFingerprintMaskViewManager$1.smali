.class Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;
.super Ljava/lang/Object;
.source "SemFingerprintMaskViewManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updaterClientInfo(Landroid/os/Bundle;IZLandroid/hardware/biometrics/IBiometricPromptReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$000(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$100(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$200(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    sget-boolean v2, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$300(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDisplayState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$400(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$400(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$400(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$102(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$500(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
