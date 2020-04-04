.class Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;
.super Landroid/os/Handler;
.source "BluetoothStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "BluetoothStatusReceiver"

    const-string v1, "mHandler :: DEVICE_CONNECTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->access$100(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->access$100(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "BluetoothStatusReceiver"

    const-string v1, "mHandler :: cachedBluetoothDevice is not setted."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v0, "BluetoothStatusReceiver"

    const-string v1, "mHandler :: LAUNCH_SCAN_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.bluetooth.scandialog.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->access$000(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BluetoothStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
