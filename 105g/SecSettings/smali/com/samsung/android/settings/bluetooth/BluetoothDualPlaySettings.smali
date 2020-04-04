.class public final Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;
.super Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;
.source "BluetoothDualPlaySettings.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

.field private mDialogListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

.field private mIsA2dpProfileReady:Z

.field private mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDialogListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->setDualPlayMode(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    return-object v0
.end method

.method private launchDualPlayAskPopup()V
    .locals 4

    const-string v0, "BluetoothDualPlaySettings"

    const-string v1, "launchDualPlayAskPopup :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1213d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "body"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1213d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pos_button"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121ac2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "neg_button"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120510

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDialogListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->launchDialog(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;Landroid/os/Bundle;)V

    return-void
.end method

.method private setDualPlayMode(Z)V
    .locals 5

    const-string v0, "BluetoothDualPlaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualPlayMode :: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setCheckedWithoutCallback(Z)V

    const-string v0, "BluetoothDualPlaySettings"

    const-string v1, "setDualPlayMode :: a2dpProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setDualPlayMode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setCheckedWithoutCallback(Z)V

    goto :goto_0

    :cond_1
    const-string v2, "BluetoothDualPlaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDualPlayMode :: failed set dual play mode to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setCheckedWithoutCallback(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method bluetoothStateChanged(I)V
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->dismissDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method connectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "BluetoothDualPlaySettings"

    const-string v1, "onConfigurationChanged :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "BluetoothDualPlaySettings"

    const-string v1, "onCreate :: Can\'t get Local Bluetooth Manager instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1212ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f010023

    goto :goto_1

    :cond_1
    const v0, 0x7f010022

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->loadAnimationResource(I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1208a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onResume()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    :cond_0
    const-string v2, "BluetoothDualPlaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume :: Bluetooth Dual Play Settings will finish, adapter state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->dismissDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->updateContentsView()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->resume()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothDualPlaySettings"

    const-string v1, "onServiceConnected :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->updateContentsView()V

    goto :goto_0

    :cond_0
    const-string v2, "BluetoothDualPlaySettings"

    const-string v3, "onServiceConnected :: a2dpProfile is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    const-string v0, "BluetoothDualPlaySettings"

    const-string v2, "onServiceConnected :: mLocalProfileManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z

    :cond_0
    return-void
.end method

.method switchStateChange(Z)V
    .locals 4

    const-string v0, "BluetoothDualPlaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchStateChange :: isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    const-string v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "switchStateChange :: a2dpProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "switchStateChange :: It is not user interaction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1206bc

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1206bb

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1208a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->launchDualPlayAskPopup()V

    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->setDualPlayMode(Z)V

    :goto_2
    return-void
.end method

.method updateContentsView()V
    .locals 5

    const-string v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "updateContentsView :: refresh contents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "updateContentsView :: a2dpProfile is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "updateContentsView :: mLocalProfileManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a03e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mAnimResource:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mAnimResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mAnimResource:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    :cond_3
    const-string v3, "BluetoothDualPlaySettings"

    const-string/jumbo v4, "updateContentsView :: failed to get animation drawble.."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    const v2, 0x7f08028a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_5
    const v2, 0x7f080287

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a01c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_6

    const v4, 0x7f1213d4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const v4, 0x7f1213d3

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
