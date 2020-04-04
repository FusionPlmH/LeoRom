.class Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;
.super Ljava/lang/Object;
.source "WifiSmartSwitchBackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiBRthread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mIntent:Landroid/content/Intent;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v0, "wifi"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private backupIWC(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x193

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "WifiSmartSwitchBackupRestore"

    const-string v5, "Qtable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v4, "WifiSmartSwitchBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/misc/wifi_share_profile/qtables.json Size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "/data/misc/wifi_share_profile/qtables.json"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/wifi_share_profile/qtables.json"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/nio/file/OpenOption;

    sget-object v9, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v9, v8, v5

    sget-object v9, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v9, v8, v4

    invoke-static {v6, v7, v8}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v6

    move-object v1, v6

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v6

    :try_start_2
    const-string v7, "WifiSmartSwitchBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "backup file IO exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    const-string v6, "/data/misc/wifi_share_profile/qtables.json"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "qtables.json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    const-string v7, "WifiSmartSwitchBackupRestore"

    const-string v8, "encrypt new file fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5, v4, v4, v5}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    return-void

    :goto_2
    nop

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_4
    :goto_3
    throw v4
.end method

.method private getModelName()Ljava/lang/String;
    .locals 5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const-string v3, "SAMSUNG-"

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private restoreIWC(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlQtableJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlQtableJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/misc/wifi_share_profile/qtables_restore.json"

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const-string v3, "WifiSmartSwitchBackupRestore"

    const-string v4, "decrypt fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v2, v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x191

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "json"

    const-string v5, "/data/misc/wifi_share_profile/qtables_restore.json"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->readQtableFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/misc/wifi_share_profile/qtables_restore.json"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiSmartSwitchBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore file IO exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method backup()V
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v2, "SAVE_PATH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v3, "ACTION"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v6, "SESSION_KEY"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v6, "SOURCE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v6, "EXPORT_SESSION_TIME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mExportSessionTime:Ljava/lang/String;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v6, "SECURITY_LEVEL"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v6, "FAST_TRACK"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mFastTrack:Z

    const-string v0, "WifiSmartSwitchBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BACKUP] path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WifiSmartSwitchBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "         action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->actionStrings:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  mSecurityLevel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget v6, v6, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->permissionCheck()Z

    move-result v0

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-nez v0, :cond_0

    invoke-virtual {v1, v4, v6, v5, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->retrieveBackupData()[B

    move-result-object v7

    const-string v0, "WifiSmartSwitchBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wifiFullConfigData.length  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x3

    if-nez v3, :cond_12

    array-length v9, v7

    if-nez v9, :cond_1

    const-string v0, "WifiSmartSwitchBackupRestore"

    const-string v5, "There is no networks to backup"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v4, v6, v8, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_1
    :try_start_0
    new-instance v9, Landroid/os/StatFs;

    invoke-direct {v9, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v8, v9

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v11, v11

    mul-long v13, v9, v11

    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->getWifiConfigSize([B)I

    move-result v15

    int-to-long v0, v15

    cmp-long v0, v13, v0

    if-gez v0, :cond_2

    const-string v0, "WifiSmartSwitchBackupRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freeSpaceInBytes : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", wifiFullConfigData.length : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v7

    move-object/from16 v1, p0

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v6, v5, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_2
    move-object/from16 v1, p0

    const-string v0, "/data/misc/wifi_share_profile/backup.conf"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    const-string v0, "/data/misc/wifi_share_profile/backup_old.conf"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    const-string v0, "/data/misc/wifi_share_profile/backup_old.conf"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeOldStyle(Ljava/lang/String;)V

    const-string v0, "/data/misc/wifi_share_profile/backup.conf"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeOldStyle(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v15, "/data/misc/wifi_share_profile/backup.conf"

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v15, v0

    new-instance v0, Ljava/io/File;

    const-string v5, "/data/misc/wifi_share_profile/backup_old.conf"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v15, v6, v4}, Ljava/io/File;->setReadable(ZZ)Z

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v15, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const-string v4, "/data/misc/wifi_share_profile/backup_old.conf"

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v6

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "wpa_supplicant.conf"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_5

    const-string v4, "WifiSmartSwitchBackupRestore"

    const-string v6, "encrypt old file fail"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6, v6, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_4
    return-void

    :cond_5
    :try_start_2
    const-string v6, "/data/misc/wifi_share_profile/backup.conf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v0

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WifiConfigStore.xml"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v6, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_8

    const-string v4, "WifiSmartSwitchBackupRestore"

    const-string v6, "encrypt new file fail"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6, v6, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_7
    return-void

    :cond_8
    :try_start_3
    invoke-direct {v1, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->backupIWC(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeXML(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    const/4 v4, -0x1

    if-ne v0, v4, :cond_b

    const-string v4, "WifiSmartSwitchBackupRestore"

    const-string v6, "makeXML fail"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6, v6, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_9
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_a
    return-void

    :cond_b
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_c
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_d
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    nop

    move-object/from16 v19, v2

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v4, "WifiSmartSwitchBackupRestore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v19, v2

    :try_start_5
    const-string v2, "backup file IO exception "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v4, v6, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_e
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_f
    return-void

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v19, v2

    :goto_0
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_10
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_11
    throw v0

    :catch_1
    move-exception v0

    move-object/from16 v19, v2

    const-string v2, "WifiSmartSwitchBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v8, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_12
    move-object/from16 v19, v2

    move v2, v4

    move v4, v6

    const/4 v0, 0x2

    if-ne v3, v0, :cond_13

    goto :goto_1

    :cond_13
    invoke-virtual {v1, v2, v4, v8, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    :goto_1
    return-void
.end method

.method createBnRFile(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiSmartSwitchBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBnRFile exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$002(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$000(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget v2, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$102(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;[B)[B

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$100(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$202(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$202(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$000(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$200(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherInputStream;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$000(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method encrypt(ILjava/lang/String;Ljava/lang/String;)I
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    if-nez p1, :cond_0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    :catchall_0
    move-exception v4

    goto/16 :goto_a

    :catch_0
    move-exception v4

    goto :goto_6

    :cond_0
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v6

    move-object v0, v6

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    :cond_1
    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x400

    new-array v8, v7, [B

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v8, v4, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    move v6, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    invoke-virtual {v1, v8, v4, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_3
    nop

    const-string v6, "WifiSmartSwitchBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    const-string v8, "io exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_9

    :cond_6
    :goto_5
    goto :goto_9

    :goto_6
    nop

    :try_start_2
    const-string v6, "WifiSmartSwitchBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, -0x1

    if-eqz v1, :cond_7

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_7

    :catch_2
    move-exception v4

    goto :goto_8

    :cond_7
    :goto_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :goto_8
    nop

    const-string v6, "WifiSmartSwitchBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :goto_9
    return v5

    :goto_a
    nop

    if-eqz v1, :cond_a

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_b

    :catch_3
    move-exception v6

    goto :goto_c

    :cond_a
    :goto_b
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_d

    :goto_c
    nop

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "io exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WifiSmartSwitchBackupRestore"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    nop

    :cond_d
    :goto_d
    throw v4
.end method

.method public encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$002(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$000(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget v2, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generateEncryptSalt()[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$102(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;[B)[B

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$100(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$202(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$202(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$000(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$200(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$000(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method public generateEncryptSalt()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method public generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const/16 v0, 0x3e8

    const/16 v1, 0x100

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "PBKDF2WithHmacSHA1"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$100(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)[B

    move-result-object v5

    invoke-direct {v4, v2, v5, v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method public generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method getWifiConfigSize([B)I
    .locals 3

    array-length v0, p1

    :try_start_0
    const-string v1, "/data/misc/wifi/qtables.json"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method inputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    const/4 v3, -0x1

    move v4, v3

    :goto_0
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v4, v5

    if-eq v5, v3, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object v0, v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method makeOldStyle(Ljava/lang/String;)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "ssid"

    const-string v4, "scan_ssid"

    const-string v5, "key_mgmt"

    const-string v6, "psk"

    sget-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v8, v0, v7

    sget-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v10, v0, v9

    sget-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v12, v0, v11

    sget-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/4 v13, 0x3

    aget-object v14, v0, v13

    const-string v15, "wep_tx_keyidx"

    const-string v13, "autojoin"

    const-string v11, "auth_alg"

    const-string v0, "WifiSmartSwitchBackupRestore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeOldStyle "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x0

    const-string v0, "\n\t"

    move-object/from16 v20, v0

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1b
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    move-object/from16 v21, v9

    const/4 v9, 0x1

    :try_start_1
    invoke-direct {v0, v2, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_19
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    move-object v9, v0

    :try_start_2
    const-string v0, "Old_Version_Style\n"

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v0

    const-string v0, ""

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_17
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    if-eqz v0, :cond_0

    :try_start_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_DisableMWIPS"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_mwips_special_ssid"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v24, v0

    const-string v0, "wifi_mwips_special_null_ssid"

    invoke-static {v2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v25, v13

    move-object/from16 v13, v21

    move/from16 v0, v22

    move-object/from16 v2, v24

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v28, v7

    move-object/from16 v34, v13

    move-object/from16 v13, v20

    goto/16 :goto_17

    :catch_0
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v34, v13

    move-object/from16 v13, v20

    goto/16 :goto_14

    :catch_1
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v34, v13

    move-object/from16 v13, v20

    goto/16 :goto_15

    :cond_0
    move-object/from16 v25, v13

    move-object/from16 v13, v21

    move/from16 v0, v22

    move-object/from16 v2, v23

    :goto_0
    move-object/from16 v26, v15

    :try_start_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiConfiguration;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_15
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    move-object/from16 v27, v21

    move-object/from16 v28, v7

    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    move/from16 v29, v0

    move-object/from16 v7, v27

    :try_start_5
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v30, v2

    move-object/from16 v31, v13

    move-object/from16 v32, v15

    goto :goto_6

    :cond_2
    :goto_2
    move-object/from16 v30, v2

    const-string v2, "WifiSmartSwitchBackupRestore"

    move-object/from16 v31, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v15

    const-string v15, "smart switch Ignoring karma network "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :cond_3
    move-object/from16 v30, v2

    move-object/from16 v31, v13

    move-object/from16 v32, v15

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v13, v20

    :goto_3
    move-object/from16 v34, v25

    move-object/from16 v15, v26

    goto/16 :goto_17

    :catch_2
    move-exception v0

    move-object/from16 v13, v20

    :goto_4
    move-object/from16 v34, v25

    move-object/from16 v15, v26

    goto/16 :goto_14

    :catch_3
    move-exception v0

    move-object/from16 v13, v20

    :goto_5
    move-object/from16 v34, v25

    move-object/from16 v15, v26

    goto/16 :goto_15

    :cond_4
    move/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v31, v13

    move-object/from16 v32, v15

    move-object/from16 v7, v27

    :goto_6
    :try_start_6
    iget-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->semIsVendorSpecificSsid:Z

    if-nez v0, :cond_f

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EAP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    if-eqz v2, :cond_5

    :try_start_7
    iget-object v2, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v13, -0x1

    if-eq v2, v13, :cond_5

    nop

    :goto_7
    move-object/from16 v7, v28

    move/from16 v0, v29

    move-object/from16 v2, v30

    move-object/from16 v13, v31

    move-object/from16 v15, v32

    goto/16 :goto_1

    :cond_5
    :try_start_8
    const-string v2, "network={"

    invoke-virtual {v9, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    move-object/from16 v13, v20

    :try_start_9
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-boolean v2, v7, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-eqz v2, :cond_6

    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "=1"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_3

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :catch_5
    move-exception v0

    goto/16 :goto_5

    :cond_6
    :goto_8
    :try_start_b
    iget-object v2, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-eqz v2, :cond_7

    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_7
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v2, v7, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v15, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-virtual {v1, v2, v15}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v15, v7, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v15, v15, v18
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    if-eqz v15, :cond_8

    :try_start_e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    const-string v0, "="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_9

    :cond_8
    move-object/from16 v33, v0

    :goto_9
    :try_start_f
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v0, v0, v15
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-eqz v0, :cond_9

    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v15, v15, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :cond_9
    :try_start_11
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v0, v0, v15
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    if-eqz v0, :cond_a

    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v19, 0x1

    aget-object v15, v15, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_a

    :cond_a
    const/16 v19, 0x1

    :goto_a
    :try_start_13
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x2

    aget-object v0, v0, v15
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    if-eqz v0, :cond_b

    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v17, 0x2

    aget-object v15, v15, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_b

    :cond_b
    const/16 v17, 0x2

    :goto_b
    :try_start_15
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x3

    aget-object v0, v0, v15
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-eqz v0, :cond_c

    :try_start_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v16, 0x3

    aget-object v15, v15, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto :goto_c

    :cond_c
    const/16 v16, 0x3

    :goto_c
    :try_start_17
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v0, v0, v15
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    if-eqz v0, :cond_d

    :try_start_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_9
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    move-object/from16 v15, v26

    :try_start_19
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v34, v25

    goto/16 :goto_17

    :catch_6
    move-exception v0

    move-object/from16 v34, v25

    goto/16 :goto_14

    :catch_7
    move-exception v0

    move-object/from16 v34, v25

    goto/16 :goto_15

    :catchall_4
    move-exception v0

    move-object/from16 v15, v26

    move-object v1, v0

    move-object/from16 v34, v25

    goto/16 :goto_17

    :catch_8
    move-exception v0

    move-object/from16 v15, v26

    move-object/from16 v34, v25

    goto/16 :goto_14

    :catch_9
    move-exception v0

    move-object/from16 v15, v26

    move-object/from16 v34, v25

    goto/16 :goto_15

    :cond_d
    move-object/from16 v15, v26

    :goto_d
    :try_start_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    move-object/from16 v1, v25

    :try_start_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    move-object/from16 v34, v1

    :try_start_1c
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, "\n}\n\n"

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object/from16 v34, v1

    move-object v1, v0

    goto/16 :goto_17

    :catch_a
    move-exception v0

    move-object/from16 v34, v1

    goto/16 :goto_14

    :catch_b
    move-exception v0

    move-object/from16 v34, v1

    goto/16 :goto_15

    :catchall_6
    move-exception v0

    move-object/from16 v34, v25

    move-object v1, v0

    goto/16 :goto_17

    :catch_c
    move-exception v0

    move-object/from16 v34, v25

    goto/16 :goto_14

    :catch_d
    move-exception v0

    move-object/from16 v34, v25

    goto/16 :goto_15

    :catchall_7
    move-exception v0

    move-object/from16 v34, v25

    move-object/from16 v15, v26

    move-object v1, v0

    goto/16 :goto_17

    :catch_e
    move-exception v0

    move-object/from16 v34, v25

    move-object/from16 v15, v26

    goto/16 :goto_14

    :catch_f
    move-exception v0

    move-object/from16 v34, v25

    move-object/from16 v15, v26

    goto/16 :goto_15

    :cond_e
    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v19, 0x1

    move-object/from16 v7, v28

    move/from16 v0, v29

    move-object/from16 v2, v30

    move-object/from16 v13, v31

    move-object/from16 v15, v32

    goto/16 :goto_1

    :cond_f
    move-object/from16 v13, v20

    move-object/from16 v34, v25

    move-object/from16 v15, v26

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v19, 0x1

    :goto_e
    move-object/from16 v20, v13

    move-object/from16 v26, v15

    move-object/from16 v7, v28

    move/from16 v0, v29

    move-object/from16 v2, v30

    move-object/from16 v13, v31

    move-object/from16 v15, v32

    move-object/from16 v25, v34

    move-object/from16 v1, p0

    goto/16 :goto_1

    :catchall_8
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v34, v25

    move-object/from16 v15, v26

    move-object v1, v0

    goto/16 :goto_17

    :catch_10
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v34, v25

    move-object/from16 v15, v26

    goto/16 :goto_14

    :catch_11
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v34, v25

    move-object/from16 v15, v26

    goto/16 :goto_15

    :cond_10
    move/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v28, v7

    move-object/from16 v31, v13

    move-object/from16 v13, v20

    move-object/from16 v34, v25

    move-object/from16 v15, v26

    const-string v0, "New_Version_Style\n"

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/FileWriter;->flush()V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_14
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    nop

    :try_start_1d
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_12

    goto :goto_10

    :catch_12
    move-exception v0

    move-object v1, v0

    const-string v1, "WifiSmartSwitchBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f
    const-string v7, "fw.close IOException"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_11
    :goto_10
    goto/16 :goto_16

    :catch_13
    move-exception v0

    goto/16 :goto_14

    :catch_14
    move-exception v0

    goto/16 :goto_15

    :catchall_9
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v13, v20

    move-object/from16 v34, v25

    move-object/from16 v15, v26

    move-object v1, v0

    goto/16 :goto_17

    :catch_15
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v13, v20

    move-object/from16 v34, v25

    move-object/from16 v15, v26

    goto/16 :goto_14

    :catch_16
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v13, v20

    move-object/from16 v34, v25

    move-object/from16 v15, v26

    goto/16 :goto_15

    :catchall_a
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v34, v13

    move-object/from16 v13, v20

    move-object v1, v0

    goto :goto_11

    :catch_17
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v34, v13

    move-object/from16 v13, v20

    goto :goto_12

    :catch_18
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v34, v13

    move-object/from16 v13, v20

    goto :goto_13

    :catchall_b
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v34, v13

    move-object/from16 v13, v20

    move-object v1, v0

    move-object/from16 v9, v21

    :goto_11
    goto/16 :goto_17

    :catch_19
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v34, v13

    move-object/from16 v13, v20

    move-object/from16 v9, v21

    :goto_12
    goto :goto_14

    :catch_1a
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v34, v13

    move-object/from16 v13, v20

    move-object/from16 v9, v21

    :goto_13
    goto :goto_15

    :catchall_c
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v21, v9

    move-object/from16 v34, v13

    move-object/from16 v13, v20

    move-object v1, v0

    goto/16 :goto_17

    :catch_1b
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v21, v9

    move-object/from16 v34, v13

    move-object/from16 v13, v20

    :goto_14
    :try_start_1e
    const-string v1, "WifiSmartSwitchBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeOldStyle IOException :"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    if-eqz v9, :cond_11

    :try_start_1f
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1c

    goto/16 :goto_10

    :catch_1c
    move-exception v0

    move-object v1, v0

    const-string v1, "WifiSmartSwitchBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f

    :catch_1d
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v21, v9

    move-object/from16 v34, v13

    move-object/from16 v13, v20

    :goto_15
    :try_start_20
    const-string v1, "WifiSmartSwitchBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeOldStyle File not found "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    if-eqz v9, :cond_11

    :try_start_21
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1e

    goto/16 :goto_10

    :catch_1e
    move-exception v0

    move-object v1, v0

    const-string v1, "WifiSmartSwitchBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f

    :goto_16
    return-void

    :catchall_d
    move-exception v0

    move-object v1, v0

    :goto_17
    if-eqz v9, :cond_12

    :try_start_22
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1f

    goto :goto_18

    :catch_1f
    move-exception v0

    move-object v2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fw.close IOException"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "WifiSmartSwitchBackupRestore"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_12
    :goto_18
    throw v1
.end method

.method makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, -0x1

    array-length v2, p2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method makeXML(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "wifi_wpaconf.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/FileWriter;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v0, v4

    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v4, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, ""

    const-string v5, "Wi-Fi"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "model"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->getModelName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "model"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "conf"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "wpa_supplicant.conf"

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "conf"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "newConf"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "WifiConfigStore.xml"

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "newConf"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "qtableJson"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "qtables.json"

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "qtableJson"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "Wi-Fi"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "WifiSmartSwitchBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeXML exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, -0x1

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return v1

    :goto_2
    nop

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, -0x1

    nop

    :cond_1
    :goto_3
    throw v2
.end method

.method public permissionCheck()Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->access$300()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public readQtableFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method readXML(Ljava/lang/String;)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    new-instance v5, Ljava/io/FileReader;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "wifi_wpaconf.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v5

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    :goto_0
    if-eq v5, v3, :cond_a

    const/4 v9, 0x2

    if-ne v5, v9, :cond_1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    const-string v9, "model"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "conf"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "newConf"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "qtableJson"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_0
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_1
    const/4 v9, 0x4

    if-ne v5, v9, :cond_5

    if-eqz v6, :cond_2

    const-string v9, "model"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlModel:Ljava/lang/String;

    const-string v9, "WifiSmartSwitchBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readXML] model : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v11, v11, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlModel:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    if-eqz v6, :cond_3

    const-string v9, "conf"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    const-string v9, "WifiSmartSwitchBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readXML] wpa_supplicant.conf : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v11, v11, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    if-eqz v6, :cond_4

    const-string v9, "newConf"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    const-string v9, "WifiSmartSwitchBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readXML] WifiConfigStore.xml : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v11, v11, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_9

    const-string v9, "qtableJson"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlQtableJson:Ljava/lang/String;

    const-string v9, "WifiSmartSwitchBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readXML] qtables.json : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v11, v11, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlQtableJson:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const/4 v9, 0x3

    if-ne v5, v9, :cond_9

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    if-eqz v6, :cond_6

    const-string v9, "model"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_7

    const-string v9, "conf"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v6, 0x0

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    const-string v9, "newConf"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v6, 0x0

    goto :goto_1

    :cond_8
    if-eqz v6, :cond_9

    const-string v9, "qtableJson"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v6, 0x0

    :cond_9
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v9

    goto/16 :goto_0

    :cond_a
    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    return v0

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "WifiSmartSwitchBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read XML Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, -0x1

    if-eqz v1, :cond_b

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_4
    const-string v3, "WifiSmartSwitchBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runtimeException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, -0x1

    if-eqz v1, :cond_b

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    :cond_b
    :goto_2
    nop

    return v0

    :goto_3
    nop

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_c
    nop

    throw v2
.end method

.method restore()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v1, "SAVE_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v2, "ACTION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v5, "SESSION_KEY"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v5, "SOURCE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v5, "SECURITY_LEVEL"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v5, "FAST_TRACK"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mFastTrack:Z

    const-string v2, "WifiSmartSwitchBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RESTORE] path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WifiSmartSwitchBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "         action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->actionStrings:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mSource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  mSecurityLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget v5, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->permissionCheck()Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_0
    const/4 v2, 0x3

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-boolean v5, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mFastTrack:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    goto/16 :goto_c

    :cond_2
    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    goto/16 :goto_c

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->getModelName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->readXML(Ljava/lang/String;)I

    move-result v6

    const-string v7, "WifiSmartSwitchBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readXML] xmlNewConf: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v9, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  xmlOldConf: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v9, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    const-string v7, "WifiSmartSwitchBackupRestore"

    const-string v8, "xml parsing error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_4
    const-string v8, "/data/misc/wifi_share_profile/restore.conf"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v9, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v11, v11, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v10, v10, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/data/misc/wifi_share_profile/restore.conf"

    invoke-virtual {p0, v4, v9, v10}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v10, v10, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    iput-object v10, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v9, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v11, v11, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v10, v10, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/data/misc/wifi_share_profile/restore.conf"

    invoke-virtual {p0, v4, v9, v10}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v10, v10, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    iput-object v10, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    :cond_6
    :goto_1
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gtz v9, :cond_7

    goto/16 :goto_11

    :cond_7
    if-ne v6, v7, :cond_8

    const-string v2, "WifiSmartSwitchBackupRestore"

    const-string v7, "decrypt fail"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4, v4, v4, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_8
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v10, "wpa_supplicant.conf"

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v11, v11, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "WifiSmartSwitchBackupRestore"

    const-string v11, "START restore OLD STYLE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/misc/wifi_share_profile/restore.conf"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v10

    new-instance v10, Ljava/io/FileInputStream;

    const-string v11, "/data/misc/wifi_share_profile/restore.conf"

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v7, v10

    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v9, v10

    const/4 v10, 0x0

    const-string v11, "WifiSmartSwitchBackupRestore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bytes "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Landroid/net/wifi/WifiManager;->restoreSupplicantBackupData([B[B)V

    goto :goto_2

    :cond_9
    const-string v10, "WifiSmartSwitchBackupRestore"

    const-string v11, "START restore"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "/data/misc/wifi_share_profile/restore.conf"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->throwAwayOldStyle(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/misc/wifi_share_profile/restore.conf"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v10

    new-instance v10, Ljava/io/FileInputStream;

    const-string v11, "/data/misc/wifi_share_profile/restore.conf"

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v7, v10

    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v9, v10

    const-string v10, "WifiSmartSwitchBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bytes "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    move-result v10

    new-array v10, v10, [B

    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    move-result v11

    invoke-virtual {v9, v10, v3, v11}, Ljava/io/DataInputStream;->readFully([BII)V

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiManager;->restoreBackupData([B)V

    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->restoreIWC(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    goto :goto_3

    :catch_0
    move-exception v10

    goto :goto_4

    :goto_3
    nop

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :goto_4
    nop

    const-string v11, "WifiSmartSwitchBackupRestore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-string v13, "restore close Exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_a
    :goto_6
    goto/16 :goto_b

    :catchall_0
    move-exception v3

    goto/16 :goto_d

    :catch_1
    move-exception v10

    :try_start_2
    const-string v11, "WifiSmartSwitchBackupRestore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restore file IO exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_b

    :try_start_3
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    goto :goto_7

    :catch_2
    move-exception v10

    goto :goto_8

    :cond_b
    :goto_7
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :goto_8
    nop

    const-string v11, "WifiSmartSwitchBackupRestore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :catch_3
    move-exception v10

    :try_start_4
    const-string v11, "WifiSmartSwitchBackupRestore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restore File not Found exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_c

    :try_start_5
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    goto :goto_9

    :catch_4
    move-exception v10

    goto :goto_a

    :cond_c
    :goto_9
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :goto_a
    nop

    const-string v11, "WifiSmartSwitchBackupRestore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    :goto_b
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_d
    invoke-virtual {p0, v4, v3, v3, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    nop

    :goto_c
    return-void

    :goto_d
    nop

    if-eqz v9, :cond_e

    :try_start_6
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    goto :goto_e

    :catch_5
    move-exception v4

    goto :goto_f

    :cond_e
    :goto_e
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_10

    :goto_f
    nop

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restore close Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "WifiSmartSwitchBackupRestore"

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_f
    :goto_10
    throw v3

    :cond_10
    :goto_11
    const-string v7, "WifiSmartSwitchBackupRestore"

    const-string v9, "can\'t read file"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void
.end method

.method public run()V
    .locals 2

    const-string v0, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->backup()V

    goto :goto_0

    :cond_0
    const-string v0, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method sendResponse(IIII)V
    .locals 3

    const-string v0, "WifiSmartSwitchBackupRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "r:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",rs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isCanceled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mFastTrack:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_2

    const-string v1, "com.sec.android.intent.action.RESPONSE_BACKUP_WIFIWPACONF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXPORT_SESSION_TIME"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mExportSessionTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const-string v1, "com.sec.android.intent.action.RESPONSE_RESTORE_WIFIWPACONF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_0
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ERR_CODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SOURCE"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SmartSwitch"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    const-string v2, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method throwAwayOldStyle(Ljava/lang/String;)V
    .locals 6

    const-string v0, "WifiSmartSwitchBackupRestore"

    const-string v1, "throwAwayOldStyle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    const-string v2, ""

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "New_Version_Style"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    nop

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_2
    nop

    const-string v3, "WifiSmartSwitchBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v5, "throwAwayOldStyle try IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_3
    :goto_4
    goto :goto_7

    :catchall_0
    move-exception v2

    goto :goto_8

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "WifiSmartSwitchBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "throwAwayOldStyle IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_6

    :cond_4
    :goto_5
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :goto_6
    nop

    const-string v3, "WifiSmartSwitchBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :goto_7
    return-void

    :goto_8
    nop

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    goto :goto_9

    :catch_3
    move-exception v3

    goto :goto_a

    :cond_5
    :goto_9
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_b

    :goto_a
    nop

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "throwAwayOldStyle try IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WifiSmartSwitchBackupRestore"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_6
    :goto_b
    throw v2
.end method
