.class Lcom/android/server/fingerprint/EnrollClient$1;
.super Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;
.source "EnrollClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/EnrollClient;->start()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/EnrollClient;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/EnrollClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/EnrollClient$1;->this$0:Lcom/android/server/fingerprint/EnrollClient;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismissed(I)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/fingerprint/EnrollClient$1;->this$0:Lcom/android/server/fingerprint/EnrollClient;

    invoke-static {v1}, Lcom/android/server/fingerprint/EnrollClient;->access$000(Lcom/android/server/fingerprint/EnrollClient;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/EnrollClient$1;->this$0:Lcom/android/server/fingerprint/EnrollClient;

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/EnrollClient;->semDeliveryTouchEvent(Z)I

    iget-object v1, p0, Lcom/android/server/fingerprint/EnrollClient$1;->this$0:Lcom/android/server/fingerprint/EnrollClient;

    invoke-static {v1}, Lcom/android/server/fingerprint/EnrollClient;->access$100(Lcom/android/server/fingerprint/EnrollClient;)Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->handleSensorView(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/fingerprint/EnrollClient$1;->this$0:Lcom/android/server/fingerprint/EnrollClient;

    invoke-static {v1}, Lcom/android/server/fingerprint/EnrollClient;->access$000(Lcom/android/server/fingerprint/EnrollClient;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/fingerprint/EnrollClient$1;->this$0:Lcom/android/server/fingerprint/EnrollClient;

    invoke-static {v1}, Lcom/android/server/fingerprint/EnrollClient;->access$100(Lcom/android/server/fingerprint/EnrollClient;)Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->handleSensorView(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient$1;->this$0:Lcom/android/server/fingerprint/EnrollClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/EnrollClient;->semDeliveryTouchEvent(Z)I

    nop

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
