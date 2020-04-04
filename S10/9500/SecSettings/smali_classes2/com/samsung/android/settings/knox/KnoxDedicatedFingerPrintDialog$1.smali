.class Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;
.super Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;
.source "KnoxDedicatedFingerPrintDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-direct {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    const-string v0, "KnoxDedicatedFingerPrintDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationError = errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , errString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$000(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    const-string v0, "KnoxDedicatedFingerPrintDialog"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$102(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$200(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$200(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1211a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$000(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2

    const-string v0, "KnoxDedicatedFingerPrintDialog"

    const-string v1, "onAuthenticationHelp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$000(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    :cond_0
    const-string v1, "KnoxDedicatedFingerPrintDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsCheckAdded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$300(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$300(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Z

    move-result v1

    const v2, 0x7f1211a7

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$400(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-ne v0, v4, :cond_1

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v4, v2}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$500(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v4}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$600(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$700(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$200(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$200(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$000(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$800(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)I

    move-result v1

    if-eq v0, v1, :cond_5

    const-string v1, "KnoxDedicatedFingerPrintDialog"

    const-string v3, "onAuthenticationFailed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$102(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$200(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->vibrateForFingerprintError(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$700(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$200(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$200(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$000(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const-string v1, "KnoxDedicatedFingerPrintDialog"

    const-string v2, "onAuthenticationSucceded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog$1;->this$0:Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;->access$600(Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;)V

    :cond_6
    :goto_2
    return-void
.end method
