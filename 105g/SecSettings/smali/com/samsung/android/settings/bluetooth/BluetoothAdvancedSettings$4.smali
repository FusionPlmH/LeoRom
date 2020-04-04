.class Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "BluetoothAdvancedSettings"

    const-string v2, "onReceive :: Intent.getAction() is return null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "BluetoothAdvancedSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive :: getAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.bluetooth.a2dp.intent.action.AVRCP_CONNECTED_WITH_AVC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->access$400(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->access$400(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    :cond_2
    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->access$000(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->access$500(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->access$600(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothAdvancedSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive :: changed package installation status :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.google.android.projection.gearhead"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->access$400(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    :cond_6
    nop

    :cond_7
    :goto_1
    return-void
.end method
