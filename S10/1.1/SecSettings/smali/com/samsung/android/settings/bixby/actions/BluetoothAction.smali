.class public Lcom/samsung/android/settings/bixby/actions/BluetoothAction;
.super Ljava/lang/Object;
.source "BluetoothAction.java"


# instance fields
.field private final BT_GET_ONOFF:Ljava/lang/String;

.field private final BT_GOTO:Ljava/lang/String;

.field private final BT_SET_ONOFF:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->TAG:Ljava/lang/String;

    const-string v0, "getOnOffBluetooth"

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->BT_GET_ONOFF:Ljava/lang/String;

    const-string/jumbo v0, "setOnOffBluetooth"

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->BT_SET_ONOFF:Ljava/lang/String;

    const-string v0, "gotoBluetoothSetting"

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->BT_GOTO:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public doConnectAction()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->gotoBluetoothSettings()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public doGetAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0
.end method

.method public doGotoAction()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->gotoBluetoothSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doSetAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetAction() :: newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    const-string v0, "already_on"

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "success"

    goto :goto_0

    :cond_1
    const-string v2, "fail"

    :goto_0
    move-object v0, v2

    goto :goto_2

    :cond_2
    const-string v2, "false"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_3

    const-string v0, "already_off"

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "fail"

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "success"

    :goto_1
    move-object v0, v2

    :cond_5
    :goto_2
    return-object v0
.end method

.method public gotoBluetoothSettings()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->TAG:Ljava/lang/String;

    const-string v1, "gotoBluetoothSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$BluetoothSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v2, "success"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->TAG:Ljava/lang/String;

    const-string v4, "ActivityNotFoundException :: Can not found BluetoothSettings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "not_supported_device"

    :goto_0
    return-object v0
.end method
