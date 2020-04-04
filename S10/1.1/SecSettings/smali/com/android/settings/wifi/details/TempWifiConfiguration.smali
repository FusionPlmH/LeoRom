.class public Lcom/android/settings/wifi/details/TempWifiConfiguration;
.super Ljava/lang/Object;
.source "TempWifiConfiguration.java"


# static fields
.field private static mTempwificonfig:Lcom/android/settings/wifi/details/TempWifiConfiguration;


# instance fields
.field public forceScrollToTopOfList:Z

.field public isConnecting:Z

.field private mAnonymousIdentity:Ljava/lang/String;

.field private final mConfigLock:Ljava/lang/Object;

.field private mPhase1Method:I

.field private mPhase2Method:I

.field private mShowRetryDialog:Z

.field private mTempCaCertificate:I

.field private mTempClientCertificate:I

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mTempwificonfig:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mConfigLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->forceScrollToTopOfList:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->isConnecting:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mShowRetryDialog:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mTempCaCertificate:I

    iput v1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mTempClientCertificate:I

    iput v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mPhase2Method:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mPhase1Method:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/settings/wifi/details/TempWifiConfiguration;
    .locals 2

    const-class v0, Lcom/android/settings/wifi/details/TempWifiConfiguration;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mTempwificonfig:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-direct {v1}, Lcom/android/settings/wifi/details/TempWifiConfiguration;-><init>()V

    sput-object v1, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mTempwificonfig:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    :cond_0
    sget-object v1, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mTempwificonfig:Lcom/android/settings/wifi/details/TempWifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clearall()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "TempWifiConfiguration"

    const-string v2, "clear config"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mTempCaCertificate:I

    iput v1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mTempClientCertificate:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAnonymousIdentity()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mAnonymousIdentity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TempWifiConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnonymousIdentity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mAnonymousIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mAnonymousIdentity:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getCaCertificateAliases()I
    .locals 3

    const-string v0, "TempWifiConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCaCertificateAliases : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mTempCaCertificate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mTempCaCertificate:I

    return v0
.end method

.method public getClientCertificateAlias()I
    .locals 3

    const-string v0, "TempWifiConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCaCertificateAliases : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mTempClientCertificate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mTempClientCertificate:I

    return v0
.end method

.method public getConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_0

    const-string v1, "TempWifiConfiguration"

    const-string v2, "new config"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPhase1Method()I
    .locals 3

    const-string v0, "TempWifiConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhase2Method : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mPhase1Method:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mPhase1Method:I

    return v0
.end method

.method public getPhase2Method()I
    .locals 3

    const-string v0, "TempWifiConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhase2Method : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mPhase2Method:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mPhase2Method:I

    return v0
.end method

.method public isShowRetryDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mShowRetryDialog:Z

    return v0
.end method

.method public setAnonymousIdentity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mAnonymousIdentity:Ljava/lang/String;

    return-void
.end method

.method public setCaCertificateAliases(I)V
    .locals 3

    const-string v0, "TempWifiConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaCertificateAliases : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mTempCaCertificate:I

    return-void
.end method

.method public setClientCertificateAlias(I)V
    .locals 3

    const-string v0, "TempWifiConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaCertificateAliases : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mTempClientCertificate:I

    return-void
.end method

.method public setPhase1Method(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mPhase1Method:I

    return-void
.end method

.method public setPhase2Method(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mPhase2Method:I

    return-void
.end method

.method public setShowRetryDialog(Z)V
    .locals 3

    const-string v0, "TempWifiConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setShowRetryDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mShowRetryDialog:Z

    return-void
.end method

.method public setconfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "TempWifiConfiguration"

    const-string v2, "set config"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
