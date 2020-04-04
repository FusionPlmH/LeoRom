.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;
.super Ljava/lang/Thread;
.source "FingerprintEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiftFingerMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->sleep(J)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FpstFingerprintEnrollActivity"

    const-string v2, "LiftFingerMessage : Interrupted after start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-direct {v2, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1302(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->start()V

    goto :goto_0

    :cond_0
    const-string v1, "FpstFingerprintEnrollActivity"

    const-string v2, "LiftFingerMessage : Interrupted "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
