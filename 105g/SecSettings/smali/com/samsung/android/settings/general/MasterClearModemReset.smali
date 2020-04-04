.class public Lcom/samsung/android/settings/general/MasterClearModemReset;
.super Landroid/app/Service;
.source "MasterClearModemReset.java"


# instance fields
.field private called:Z

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mEraseEsims:Z

.field private mEraseSdCard:Z

.field private mFromOemUnlock:Z

.field private mHandler:Landroid/os/Handler;

.field private mOemLockManager:Landroid/service/oemlock/OemLockManager;

.field private mOemUnlockEnabled:Z

.field private mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mFromOemUnlock:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mOemUnlockEnabled:Z

    new-instance v0, Lcom/samsung/android/settings/general/MasterClearModemReset$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/MasterClearModemReset$1;-><init>(Lcom/samsung/android/settings/general/MasterClearModemReset;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/general/MasterClearModemReset;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/general/MasterClearModemReset;->sendMasterClearIntent()V

    return-void
.end method

.method private sendMasterClearIntent()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->called:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->called:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->called:Z

    invoke-static {}, Lcom/android/settings/development/OemUnlockPreferenceController;->isSkeymasterSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MasterClearModemReset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMasterClearIntent : mFromOemUnlock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mFromOemUnlock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mFromOemUnlock:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/general/MasterClearModemReset;->setOemUnlockEnabled()V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    iget-boolean v2, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mEraseSdCard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.extra.WIPE_ESIMS"

    iget-boolean v2, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mEraseEsims:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/general/MasterClearModemReset;->sendBroadcast(Landroid/content/Intent;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendResetCommandToRIL()V
    .locals 6

    invoke-static {}, Lcom/android/settings/development/OemUnlockPreferenceController;->isSkeymasterSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MasterClearModemReset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResetCommandToRIL : mFromOemUnlock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mFromOemUnlock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mFromOemUnlock:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/general/MasterClearModemReset;->setOemUnlockEnabled()V

    :cond_0
    const-string v0, "ril.modem.board"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MasterClearModemReset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modem name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/sec_platform_library/PacketBuilder;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sec_platform_library/PacketBuilder;-><init>(BB)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->addData(B)Lcom/samsung/android/sec_platform_library/PacketBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->getPacket()[B

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method private setOemUnlockEnabled()V
    .locals 3

    :try_start_0
    const-string v0, "MasterClearModemReset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOemUnlockEnabled : mOemUnlockEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mOemUnlockEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "oem_lock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/general/MasterClearModemReset;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/oemlock/OemLockManager;

    iput-object v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    iget-object v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    iget-boolean v1, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mOemUnlockEnabled:Z

    invoke-virtual {v0, v1}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MasterClearModemReset"

    const-string v2, "Fail to set oem unlock. Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/MasterClearModemReset;->stopSelf()V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "FACTORY"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "WIPE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mEraseSdCard:Z

    const-string v2, "MasterClearModemReset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIPE_EXTERNAL_STORAGE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mEraseSdCard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/development/OemUnlockPreferenceController;->isSkeymasterSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FROM_OEM_UNLOCK"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mFromOemUnlock:Z

    const-string v2, "OEM_UNLOCK_ENABLE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mOemUnlockEnabled:Z

    const-string v2, "MasterClearModemReset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFromOemUnlock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mFromOemUnlock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MasterClearModemReset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOemUnlockEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mOemUnlockEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "WIPE_ESIMS"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mEraseEsims:Z

    const-string v2, "MasterClearModemReset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIPE_ESIMS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mEraseEsims:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/MasterClearModemReset;->stopSelf()V

    return-void

    :cond_2
    const/4 v2, 0x0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object v2, v4

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x7d3

    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    const v1, 0x7f121826

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/general/MasterClearModemReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    const-string v1, "MasterClearModemReset"

    const-string v4, "Modem reset started..."

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/general/MasterClearModemReset;->sendResetCommandToRIL()V

    new-instance v1, Lcom/samsung/android/settings/general/MasterClearModemReset$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/general/MasterClearModemReset$2;-><init>(Lcom/samsung/android/settings/general/MasterClearModemReset;)V

    iput-object v1, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mDelayRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/general/MasterClearModemReset;->mDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x4e20

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
