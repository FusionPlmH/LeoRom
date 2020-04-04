.class Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;
.super Lcom/android/systemui/fingerprint/SemBaseView;
.source "SemFingerprintMaskViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlphaMaskLayer"
.end annotation


# instance fields
.field private mDisplayBrightnessListener:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;

.field private mOnBrightnessListener:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$OnBrightnessListener;

.field final synthetic this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;Landroid/os/IBinder;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$700(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/systemui/fingerprint/SemBaseView;-><init>(Landroid/content/Context;Landroid/os/IBinder;Landroid/view/WindowManager;)V

    return-void
.end method

.method public static synthetic lambda$show$0(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->updateAlphaMask(I)V

    return-void
.end method

.method private updateAlphaMask(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAlphaMask: called with: b = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1, p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1200(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mDisplayBrightnessListener:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mDisplayBrightnessListener:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->observe(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mDisplayBrightnessListener:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/fingerprint/SemBaseView;->dismiss()V

    return-void
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0xa3b

    const v4, 0x8000518

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const-string v1, "FP Maskview"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public loadResource()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mView:Landroid/view/View;

    const/16 v1, 0x1404

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1200(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$800(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mView:Landroid/view/View;

    const/high16 v1, 0x1200000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/fingerprint/SemBaseView;->show()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mDisplayBrightnessListener:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$AlphaMaskLayer$YN5W-hp4Iilzr-ieFL-jEl7vwYE;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$AlphaMaskLayer$YN5W-hp4Iilzr-ieFL-jEl7vwYE;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mOnBrightnessListener:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$OnBrightnessListener;

    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mOnBrightnessListener:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$OnBrightnessListener;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;-><init>(Landroid/content/Context;Lcom/android/systemui/fingerprint/FingerprintDialogImpl$OnBrightnessListener;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mDisplayBrightnessListener:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->mDisplayBrightnessListener:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->observe(Z)V

    :cond_0
    return-void
.end method
