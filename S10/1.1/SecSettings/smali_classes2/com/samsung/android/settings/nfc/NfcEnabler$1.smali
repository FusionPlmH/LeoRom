.class Lcom/samsung/android/settings/nfc/NfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    const-string v3, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->access$000(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->access$100(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->access$100(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->access$202(Lcom/samsung/android/settings/nfc/NfcEnabler;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->access$300(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->access$000(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->access$100(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    goto :goto_0

    :cond_3
    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->access$202(Lcom/samsung/android/settings/nfc/NfcEnabler;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->access$300(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->access$000(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->access$100(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    :cond_4
    :goto_0
    return-void
.end method
