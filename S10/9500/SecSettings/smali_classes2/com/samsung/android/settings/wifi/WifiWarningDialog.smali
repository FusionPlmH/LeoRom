.class public Lcom/samsung/android/settings/wifi/WifiWarningDialog;
.super Landroid/app/Activity;
.source "WifiWarningDialog.java"


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field private mDialogIntent:Landroid/content/Intent;

.field private mFinishThis:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mFinishThis:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->finishThisActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->wifiWarningDialogPressCancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->wifiWarningDialogPressOK()V

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

.method private dismissDialog(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    nop

    const-string v1, "WifiWarningDialog"

    const-string v2, "IllegalArgumentException occurs"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method

.method private finishThisActivity()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->dismissDialog(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method private showEnableWarningDialog()V
    .locals 5

    const-string v0, "WifiWarningDialog"

    const-string v1, "showEnableWarningDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->dismissDialog(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->collapseSystemUi()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogIntent:Landroid/content/Intent;

    const-string v2, "dialog_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f121f62

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v0, "WLAN"

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const v0, 0x7f121f64

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiWarningDialog$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog$6;-><init>(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    const v3, 0x7f12050d

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiWarningDialog$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog$5;-><init>(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    const v3, 0x7f120506

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiWarningDialog$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog$4;-><init>(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiWarningDialog$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog$3;-><init>(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d8

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSimRemovedDialog(I)V
    .locals 5

    const-string v0, "WifiWarningDialog"

    const-string v1, "showSimRemovedDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->dismissDialog(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->collapseSystemUi()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogIntent:Landroid/content/Intent;

    const-string v2, "dialog_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    const-string v3, "Verizon"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f121b9a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f12050d

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiWarningDialog$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog$2;-><init>(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiWarningDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog$1;-><init>(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x7d8

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

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

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->finishThisActivity()V

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

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->finishThisActivity()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "WifiWarningDialog"

    const-string v1, "WifiWarningDialog.onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mDialogIntent:Landroid/content/Intent;

    const-string v2, "dialog_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiWarningDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "wlan_enable_warning"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->showEnableWarningDialog()V

    goto :goto_0

    :cond_0
    const-string v2, "sim_removed_warning"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f121b9b

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->showSimRemovedDialog(I)V

    goto :goto_0

    :cond_1
    const-string v2, "sim_removed_warning_when_connected"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f121b99

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->showSimRemovedDialog(I)V

    goto :goto_0

    :cond_2
    const-string v2, "WifiWarningDialog"

    const-string v3, "invalid dialog type, finish"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mFinishThis:Z

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->dismissDialog(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

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

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->setVisible(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->dismissDialog(Z)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
