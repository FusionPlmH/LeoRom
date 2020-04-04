.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;
.super Landroid/os/AsyncTask;
.source "WifiSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckInternet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/NetworkInfo;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/NetworkInfo;)Ljava/lang/Integer;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1900(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const-string v2, "WifiSetupWizard"

    const-string v4, "doInBackground() : mContext is null !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$800(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v2

    const/4 v4, 0x0

    array-length v5, v1

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    aget-object v5, v1, v6

    if-eqz v5, :cond_1

    aget-object v5, v1, v6

    :cond_1
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1900(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/app/Activity;

    move-result-object v5

    const-string v7, "connectivity"

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    if-nez v5, :cond_2

    const-string v6, "WifiSetupWizard"

    const-string v7, "ConnectivityManager is unavailable."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    :cond_2
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    const/4 v10, 0x2

    const/16 v11, 0x18f

    const/16 v12, 0xc8

    const/16 v13, 0xcc

    if-ne v2, v7, :cond_6

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "WifiSetupWizard"

    const-string v14, "doInBackground  wifiNetwork.isConnected()"

    invoke-static {v7, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$2000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)I

    move-result v7

    const-string v14, "WifiSetupWizard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Captive Portal response : "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v7, v13, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    :cond_3
    if-eq v7, v13, :cond_4

    if-lt v7, v12, :cond_4

    if-gt v7, v11, :cond_4

    const/4 v2, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    :cond_4
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    :cond_5
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "WifiSetupWizard"

    const-string v7, "doInBackground  mobileNetwork.isConnectedOrConnecting()"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    :cond_7
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$2000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)I

    move-result v3

    const-string v7, "WifiSetupWizard"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Captive Portal response : activeNetwork, httpResponseCode :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v3, v13, :cond_8

    if-lt v3, v12, :cond_8

    if-gt v3, v11, :cond_8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_9
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/net/NetworkInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->doInBackground([Landroid/net/NetworkInfo;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1900(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isCheckingOnGoing:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1900(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
