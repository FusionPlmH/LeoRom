.class public Landroid/sec/enterprise/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;
    }
.end annotation


# static fields
.field public static final ACTION_KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

.field private static final EDM_CLASS_NAME:Ljava/lang/String; = "android.app.enterprise.EnterpriseDeviceManager"

.field private static final EDM_CLASS_NAME_NEW:Ljava/lang/String; = "com.samsung.android.knox.EnterpriseDeviceManager"

.field public static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy"

.field public static final ENTERPRISE_POLICY_SERVICE_NEW:Ljava/lang/String; = "enterprise_policy_new"

.field public static final ENTERPRISE_PROXY_SERVICE:Ljava/lang/String; = "edm_proxy"

.field public static final EXTRA_USER_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

.field private static final KNOX_CLASS_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.EnterpriseKnoxManager"

.field public static final KNOX_ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "knox_enterprise_policy"

.field private static final TAG:Ljava/lang/String; = "EnterpriseDeviceManager"

.field private static mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

.field private static mInstanceCreated:Z


# instance fields
.field private volatile mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

.field private volatile mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

.field private volatile mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

.field private volatile mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

.field private volatile mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

.field private volatile mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

.field private volatile mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

.field private volatile mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

.field private volatile mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

.field private volatile mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private volatile mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

.field private volatile mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

.field private volatile mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

.field private volatile mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

.field private volatile mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

.field private volatile mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private volatile mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

.field private volatile mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

.field private volatile mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

.field private volatile mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 5

    :try_start_0
    const-string v0, "android.app.enterprise.EnterpriseDeviceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static createKnox(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.sec.enterprise.knox.EnterpriseKnoxManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static createNew(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 5

    :try_start_0
    const-string v0, "com.samsung.android.knox.EnterpriseDeviceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;
    .locals 2

    sget-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    if-nez v0, :cond_1

    const-class v0, Landroid/sec/enterprise/EnterpriseDeviceManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/sec/enterprise/EnterpriseDeviceManager;

    invoke-direct {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;-><init>()V

    sput-object v1, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getService()Landroid/sec/enterprise/IEDMProxy;
    .locals 1

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/ApplicationPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/ApplicationPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getAuditPolicy()Landroid/sec/enterprise/auditlog/AuditLog;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/auditlog/AuditLog;

    invoke-direct {v1}, Landroid/sec/enterprise/auditlog/AuditLog;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/BluetoothPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/BluetoothPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getBrowserPolicy()Landroid/sec/enterprise/BrowserPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/BrowserPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/BrowserPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/ClientCertificateManager;

    invoke-direct {v1}, Landroid/sec/enterprise/ClientCertificateManager;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getDateTimePolicy()Landroid/sec/enterprise/DateTimePolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/DateTimePolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/DateTimePolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getDeviceAccountPolicy()Landroid/sec/enterprise/DeviceAccountPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/DeviceAccountPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/DeviceAccountPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/DeviceInventory;

    invoke-direct {v1}, Landroid/sec/enterprise/DeviceInventory;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    nop

    return-object v0

    :catch_0
    move-exception v1

    return-object v0
.end method

.method public getFirewallPolicy()Landroid/sec/enterprise/FirewallPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/FirewallPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/FirewallPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getKioskMode()Landroid/sec/enterprise/kioskmode/KioskMode;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/kioskmode/KioskMode;

    invoke-direct {v1}, Landroid/sec/enterprise/kioskmode/KioskMode;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getLocationPolicy()Landroid/sec/enterprise/LocationPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/LocationPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/LocationPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getMiscPolicy()Landroid/sec/enterprise/general/MiscPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/general/MiscPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/general/MiscPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/PasswordPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/PasswordPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/RestrictionPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/RestrictionPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/RoamingPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/RoamingPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getSmartCardAccessPolicy()Landroid/sec/enterprise/SmartCardAccessPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/SmartCardAccessPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/SmartCardAccessPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/TimaKeystore;

    invoke-direct {v1}, Landroid/sec/enterprise/TimaKeystore;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    move-object v0, v1

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/WifiPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/WifiPolicy;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
