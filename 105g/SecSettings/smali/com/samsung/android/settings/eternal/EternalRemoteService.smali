.class public Lcom/samsung/android/settings/eternal/EternalRemoteService;
.super Landroid/app/Service;
.source "EternalRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;

.field private final mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;-><init>(Lcom/samsung/android/settings/eternal/EternalRemoteService;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService;->mHandler:Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService;->mHandler:Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/eternal/EternalRemoteService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eternal/EternalRemoteService;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 8

    if-nez p1, :cond_0

    const-string v0, "EternalRemoteService"

    const-string v1, "handleMessage() - msg is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/lib/episode/EpisodeUtils;->isSettingAppSupportBnR()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "EternalRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "EternalRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - Unsupported cmd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "EternalRemoteService"

    const-string v2, "handleMessage() - bundle is null"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "SAVE_PATH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SESSION_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SECURITY_LEVEL"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.intent.action.REQUEST_RESTORE_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "SAVE_PATH"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "SESSION_KEY"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "FAST_TRACK"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "SECURITY_LEVEL"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "FROM_REMOTE_SERVICE"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/EternalRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/samsung/android/settings/eternal/EternalService;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/EternalRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/eternal/EternalRemoteService$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eternal/EternalRemoteService$3;-><init>(Lcom/samsung/android/settings/eternal/EternalRemoteService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/eternal/EternalRemoteService$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eternal/EternalRemoteService$2;-><init>(Lcom/samsung/android/settings/eternal/EternalRemoteService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :sswitch_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/SettingsBackup.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;-><init>(Lcom/samsung/android/settings/eternal/EternalRemoteService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    nop

    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_3
        0x1001 -> :sswitch_3
        0x2000 -> :sswitch_2
        0x2001 -> :sswitch_1
        0x3000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
