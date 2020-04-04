.class public Landroid/app/BluetoothSecureManagerService;
.super Landroid/bluetooth/IBluetoothSecureManagerService$Stub;
.source "BluetoothSecureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final DBG:Z = true

.field public static final Name:Ljava/lang/String; = "bluetooth_secure_mode_manager"

.field public static final SECURE_MANAGER_ENABLE:Ljava/lang/String; = "secure_mode_enable"

.field public static final SECURE_MANAGER_WHITE_LIST_ENABLE:Ljava/lang/String; = "white_list_enable"

.field public static final SECURE_MANAGER_WHITE_LIST_MAX:Ljava/lang/String; = "white_list_max_index"

.field public static final SECURE_MANAGER_WHITE_LIST_PREFIX:Ljava/lang/String; = "white_list"

.field private static final TAG:Ljava/lang/String; = "BluetoothSecureManagerService"


# instance fields
.field private final SECURE_CONFIG_PATH:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mPrefs:Landroid/app/SharedPreferencesImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/system/bt_secure_manager_config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BluetoothSecureManagerService;->SECURE_CONFIG_PATH:Ljava/lang/String;

    iput-object p1, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/app/SharedPreferencesImpl;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->SECURE_CONFIG_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/SharedPreferencesImpl;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    return-void
.end method

.method private enforcePermission()V
    .locals 3

    iget-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.BLUETOOTH_SECUREMODE_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final findWhiteListFreeIndex()I
    .locals 4

    iget-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v1, "white_list_max_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_1

    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v3, v2}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final findWhiteListIndex(Ljava/lang/String;I)I
    .locals 5

    iget-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v1, "white_list_max_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "white_list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v3, v2}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->cod:I

    if-ne v4, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static final getSecureSettingName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method private final getWhiteListKey(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "white_list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final packWhiteListValue(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p3, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private final unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    .locals 7

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSecureManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unpackWhiteListValue v: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; split len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    invoke-direct {v1, v2}, Landroid/app/BluetoothSecureManagerService$WhiteListValue;-><init>(Landroid/app/BluetoothSecureManagerService$1;)V

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->name:Ljava/lang/String;

    :cond_1
    array-length v2, v0

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    aget-object v2, v0, v3

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->cod:I

    :cond_2
    array-length v2, v0

    if-le v2, v4, :cond_3

    array-length v2, v0

    sub-int/2addr v2, v4

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v1, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->uuids:[Ljava/lang/String;

    nop

    :goto_0
    move v3, v4

    array-length v4, v0

    if-ge v3, v4, :cond_3

    iget-object v4, v1, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->uuids:[Ljava/lang/String;

    add-int/lit8 v5, v3, -0x2

    aget-object v6, v0, v3

    aput-object v6, v4, v5

    add-int/lit8 v4, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 7

    const-string v0, "BluetoothSecureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWhiteList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; cod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-string v1, "BluetoothSecureManagerService"

    const-string v2, "addWhiteList: uuids is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "BluetoothSecureManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWhiteList: uuids: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/app/BluetoothSecureManagerService;->enforcePermission()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v1}, Landroid/app/SharedPreferencesImpl;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "BluetoothSecureManagerService"

    const-string v3, "addWhiteList 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Landroid/app/BluetoothSecureManagerService;->findWhiteListIndex(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "BluetoothSecureManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addWhiteList findWhiteListIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v2, :cond_1

    invoke-direct {p0}, Landroid/app/BluetoothSecureManagerService;->findWhiteListFreeIndex()I

    move-result v3

    move v2, v3

    :cond_1
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v4, "white_list_max_index"

    invoke-virtual {v3, v4, v0}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "BluetoothSecureManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addWhiteList max index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v2, v0, :cond_2

    const-string/jumbo v3, "white_list_max_index"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/app/BluetoothSecureManagerService;->packWhiteListValue(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWhiteList index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; packed v:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v4, 0x1

    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableSecureMode(Z)Z
    .locals 3

    const-string v0, "BluetoothSecureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableSecureMode enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "secure_mode_enable"

    invoke-virtual {p0, v0, p1}, Landroid/app/BluetoothSecureManagerService;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public enableWhiteList(Z)Z
    .locals 3

    const-string v0, "BluetoothSecureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableWhiteList, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "white_list_enable"

    invoke-virtual {p0, v0, p1}, Landroid/app/BluetoothSecureManagerService;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getSecureModeSetting(Ljava/lang/String;)I
    .locals 5

    const-string v0, "BluetoothSecureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecureModeSetting, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-static {p1}, Landroid/app/BluetoothSecureManagerService;->getSecureSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "BluetoothSecureManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecureModeSetting name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getWhiteListCod(I)I
    .locals 3

    const-string v0, "BluetoothSecureManagerService"

    const-string v1, "getWhiteListCod"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->cod:I

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getWhiteListFirstIndex()I
    .locals 4

    const-string v0, "BluetoothSecureManagerService"

    const-string v1, "getWhiteListFirstIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v1, "white_list_max_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "BluetoothSecureManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWhiteListFirstIndex: max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_1

    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v3, v2}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWhiteListName(I)Ljava/lang/String;
    .locals 4

    const-string v0, "BluetoothSecureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWhiteListName, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSecureManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWhiteListName, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; values: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->name:Ljava/lang/String;

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getWhiteListNextIndex(I)I
    .locals 5

    const-string v0, "BluetoothSecureManagerService"

    const-string v1, "getWhiteListNextIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v2, "white_list_max_index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    :goto_0
    if-gt v2, v1, :cond_2

    invoke-direct {p0, v2}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v4, v3}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWhiteListUuids(I)[Ljava/lang/String;
    .locals 3

    const-string v0, "BluetoothSecureManagerService"

    const-string v1, "getWhiteListUuids"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->uuids:[Ljava/lang/String;

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public isSecureModeEnabled()Z
    .locals 2

    const-string v0, "BluetoothSecureManagerService"

    const-string/jumbo v1, "isSecureModeEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "secure_mode_enable"

    invoke-virtual {p0, v0}, Landroid/app/BluetoothSecureManagerService;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWhiteListEnabled()Z
    .locals 2

    const-string v0, "BluetoothSecureManagerService"

    const-string/jumbo v1, "isWhiteListEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "white_list_enable"

    invoke-virtual {p0, v0}, Landroid/app/BluetoothSecureManagerService;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public removeWhiteList(Ljava/lang/String;I)Z
    .locals 5

    const-string v0, "BluetoothSecureManagerService"

    const-string/jumbo v1, "removeWhiteList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/app/BluetoothSecureManagerService;->enforcePermission()V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/app/BluetoothSecureManagerService;->findWhiteListIndex(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v2}, Landroid/app/SharedPreferencesImpl;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v4, "white_list_max_index"

    invoke-virtual {v3, v4, v1}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const-string/jumbo v3, "white_list_max_index"

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-direct {p0, v0}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit p0

    const/4 v3, 0x1

    return v3

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSecureModeSetting(Ljava/lang/String;I)Z
    .locals 3

    const-string v0, "BluetoothSecureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecureModeSetting, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/app/BluetoothSecureManagerService;->enforcePermission()V

    iget-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v0}, Landroid/app/SharedPreferencesImpl;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Landroid/app/BluetoothSecureManagerService;->getSecureSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "BluetoothSecureManagerService"

    const-string/jumbo v2, "setSecureModeSetting calling apply()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "BluetoothSecureManagerService"

    const-string/jumbo v2, "setSecureModeSetting apply() returned"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method
