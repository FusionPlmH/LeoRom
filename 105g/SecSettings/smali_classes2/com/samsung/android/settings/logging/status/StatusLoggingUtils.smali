.class public Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;
.super Ljava/lang/Object;
.source "StatusLoggingUtils.java"


# static fields
.field static final mListStatusSupportClass:[Ljava/lang/String;

.field private static mSettingStatusDBList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/settings/logging/status/SettingDBData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;->mSettingStatusDBList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.settings.ConnectionsSettings"

    const-string v2, "com.samsung.android.settings.WirelessSettings"

    const-string v3, "com.samsung.android.settings.CloudAccountSettings"

    const-string v4, "com.android.settings.DisplaySettings"

    const-string v5, "com.android.settings.applications.DefaultAppSettings"

    const-string v6, "com.android.settings.language.LanguageAndInputSettings"

    const-string v7, "com.android.settings.datausage.DataSaverSummary"

    const-string v8, "com.android.settings.datausage.DataUsageSummary"

    const-string v9, "com.samsung.android.settings.notification.SecVolumeSettings"

    const-string v10, "com.samsung.android.settings.notification.SoundSettings"

    const-string v11, "com.samsung.android.settings.notification.SecZenModeDNDSettings"

    const-string v12, "com.samsung.android.settings.notification.SecZenModeDNDPrioritySettings"

    const-string v13, "com.android.settings.notification.ZenModeBlockedEffectsSettings"

    const-string v14, "com.android.settings.fingerprint.FingerprintSettings"

    const-string v15, "com.samsung.android.settings.face.FaceSettings"

    const-string v16, "com.samsung.android.settings.fmm.FindMyMobileSettings"

    const-string v17, "com.samsung.android.settings.smartscan.SmartScanSettings"

    const-string v18, "com.samsung.android.settings.lockscreen.SecLockscreenNotificationApplist"

    const-string v19, "com.samsung.android.settings.lockscreen.LockScreenSettings"

    const-string v20, "com.samsung.android.settings.lockscreen.SecuredLockSettingsMenu"

    const-string v21, "com.samsung.android.settings.lockscreen.LockAppShortcutSettings"

    const-string v22, "com.samsung.android.settings.display.FullScreenAppHideCameraSettings"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;->mListStatusSupportClass:[Ljava/lang/String;

    return-void
.end method

.method public static checkLoggingInterval(Landroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "last_status_logging"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_logging_cnt"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v4}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v1

    const-wide/32 v8, 0x240c8400

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "last_status_logging"

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "status_logging_cnt"

    add-int/lit8 v3, v3, 0x1

    int-to-long v8, v3

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const/4 v0, 0x1

    :cond_0
    const-string v6, "Settings_SA_Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkLoggingInternal current time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " saved time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static checkSetupWizardComplete(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    return v3
.end method

.method public static getLoggingClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Settings_SA_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getSettingValue(Landroid/content/Context;Lcom/samsung/android/settings/logging/status/SettingDBData;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/SettingDBData;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4a16fc5d

    if-eq v2, v3, :cond_2

    const v3, -0x3604a489

    if-eq v2, v3, :cond_1

    const v3, -0x34e38dd1    # -1.0252847E7f

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const-string v2, "secure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "global"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/SettingDBData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/SettingDBData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/SettingDBData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_2
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/SettingDBData;->getDefault()Ljava/lang/String;

    move-result-object v0

    :cond_4
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "Settings_SA_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSettingValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/SettingDBData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStatusLoggingAPIData(Landroid/content/Context;)V
    .locals 12

    sget-object v0, Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;->mListStatusSupportClass:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;->getLoggingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v4}, Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;->getStatusLoggingProvider(Ljava/lang/Class;)Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    move-result-object v5

    invoke-interface {v5, p0}, Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;->getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/logging/status/StatusData;

    sget-boolean v9, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "Settings_SA_Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getStatusLoggingAPIData : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/settings/logging/status/StatusData;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v8}, Lcom/samsung/android/settings/logging/status/StatusData;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/samsung/android/settings/logging/status/StatusData;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/samsung/android/settings/logging/status/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static getStatusLoggingDBData(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Lcom/samsung/android/settings/logging/SAConstant;->getSettingsStatusDBList()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;->mSettingStatusDBList:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;->mSettingStatusDBList:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/logging/SAConstant;->getSettingsStustusLoggingIdList()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    sget-object v4, Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;->mSettingStatusDBList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/logging/status/SettingDBData;

    if-eqz v4, :cond_1

    invoke-static {p0, v4}, Lcom/samsung/android/settings/logging/status/StatusLoggingUtils;->getSettingValue(Landroid/content/Context;Lcom/samsung/android/settings/logging/status/SettingDBData;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "Settings_SA_Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStatusLoggingDBData : key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v5}, Lcom/samsung/android/settings/logging/status/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getStatusLoggingProvider(Ljava/lang/Class;)Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Settings_SA_Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " find field \'STATUS_LOGGING_PROVIDER in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "STATUS_LOGGING_PROVIDER"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Settings_SA_Utils"

    const-string v3, "Illegal argument when accessing field \'STATUS_LOGGING_PROVIDER\'"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "Settings_SA_Utils"

    const-string v3, "Illegal access to field \'STATUS_LOGGING_PROVIDER\'"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "Settings_SA_Utils"

    const-string v3, "Security exception for field \'STATUS_LOGGING_PROVIDER\'"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_4
    move-exception v1

    const-string v2, "Settings_SA_Utils"

    const-string v3, "Cannot find field \'STATUS_LOGGING_PROVIDER\'"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return-object v0
.end method
