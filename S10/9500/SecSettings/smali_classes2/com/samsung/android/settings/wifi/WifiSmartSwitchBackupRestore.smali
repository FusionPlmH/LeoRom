.class public Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "WifiSmartSwitchBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;
    }
.end annotation


# static fields
.field private static final CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

.field static final actionStrings:[Ljava/lang/String;

.field static mIsCanceled:Z

.field private static final mPermissions:[Ljava/lang/String;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field isIgnoreSupportFeature:Z

.field mExportSessionTime:Ljava/lang/String;

.field mFastTrack:Z

.field mSecurityLevel:I

.field mSessionKey:Ljava/lang/String;

.field mSource:Ljava/lang/String;

.field private salt:[B

.field private secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field xmlConf:Ljava/lang/String;

.field xmlModel:Ljava/lang/String;

.field xmlNewConf:Ljava/lang/String;

.field xmlOldConf:Ljava/lang/String;

.field xmlQtableJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mPermissions:[Ljava/lang/String;

    const-string v0, "START"

    const-string v1, "FINISH"

    const-string v2, "CANCEL"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->actionStrings:[Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigSecureSvcIntegration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->isIgnoreSupportFeature:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->salt:[B

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->salt:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-object p1
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOURCE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->isIgnoreSupportFeature:Z

    if-eqz v1, :cond_0

    const-string v4, "GearHostManager"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->isIgnoreSupportFeature:Z

    :cond_0
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    return-void

    :cond_1
    sput-boolean v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    const-string v3, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiSmartSwitchBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request backup - isIgnoreSupportFeature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->isIgnoreSupportFeature:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string v3, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "WifiSmartSwitchBackupRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request restore - isIgnoreSupportFeature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->isIgnoreSupportFeature:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_0
    return-void
.end method
