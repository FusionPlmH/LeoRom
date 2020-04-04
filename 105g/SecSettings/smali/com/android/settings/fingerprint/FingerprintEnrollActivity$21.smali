.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;
.super Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;
.source "FingerprintEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity;
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-direct {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4

    const-string v0, "FpstFingerprintEnrollActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "(errMsgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v1, 0x65

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21$2;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const v2, 0x7f12094e

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    const-string v0, "FpstFingerprintEnrollActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "(helpMsgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;)V
    .locals 4

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const v2, 0x7f120a16

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
