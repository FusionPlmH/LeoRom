.class Lcom/android/settings/fingerprint/FingerprintProgressEffectView$1;
.super Ljava/lang/Object;
.source "FingerprintProgressEffectView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->showExpendGuideVI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintProgressEffectView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->access$000(Lcom/android/settings/fingerprint/FingerprintProgressEffectView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->access$100(Lcom/android/settings/fingerprint/FingerprintProgressEffectView;)Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    move-result-object v0

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setPercent(F)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    const/16 v1, 0x50

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->showEnrollGuideVI(IZ)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
