.class public Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothEnablingActivity.java"


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mRegistered:Z

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private showEnablingDialog()V
    .locals 3

    const-string v0, "BluetoothEnablingActivity"

    const-string/jumbo v1, "showEnablingDialog ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0143

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    const v2, 0x7f1207f6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    const v2, 0x7f0a0612

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1207f5

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string v0, "BluetoothEnablingActivity"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->finish()V

    return-void

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mRegistered:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->showEnablingDialog()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    const-string v0, "BluetoothEnablingActivity"

    const-string v1, "onDestroy ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "BluetoothEnablingActivity"

    const-string v1, "onKeyDown() called; Key: back key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
