.class public Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;
.super Ljava/lang/Object;
.source "WifiDevicePolicyManager.java"


# static fields
.field private static sPropertyValue3lm:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->sPropertyValue3lm:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :catch_0
    move-exception v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    nop

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isAllowedToChangeUserPolicy(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v1, "getAllowUserPolicyChanges"

    const-string v2, "false"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiDevicePolicyManager"

    const-string v1, "isAllowedToChangeUserPolicy false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v1, "getPasswordHidden"

    const-string v2, "true"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiDevicePolicyManager"

    const-string v1, "isAllowedToShowPasswordHiddenView false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedToShowRetryDialog(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v1, "getPromptCredentialsEnabled"

    const-string v2, "false"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 3

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v1, "isEnterpriseNetwork"

    const-string v2, "true"

    invoke-static {p0, v0, v1, p1, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiDevicePolicyManager"

    const-string v1, "isAllowedToUseEnterpriseSsid false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedWifiChange3lm(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedWifiDirectEnabled(Landroid/content/Context;)Z
    .locals 4

    if-eqz p0, :cond_0

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v1, "isWifiDirectAllowed"

    const/4 v2, 0x0

    const-string v3, "false"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiDevicePolicyManager"

    const-string v1, "isAllowedWifiDirectEnabled false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedWifiEnabled(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v1, "isWifiEnabled"

    const-string v2, "false"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiDevicePolicyManager"

    const-string v1, "isAllowedWifiEnabled false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedWifiScanning(Landroid/content/Context;)Z
    .locals 4

    if-eqz p0, :cond_0

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v1, "isWifiScanningAllowed"

    const/4 v2, 0x0

    const-string v3, "false"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiDevicePolicyManager"

    const-string v1, "isAllowedWifiScanning false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedWifiStateChange(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v1, "isWifiStateChangeAllowed"

    const-string v2, "false"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiDevicePolicyManager"

    const-string v1, "isAllowedWifiStateChange false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
