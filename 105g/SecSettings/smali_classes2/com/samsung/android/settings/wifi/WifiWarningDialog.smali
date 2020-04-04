.class public Lcom/samsung/android/settings/wifi/WifiWarningDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field private mDialogIntent:Landroid/content/Intent;

.field private mDialogType:Ljava/lang/String;

.field private mFinishThis:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mFinishThis:Z

    return-void
.end method

.method private collapseSystemUi()V
    .locals 1

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method

.method private updateUi()V
    .locals 9

    const-string v0, "wlan_enable_warning"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f120517

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogIntent:Landroid/content/Intent;

    const-string v6, "dialog_name"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v7, 0x7f121fe6

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v7, 0x7f121fe8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v4

    const-string v4, "WLAN"

    aput-object v4, v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v3, v2, v5, v5, v5}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v3, -0x2

    invoke-virtual {v2, v3, v5, v5, v5}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x7f120510

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_1

    :cond_0
    const-string v0, "sim_removed_warning"

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sim_removed_warning_when_connected"

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogIntent:Landroid/content/Intent;

    const-string v6, "dialog_name"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v6, "Verizon"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v7, 0x7f121bf9

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    :cond_2
    const-string v6, "sim_removed_warning"

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v7, 0x7f121bfa    # 1.9421255E38f

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v7, v3}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v7, 0x7f121bf8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v7, v3}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v3, v2, v5, v5, v5}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->setupAlert()V

    return-void
.end method

.method private wifiWarningDialogPressCancel()V
    .locals 3

    const-string v0, "WifiWarningDialog"

    const-string v1, "wifiWarningDialogPressCancel. Send Broadcast: WIFI_DIALOG_CANCEL_ACTION"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->finish()V

    return-void
.end method

.method private wifiWarningDialogPressOK()V
    .locals 5

    const-string v0, "WifiWarningDialog"

    const-string v1, "wifiWarningDialogPressOK"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogIntent:Landroid/content/Intent;

    const-string v2, "dialog_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x46

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "applabel"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->finish()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "wlan_enable_warning"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->wifiWarningDialogPressOK()V

    goto :goto_0

    :cond_0
    const-string v0, "sim_removed_warning"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sim_removed_warning_when_connected"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "WifiWarningDialog"

    const-string v1, "SimRemovedDialog press OK"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->finish()V

    goto :goto_0

    :pswitch_1
    const-string v0, "wlan_enable_warning"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->wifiWarningDialogPressCancel()V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "WifiWarningDialog"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogIntent:Landroid/content/Intent;

    const-string v1, "dialog_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogType:Ljava/lang/String;

    const-string v0, "WifiWarningDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "wlan_enable_warning"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sim_removed_warning"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sim_removed_warning_when_connected"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WifiWarningDialog"

    const-string v1, "invalid dialog type, finish"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->finish()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->collapseSystemUi()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->updateUi()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mFinishThis:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiWarningDialog"

    const-string v2, "IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
