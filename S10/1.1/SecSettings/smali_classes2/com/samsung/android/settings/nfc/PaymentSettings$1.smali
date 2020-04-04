.class Lcom/samsung/android/settings/nfc/PaymentSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PaymentSettings"

    const-string v2, "-------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "PaymentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mReceiver.onReceive / action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "PaymentSettings"

    const-string v2, "-------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "com.android.nfc.cardemulation.UiccAccess.ACTION_RETRY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/PaymentSettings;->access$100(Lcom/samsung/android/settings/nfc/PaymentSettings;)Lcom/samsung/android/settings/nfc/PaymentBackend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->ActionRetry()V

    goto :goto_1

    :cond_3
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    :cond_6
    :goto_0
    goto :goto_1

    :cond_7
    const-string v1, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    goto :goto_1

    :cond_8
    const-string v1, "com.samsung.nfc.action.LMRT_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "lmrt_result"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/PaymentSettings;->showLmrtFullDialog()V

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/nfc/PaymentSettings;->restoreDefaultAppStatus(Z)Z

    :cond_a
    :goto_1
    return-void
.end method
