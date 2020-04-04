.class Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;
.super Landroid/os/Handler;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$1000(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$1100(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->startScanning()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$1200(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$1300(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$1402(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;Z)Z

    :goto_1
    return-void
.end method
