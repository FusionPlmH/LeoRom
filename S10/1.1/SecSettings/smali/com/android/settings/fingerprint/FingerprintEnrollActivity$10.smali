.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$10;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showDuplicatedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

.field final synthetic val$alertView:Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$10;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$10;->val$alertView:Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$10;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->PAUSE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$10;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string/jumbo v1, "showDuplicatedDialog : Called Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$10;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semResumeEnroll()Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$10;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$102(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$10;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v1, 0xcc

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$10;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$10;->val$alertView:Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->clearAnimation()V

    return-void
.end method
