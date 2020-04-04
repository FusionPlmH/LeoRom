.class Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->makeAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

.field final synthetic val$ROUTE:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$ROUTE:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    const-string v0, "NfcAdvancedRoutingSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$ROUTE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->access$200(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/cardemulation/CardEmulation;->disableAutoRouting()Z

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->access$300(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$ROUTE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->setDefaultRoutingDestination(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe4a

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$ROUTE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getGsimItemNo(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NfcAdvancedRoutingSetting"

    const-string v2, "Exception occurred - setDefaultRoutingDestination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
