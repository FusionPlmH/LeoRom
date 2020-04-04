.class Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager$1;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager$1;->this$0:Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBroadCastReceive [DQA]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x71875fee

    if-eq v1, v2, :cond_2

    const v2, 0x2f94f923

    if-eq v1, v2, :cond_1

    const v2, 0x741706da

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager$1;->this$0:Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->save()V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager$1;->this$0:Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->send()V

    goto :goto_2

    :pswitch_2
    nop

    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
