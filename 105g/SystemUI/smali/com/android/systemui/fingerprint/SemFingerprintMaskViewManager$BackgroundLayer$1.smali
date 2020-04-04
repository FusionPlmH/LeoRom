.class Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$1;
.super Ljava/lang/Object;
.source "SemFingerprintMaskViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$1;->this$1:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onClick$0(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$1;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$1;->this$1:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->dismiss()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$1;->this$1:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$1;->this$1:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1700(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$1;->this$1:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$BackgroundLayer$1$iU3DlnwahnwGLgKf3wXMbIc46oI;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$BackgroundLayer$1$iU3DlnwahnwGLgKf3wXMbIc46oI;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
