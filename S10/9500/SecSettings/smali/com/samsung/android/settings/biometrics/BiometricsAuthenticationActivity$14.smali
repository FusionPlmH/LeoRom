.class Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;
.super Landroid/os/CountDownTimer;
.source "BiometricsAuthenticationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showRemainingTimeoutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$1500(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$1500(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$1502(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$1602(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$1700(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$1900(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getBiometricsBackupTypeDB(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$1100(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$1200(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$1300(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$1400(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    const-string v0, "BiometricsAuthenticationActivity"

    const-string v1, "onTick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$1700(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$1800(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$1700(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
