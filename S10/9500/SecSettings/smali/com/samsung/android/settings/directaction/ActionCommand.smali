.class public Lcom/samsung/android/settings/directaction/ActionCommand;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTaskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/settings/directaction/ActionCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mTaskId:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getNewValue(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->TAG:Ljava/lang/String;

    const-string v1, "Bundle is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/directaction/ActionCommand;->isOnOff(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "onoff"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/directaction/ActionCommand;->isFontSize(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "fontSize"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/directaction/ActionCommand;->isKeyWord(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "keyword"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/directaction/ActionCommand;->isMode(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/directaction/ActionCommand;->isTime(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/directaction/ActionCommand;->isScreenResolution(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "resolution"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/directaction/ActionCommand;->isWhiteBalance(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "whiteBalance"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/directaction/ActionCommand;->isScreenZoom(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "screenZoom"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/directaction/ActionCommand;->isMuteDuration(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "muteDuration"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private isFontSize(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isKeyWord(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "keyword"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMode(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMuteDuration(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "muteDuration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isOnOff(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "onoff"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isScreenResolution(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isScreenZoom(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "screenZoom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTime(Landroid/os/Bundle;)Z
    .locals 1

    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isWhiteBalance(Landroid/os/Bundle;)Z
    .locals 1

    const-string/jumbo v0, "whiteBalance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private parseChangeAction(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/directaction/ActionCommand;->getNewValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "nfc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "screen_zoom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "screen_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "font_style"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_4
    const-string/jumbo v2, "white_balance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_5
    const-string v2, "font_size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    goto :goto_2

    :pswitch_1
    goto :goto_2

    :pswitch_2
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/ScreenZoomAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/ScreenZoomAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/actions/ScreenZoomAction;->doChangeAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_2

    :pswitch_3
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/WhiteBalanceAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/WhiteBalanceAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/actions/WhiteBalanceAction;->doChangeAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_2

    :pswitch_4
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/NfcAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/NfcAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/actions/NfcAction;->doChangeAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_2

    :pswitch_5
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/FontAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/FontAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/actions/FontAction;->doChangeAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    nop

    :goto_2
    return-object v1

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5bc91a0f -> :sswitch_5
        -0x4680573a -> :sswitch_4
        -0x1d552a3f -> :sswitch_3
        -0x2946a6a -> :sswitch_2
        -0x28e803a -> :sswitch_1
        0x1a9ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseConnectAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2412ea58

    if-eq v1, v2, :cond_1

    const v2, 0x755ac2ae

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "wifiSettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->doConnectAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/WifiSettingsAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/WifiSettingsAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/WifiSettingsAction;->connect()Ljava/lang/String;

    move-result-object v0

    nop

    :goto_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseDisableAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x285a60ae

    if-eq v1, v2, :cond_1

    const v2, 0x2412ea58

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "wifiSettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "airplane"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/Airplane;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mTaskId:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/bixby/actions/Airplane;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    const-string v2, "false"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/actions/Airplane;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/WifiSettingsAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/WifiSettingsAction;-><init>(Landroid/content/Context;)V

    const-string v2, "disable"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/actions/WifiSettingsAction;->setEnabled(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseEnableAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x285a60ae

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "airplane"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/Airplane;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mTaskId:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/bixby/actions/Airplane;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/actions/Airplane;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private parseGetAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "smart_capture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "easy_mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "finger_sensor_gesture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1d

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "face_recognition"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "dual_messenger"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "hotspot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "factory_data_reset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "screen_timeout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v1, "swipe_to_call_or_send_message"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "direct_share"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "auto_brightness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "blue_light"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v1, "video_enhancer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "send_sos_message"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x24

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "navigation_bar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x23

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v1, "swipe_to_capture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "hard_press"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x21

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "iris"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "nfc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "screen_zoom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "screen_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x25

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v1, "smart_alert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "reset_settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "pin_windows"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v1, "temporary_mute_duration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_1a
    const-string v1, "screen_resolution"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_1b
    const-string v1, "account"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1f

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v1, "white_balance"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_1d
    const-string v1, "onehand_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    goto :goto_1

    :sswitch_1e
    const-string v1, "full_screen_apps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x22

    goto :goto_1

    :sswitch_1f
    const-string v1, "screen_saver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_20
    const-string v1, "night_theme"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_21
    const-string v1, "font_size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_22
    const-string v1, "direct_call"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    goto :goto_1

    :sswitch_23
    const-string v1, "finger_prints"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_24
    const-string v1, "reset_all_settings_to_default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto :goto_1

    :sswitch_25
    const-string v1, "do_not_disturb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/ScreenModeAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/ScreenModeAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/ScreenModeAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_1
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/SendSOSMessageAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/SendSOSMessageAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/SendSOSMessageAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_2
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/NavigationBarAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/NavigationBarAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/NavigationBarAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_3
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/FullScreenAppsAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/FullScreenAppsAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/FullScreenAppsAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/HardPressAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/HardPressAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/HardPressAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_5
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/DirectShareAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/DirectShareAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/DirectShareAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_6
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/AccountAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/AccountAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/AccountAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_7
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/OneHandModeAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/OneHandModeAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/OneHandModeAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_8
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/FingerSensorGestureAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/FingerSensorGestureAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/FingerSensorGestureAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_9
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/SmartCaptureAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/SmartCaptureAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/SmartCaptureAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_a
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/SwipeToCaptureAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/SwipeToCaptureAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/SwipeToCaptureAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_b
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/DirectCallAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/DirectCallAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/DirectCallAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_c
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/SmartAlertAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/SmartAlertAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/SmartAlertAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_d
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/EasyMuteAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/EasyMuteAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/EasyMuteAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_e
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/DualMessengerAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/DualMessengerAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/DualMessengerAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_f
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/SwipeToCallOrSendMessageAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/SwipeToCallOrSendMessageAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/SwipeToCallOrSendMessageAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_10
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/VideoEnhancerAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/VideoEnhancerAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/VideoEnhancerAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_11
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/ResetAllSettingsToDefaultAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/ResetAllSettingsToDefaultAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/ResetAllSettingsToDefaultAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_12
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/FactoryDataResetAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/FactoryDataResetAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/FactoryDataResetAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_13
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/ResetSettingsAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/ResetSettingsAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/ResetSettingsAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_14
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/IrisAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/IrisAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/IrisAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_15
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/FaceRecognitionAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/FaceRecognitionAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/FaceRecognitionAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_16
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/FingerPrintsAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/FingerPrintsAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/FingerPrintsAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_17
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/MuteDurationAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/MuteDurationAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/MuteDurationAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_18
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/ScreenZoomAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/ScreenZoomAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/ScreenZoomAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_19
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/WhiteBalanceAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/WhiteBalanceAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/WhiteBalanceAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_1a
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/ScreenResolutionAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/ScreenResolutionAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/ScreenResolutionAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_1b
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/ScreenSaver;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/ScreenSaver;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/ScreenSaver;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_1c
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/PinWindows;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/PinWindows;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/PinWindows;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1d
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/NightTheme;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/NightTheme;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/NightTheme;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1e
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/ScreenTimeoutAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/ScreenTimeoutAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/ScreenTimeoutAction;->getScreenTimeoutList()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1f
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/AutoBrightnessAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/AutoBrightnessAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/AutoBrightnessAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_20
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/BlueLightAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/BlueLightAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/BlueLightAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_21
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/FontAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/FontAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/FontAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_22
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_23
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/HotspotAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/HotspotAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/HotspotAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_24
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/NfcAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/NfcAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/NfcAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_25
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->doGetAction()Ljava/lang/String;

    move-result-object v0

    nop

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a4b3121 -> :sswitch_25
        -0x641a9875 -> :sswitch_24
        -0x63d0db04 -> :sswitch_23
        -0x61d65f0c -> :sswitch_22
        -0x5bc91a0f -> :sswitch_21
        -0x5796351e -> :sswitch_20
        -0x4faa6efe -> :sswitch_1f
        -0x4d6fb74b -> :sswitch_1e
        -0x4b9bbc33 -> :sswitch_1d
        -0x4680573a -> :sswitch_1c
        -0x462c75d3 -> :sswitch_1b
        -0x1e8c2da1 -> :sswitch_1a
        -0x1e6b1874 -> :sswitch_19
        -0x176b6a27 -> :sswitch_18
        -0x1253a6ed -> :sswitch_17
        -0x9d1b89a -> :sswitch_16
        -0x2946a6a -> :sswitch_15
        -0x28e803a -> :sswitch_14
        0x1a9ab -> :sswitch_13
        0x317413 -> :sswitch_12
        0x752bef -> :sswitch_11
        0x936ffa7 -> :sswitch_10
        0xa378b68 -> :sswitch_f
        0xa4bff28 -> :sswitch_e
        0xe9b8ac8 -> :sswitch_d
        0x11fa9cf1 -> :sswitch_c
        0x176690e1 -> :sswitch_b
        0x27eefc09 -> :sswitch_a
        0x300b348a -> :sswitch_9
        0x3343888e -> :sswitch_8
        0x3f2082cf -> :sswitch_7
        0x418a9ecf -> :sswitch_6
        0x48f78310 -> :sswitch_5
        0x53e410d5 -> :sswitch_4
        0x566c895a -> :sswitch_3
        0x72a6d836 -> :sswitch_2
        0x755ac2ae -> :sswitch_1
        0x7b5d2ad0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseGetEntryListAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4680573a

    if-eq v1, v2, :cond_2

    const v2, -0x1e8c2da1

    if-eq v1, v2, :cond_1

    const v2, -0x28e803a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "screen_zoom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const-string v1, "screen_resolution"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "white_balance"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/ScreenZoomAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/ScreenZoomAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/ScreenZoomAction;->doGetEntryListAction()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/WhiteBalanceAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/WhiteBalanceAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/WhiteBalanceAction;->doGetEntryListAction()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/ScreenResolutionAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/ScreenResolutionAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/ScreenResolutionAction;->doGetEntryListAction()Landroid/os/Bundle;

    move-result-object v0

    nop

    :goto_2
    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "hotspot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "wifidirect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "wifiSettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "nfc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/WifiP2pAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/WifiP2pAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/WifiP2pAction;->doGotoAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/HotspotAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/HotspotAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/HotspotAction;->doGotoAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/NfcAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/NfcAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/NfcAction;->doGotoAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_3
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->doGotoAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_4
    new-instance v1, Lcom/samsung/android/settings/bixby/actions/WifiSettingsAction;

    iget-object v2, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bixby/actions/WifiSettingsAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/actions/WifiSettingsAction;->startWifiSettings()Ljava/lang/String;

    move-result-object v0

    nop

    :goto_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a9ab -> :sswitch_4
        0x2412ea58 -> :sswitch_3
        0x24fce73e -> :sswitch_2
        0x418a9ecf -> :sswitch_1
        0x755ac2ae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseOpenAction(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/directaction/ActionCommand;->getNewValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x143bd146

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "user_manual"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/UserManualAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mTaskId:Ljava/lang/Integer;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/bixby/actions/UserManualAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/UserManualAction;->doOpenAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private parseSetAction(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/directaction/ActionCommand;->getNewValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "bluetooth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "hotspot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "screen_timeout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v2, "wifiSettings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "auto_brightness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_6
    const-string v2, "blue_light"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v2, "nfc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_8
    const-string/jumbo v2, "sound_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_9
    const-string v2, "pin_windows"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto :goto_1

    :sswitch_a
    const-string/jumbo v2, "temporary_mute_duration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto :goto_1

    :sswitch_b
    const-string v2, "screen_resolution"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto :goto_1

    :sswitch_c
    const-string v2, "screen_saver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_d
    const-string v2, "night_theme"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_e
    const-string v2, "do_not_disturb"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/ScreenResolutionAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/ScreenResolutionAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/ScreenResolutionAction;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_1
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/PinWindows;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/PinWindows;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/PinWindows;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_2
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/MuteDurationAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/MuteDurationAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/MuteDurationAction;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_3
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/ScreenSaver;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/ScreenSaver;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/ScreenSaver;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/Location;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/Location;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/Location;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_5
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/NightTheme;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/NightTheme;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/NightTheme;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_6
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/ScreenTimeoutAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/ScreenTimeoutAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/ScreenTimeoutAction;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_7
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/AutoBrightnessAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/AutoBrightnessAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/AutoBrightnessAction;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_8
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/BlueLightAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/BlueLightAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/BlueLightAction;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_9
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/SoundAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/SoundAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/SoundAction;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_a
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_b
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/HotspotAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/HotspotAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/HotspotAction;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_c
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/NfcAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/NfcAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/NfcAction;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_d
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/BluetoothAction;->doSetAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_e
    new-instance v2, Lcom/samsung/android/settings/bixby/actions/WifiSettingsAction;

    iget-object v3, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bixby/actions/WifiSettingsAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/actions/WifiSettingsAction;->setEnabled(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a4b3121 -> :sswitch_e
        -0x5796351e -> :sswitch_d
        -0x4faa6efe -> :sswitch_c
        -0x1e8c2da1 -> :sswitch_b
        -0x1e6b1874 -> :sswitch_a
        -0x176b6a27 -> :sswitch_9
        -0x146c852d -> :sswitch_8
        0x1a9ab -> :sswitch_7
        0x11fa9cf1 -> :sswitch_6
        0x176690e1 -> :sswitch_5
        0x2412ea58 -> :sswitch_4
        0x3343888e -> :sswitch_3
        0x418a9ecf -> :sswitch_2
        0x714f9fb5 -> :sswitch_1
        0x755ac2ae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo v0, "targetTaskId"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->mTaskId:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/directaction/ActionCommand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", arg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "disable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "get_entry_list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_2
    const-string v1, "connect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "open"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "goto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "get"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_7
    const-string v1, "enable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "change"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/directaction/ActionCommand;->parseGetEntryListAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/directaction/ActionCommand;->parseEnableAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/directaction/ActionCommand;->parseOpenAction(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/directaction/ActionCommand;->parseChangeAction(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/directaction/ActionCommand;->parseConnectAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/directaction/ActionCommand;->parseGotoAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/directaction/ActionCommand;->parseDisableAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/directaction/ActionCommand;->parseSetAction(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/directaction/ActionCommand;->parseGetAction(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5128ec50 -> :sswitch_8
        -0x4d6ada7d -> :sswitch_7
        0x18f56 -> :sswitch_6
        0x1bc62 -> :sswitch_5
        0x308163 -> :sswitch_4
        0x34264a -> :sswitch_3
        0x38b478ea -> :sswitch_2
        0x4222ccd4 -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
