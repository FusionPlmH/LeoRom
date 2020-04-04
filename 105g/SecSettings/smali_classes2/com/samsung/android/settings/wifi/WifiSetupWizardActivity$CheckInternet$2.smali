.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$2;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;

.field final synthetic val$result:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$2;->val$result:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1900(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f121e83

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$2;->val$result:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1900(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f121df3

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->enforceConnectivity()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isCheckingOnGoing:Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v3, v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1800(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;ZZLjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
