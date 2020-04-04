.class public Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;
.super Landroid/app/Service;
.source "WifiSmartSwitchBackupRestoreRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService$WifiBnrHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService$WifiBnrHandler;

.field private final mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService$WifiBnrHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService$WifiBnrHandler;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;->mHandler:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService$WifiBnrHandler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;->mHandler:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService$WifiBnrHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 7

    if-nez p1, :cond_0

    const-string v0, "WifiSmartSwitchBackupRestoreRemoteService"

    const-string v1, "handleMessage() - msg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "WifiSmartSwitchBackupRestoreRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_1

    const-string v0, "WifiSmartSwitchBackupRestoreRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - Unsupported cmd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "WifiSmartSwitchBackupRestoreRemoteService"

    const-string v2, "handleMessage() - bundle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v1, "SAVE_PATH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SESSION_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SECURITY_LEVEL"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "SAVE_PATH"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "SESSION_KEY"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "SECURITY_LEVEL"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "FAST_TRACK"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-direct {v5}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    nop

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
