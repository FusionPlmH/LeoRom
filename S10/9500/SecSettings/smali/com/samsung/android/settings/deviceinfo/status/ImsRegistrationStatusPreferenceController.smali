.class public Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ImsRegistrationStatusPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsManager:[Lcom/sec/ims/ImsManager;

.field private mIsRegistered:[Z

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mRes:Landroid/content/res/Resources;

.field private mSimCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/sec/ims/ImsManager;

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mImsManager:[Lcom/sec/ims/ImsManager;

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mIsRegistered:[Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mSimCount:I

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mRes:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mSimCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;)[Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mIsRegistered:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mSimCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;)[Lcom/sec/ims/ImsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mImsManager:[Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method public static isShowImsStatus(Landroid/content/Context;I)Z
    .locals 8

    sget-object v0, Lcom/sec/ims/settings/ImsSettings;->GLOBAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_regi_info_in_sec_settings"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1, v3}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "ImsRegistrationStatusPreferenceController"

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const-string/jumbo v4, "show_regi_info_in_sec_settings"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ImsRegistrationStatusPreferenceController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isShowImsStatus: isShow "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3
    :goto_4
    const-string v3, "ImsRegistrationStatusPreferenceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isShowImsStatus: not found / slot : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return v2
.end method


# virtual methods
.method createImsService(Landroid/content/Context;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mImsManager:[Lcom/sec/ims/ImsManager;

    new-instance v1, Lcom/sec/ims/ImsManager;

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController$1;-><init>(Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;I)V

    invoke-direct {v1, p1, v2, p2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    aput-object v1, v0, p2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    :cond_0
    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "ims_reg"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isImsRegistered(I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const-string v1, "ImsRegistrationStatusPreferenceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isImsRegistered : true / slot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v0, "ImsRegistrationStatusPreferenceController"

    const-string v1, "isImsRegistered : false"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mSimCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/ims/ImsManager;->disconnectService()V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mImsManager:[Lcom/sec/ims/ImsManager;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mIsRegistered:[Z

    aput-boolean v0, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mSimCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->isShowImsStatus(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->createImsService(Landroid/content/Context;I)V

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "ImsRegistrationStatusPreferenceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Show IMS registration status is service is null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_2
    return-void
.end method

.method updateImsStatus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_ABOUTDEVICE_IMS_REGISTRATION_STATUS_SUMMARY_BY_VZW:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const v1, 0x7f1219b4

    goto :goto_0

    :cond_0
    const v1, 0x7f1219b3

    :goto_0
    move v0, v1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    const v1, 0x7f1218ea

    goto :goto_1

    :cond_2
    const v1, 0x7f1218e4

    :goto_1
    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/ImsRegistrationStatusPreferenceController;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
