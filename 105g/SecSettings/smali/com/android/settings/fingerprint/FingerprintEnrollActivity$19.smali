.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$19;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showSensorErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$19;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string/jumbo v1, "showSensorErrorDialog dismiss!!"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "enrollResult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$19;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$19;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$19;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    return-void
.end method
