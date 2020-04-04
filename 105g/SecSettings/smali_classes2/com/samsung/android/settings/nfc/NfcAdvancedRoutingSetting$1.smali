.class Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcAdvancedRoutingSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->access$000(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Lcom/android/settings/SettingsActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->access$000(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Lcom/android/settings/SettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->access$000(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Lcom/android/settings/SettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method
