.class Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->showErrorDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

.field final synthetic val$Route:Ljava/lang/String;

.field final synthetic val$route_gsim_no:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$Route:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$route_gsim_no:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->access$100(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/cardemulation/CardEmulation;->disableAutoRouting()Z

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->access$200(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$Route:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->setDefaultRoutingDestination(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$Route:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->access$302(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe4a

    iget v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$route_gsim_no:I

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
