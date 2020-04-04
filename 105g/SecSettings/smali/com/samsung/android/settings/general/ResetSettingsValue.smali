.class public Lcom/samsung/android/settings/general/ResetSettingsValue;
.super Ljava/lang/Object;
.source "ResetSettingsValue.java"


# instance fields
.field public isSupportLightSensor:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationFilename_2:Ljava/lang/String;

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneFilename_2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->isSupportLightSensor:Z

    return-void
.end method

.method private SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v8, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data like \'%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p5

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    const/4 v6, 0x0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v8, p3

    invoke-static {v8, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-static {v10, v0, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const-string v9, "ResetSettingsValue"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Write again. Default "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is ["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "]  Result is ["

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v10, p1

    move-object/from16 v8, p3

    const-string v6, "ResetSettingsValue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning! getCount() of Cursor for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " in internal DB is ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_1
    move-object/from16 v10, p1

    move-object/from16 v8, p3

    const-string v6, "ResetSettingsValue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning! Cursor for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " in internal DB is null."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_2
    move-object/from16 v10, p1

    move-object/from16 v8, p3

    move-object/from16 v12, p5

    const-string v6, "ResetSettingsValue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning! Cursor for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " in setting DB is null."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private loadDefRingtone()V
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsValue;->setDefaultRingtoneFileNames()V

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v4, "alarm_alert"

    iget-object v5, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    move-object v0, p0

    move-object v1, v8

    move-object v2, v7

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/general/ResetSettingsValue;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->setRingtonesAsInitValue(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->setRingtonesAsInitValue(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "ringtone_2"

    iget-object v5, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mDefaultRingtoneFilename_2:Ljava/lang/String;

    move-object v0, p0

    move-object v1, v8

    move-object v2, v7

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/general/ResetSettingsValue;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "notification_sound_2"

    iget-object v5, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mDefaultNotificationFilename_2:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/general/ResetSettingsValue;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static readSalesCode()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private resetBrightnessSettings()V
    .locals 6

    const-string v0, "ResetSettingsValue"

    const-string v1, "reset Brightness Settings"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_CONFIG_CONTROL_AUTO_BRIGHTNESS"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const-string v0, "ResetSettingsValue"

    const-string v1, "reset Usage pattern"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->resetPersonalAutoBrightnessData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->supportLightSensor(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const-string v3, "ResetSettingsValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "automaticAvailable= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", config_val= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MTR"

    invoke-static {}, Lcom/samsung/android/settings/general/ResetSettingsValue;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "screen_brightness_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "screen_brightness_mode"

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return-void
.end method

.method private resetSpenSettings()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_detect_mode_disabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2}, Lcom/samsung/android/hardware/SemHardwareInterface;->setEPenSavingmode(I)Z

    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mDefaultRingtoneFilename:Ljava/lang/String;

    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mDefaultNotificationFilename:Ljava/lang/String;

    const-string v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.config.ringtone_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mDefaultRingtoneFilename_2:Ljava/lang/String;

    const-string v0, "ro.config.notification_sound_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mDefaultNotificationFilename_2:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public loadCSC()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/csc/CscSettingsLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->update()V

    return-void
.end method

.method public resetAllSettings(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsValue;->resetGlobalSettings()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsValue;->resetDNDSettings()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsValue;->resetSystemSettings()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsValue;->resetSecureSettings()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsValue;->resetFontSettings()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsValue;->resetDisplaySizeSettings()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsValue;->resetWindDownSettings()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsValue;->loadCSC()V

    return-void
.end method

.method public resetDNDSettings()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "ResetSettingsValue"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public resetDisplaySizeSettings()V
    .locals 25

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v0, 0x3

    iget-object v4, v1, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportBoostMode()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sem_perfomance_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    iget-object v8, v1, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "easy_mode_switch"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v5, :cond_2

    move v8, v5

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    const-string v9, "WQHD,FHD,HD"

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    if-nez v4, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    and-int/lit8 v0, v0, -0x2

    :cond_4
    if-eqz v8, :cond_5

    and-int/lit8 v0, v0, -0x3

    :cond_5
    move v9, v0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v10, v0

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/16 v0, 0x1e0

    move v13, v0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, v6, v10}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    invoke-interface {v0, v6}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v14

    move v11, v14

    const-string v14, "ResetSettingsValue"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetDisplaySizeSettings() default LCD size : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "ResetSettingsValue"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "resetDisplaySizeSettings() default density : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v14, "display_size_forced"

    invoke-static {v6, v14}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v6, :cond_7

    :try_start_1
    const-string v15, ""

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, ","

    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    array-length v14, v15

    if-le v14, v5, :cond_6

    const/4 v14, 0x0

    aget-object v14, v15, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_6
    const/16 v14, 0x5a0

    :goto_3
    goto :goto_4

    :catch_0
    move-exception v0

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    goto/16 :goto_9

    :cond_7
    :try_start_2
    iget v14, v10, Landroid/graphics/Point;->x:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_4
    move/from16 v21, v14

    if-eqz v8, :cond_8

    :try_start_3
    iget-object v14, v1, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "preserved_density_standard_mode"

    invoke-static {v14, v15, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_8
    packed-switch v9, :pswitch_data_0

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    :try_start_4
    const-string v2, "ResetSettingsValue"
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_7

    :pswitch_0
    :try_start_5
    const-string v5, "ResetSettingsValue"

    const-string v14, "resetDisplaySizeSettings() Clear Resolution&density "

    invoke-static {v5, v14}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportBoostMode()Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v10, Landroid/graphics/Point;->x:I

    const/16 v14, 0x5a0

    if-lt v5, v14, :cond_9

    const/4 v15, 0x0

    iget v5, v10, Landroid/graphics/Point;->x:I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move/from16 v22, v2

    move/from16 v23, v3

    int-to-double v2, v5

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    mul-double v2, v2, v16

    double-to-int v2, v2

    :try_start_6
    iget v3, v10, Landroid/graphics/Point;->y:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move/from16 v24, v4

    int-to-double v3, v3

    mul-double v3, v3, v16

    double-to-int v3, v3

    int-to-double v4, v11

    mul-double v4, v4, v16

    double-to-int v4, v4

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object v14, v0

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    :try_start_7
    invoke-interface/range {v14 .. v20}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensity(IIIIZZ)V

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move/from16 v24, v4

    goto/16 :goto_9

    :cond_9
    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    const/4 v15, 0x0

    iget v2, v10, Landroid/graphics/Point;->x:I

    iget v3, v10, Landroid/graphics/Point;->y:I

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object v14, v0

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v11

    invoke-interface/range {v14 .. v20}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensity(IIIIZZ)V

    goto/16 :goto_8

    :pswitch_1
    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    mul-int v2, v11, v21

    iget v3, v10, Landroid/graphics/Point;->x:I

    div-int/2addr v2, v3

    move v13, v2

    const-string v2, "ResetSettingsValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetDisplaySizeSettings() Clear Density density : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v2, v13}, Lcom/samsung/android/settings/display/SecDisplayUtils;->ApplyForcedDisplayDensity(Landroid/content/Context;I)V

    goto :goto_8

    :pswitch_2
    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    const-string v2, "ResetSettingsValue"

    const-string v3, "resetDisplaySizeSettings() Clear Resolution"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportBoostMode()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, v10, Landroid/graphics/Point;->x:I

    const/16 v3, 0x5a0

    if-lt v2, v3, :cond_a

    const/4 v2, 0x1

    :goto_5
    move v12, v2

    goto :goto_6

    :cond_a
    iget v2, v10, Landroid/graphics/Point;->x:I

    const/16 v3, 0x5a0

    if-lt v2, v3, :cond_b

    const/4 v2, 0x2

    goto :goto_5

    :cond_b
    iget v2, v10, Landroid/graphics/Point;->x:I

    const/16 v3, 0x2d0

    if-le v2, v3, :cond_c

    iget v2, v10, Landroid/graphics/Point;->x:I

    const/16 v3, 0x438

    if-gt v2, v3, :cond_c

    const/4 v2, 0x1

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    :goto_6
    iget-object v2, v1, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v2, v12, v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setSelectedScreenResolution(Landroid/content/Context;IZ)V

    goto :goto_8

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetDisplaySizeSettings() clearMode +"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    nop

    move/from16 v0, v21

    return-void

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    :goto_9
    const-string v2, "ResetSettingsValue"

    const-string/jumbo v3, "windowManager API exception!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetFontSettings()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string v1, "prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "selectedFont"

    const-string v4, "MONOTYPE"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_0
    new-instance v3, Lcom/samsung/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/samsung/android/settings/flipfont/FontWriter;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string v5, "sans.loc"

    const-string v6, "default#default"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "persist.sys.font_clarity"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSizeChangedIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontScale(Landroid/content/Context;I)F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontIndex(Landroid/content/Context;F)I

    move-result v6

    if-le v3, v6, :cond_0

    const-string v6, "large_font"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :try_start_1
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v8, :cond_1

    move v2, v8

    nop

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_DEFAULT_FONT_SIZE"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    :goto_2
    const v6, 0x3f8ccccd    # 1.1f

    :goto_3
    nop

    iget-object v8, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    iget-object v8, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "font_size"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_DEFAULT_FONT_SIZE"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v7, :cond_4

    const/4 v7, 0x3

    goto :goto_4

    :cond_4
    const/4 v7, 0x2

    :goto_4
    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "STANDARD_FONT_SIZE"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    return-void
.end method

.method public resetGlobalSettings()V
    .locals 15

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    nop

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/util/Map$Entry;

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/Map$Entry;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v4, v7

    const-string/jumbo v9, "twschedule"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AutomaticZenRule;

    invoke-virtual {v10}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Landroid/app/AutomaticZenRule;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    sget-object v7, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v7, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/16 v7, 0x16

    iput v7, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iput v6, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    const/4 v7, 0x7

    iput v7, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iput v6, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v2, v6}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v8

    invoke-virtual {v8, v3, v2}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    iget v8, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v9, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v8, v8, -0x11

    and-int/lit8 v8, v8, -0x9

    and-int/lit8 v8, v8, -0x5

    and-int/lit8 v8, v8, -0x3

    and-int/lit8 v8, v8, -0x2

    or-int/lit8 v8, v8, 0x20

    or-int/lit8 v8, v8, 0x40

    and-int/lit16 v8, v8, -0x81

    and-int/lit8 v9, v9, -0x2

    and-int/lit8 v9, v9, -0x3

    and-int/lit8 v9, v9, -0x5

    and-int/lit8 v9, v9, -0x9

    and-int/lit8 v9, v9, -0x11

    and-int/lit8 v9, v9, -0x21

    and-int/lit8 v9, v9, -0x41

    and-int/lit16 v9, v9, -0x81

    and-int/lit16 v9, v9, -0x101

    iget-object v10, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v10

    new-instance v11, Landroid/app/NotificationManager$Policy;

    iget v12, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v13, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-direct {v11, v8, v12, v13, v9}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    invoke-virtual {v10, v11}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    invoke-static {v11, v12, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v10, :cond_3

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "state"

    invoke-virtual {v11, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v12, 0x1000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v12, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "auto_time_zone"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "auto_time"

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v11, "USC"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v7, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "emergency_tone"

    invoke-static {v7, v11, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_4
    const-string v11, "CHA"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "emergency_tone"

    invoke-static {v11, v12, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "emergency_tone"

    invoke-static {v7, v11, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v11, "wifi_scan_always_enabled"

    invoke-static {v7, v11, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v11, "wifi_scan_always_enabled"

    invoke-static {v7, v11, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_4
    iget-object v7, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "data_powersaving_mode"

    invoke-static {v7, v11, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.samsung.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x10000000

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "tap_to_icon"

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    const-string v14, ""

    invoke-virtual {v11, v12, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "navigationbar_color"

    const v14, -0xd0d0e

    invoke-static {v11, v12, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "navigationbar_use_theme_default"

    invoke-static {v11, v12, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "navigationbar_recently_used_color"

    const-string v14, ""

    invoke-static {v11, v12, v14}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "navigationbar_key_order"

    invoke-static {v11, v12, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "navigationbar_unlock_with_home_button"

    invoke-static {v11, v12, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "navigationbar_pressure_user_level"

    const/4 v14, 0x3

    invoke-static {v11, v12, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "navigationbar_hide_bar"

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "navigation_bar_gesture_while_hidden"

    invoke-static {v11, v12, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v11, "navigation_bar_gesture_hint"

    invoke-static {v6, v11, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v11, "swipe_to_call_message"

    invoke-static {v6, v11, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string v11, "audio"

    invoke-virtual {v6, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iget-object v11, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "mode_ringer_time"

    const/16 v13, 0x3c

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v6, v13}, Landroid/media/AudioManager;->setMuteInterval(I)V

    return-void
.end method

.method public resetSecureSettings()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_cutout_hide_notch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_display_cutout_hide_notch"

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screensaver_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportScreenSaverWhenToDream()Z

    move-result v0

    const v1, 0x1120054

    const v3, 0x1120053

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "screensaver_activate_on_dock"

    iget-object v5, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screensaver_activate_on_sleep"

    iget-object v4, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "screensaver_activate_on_dock"

    iget-object v5, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screensaver_activate_on_sleep"

    iget-object v4, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screensaver_components"

    const-string v3, "com.android.dreams.basic/com.android.dreams.basic.Colors"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_badging"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "badge_app_icon_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "home_show_notification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bold_text"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public resetSystemSettings()V
    .locals 13

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsValue;->loadDefRingtone()V

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsValue;->resetSpenSettings()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "gps"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    const-string v2, "network"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_ONEHAND_MODE_POLICY"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    const-string v2, "DefaultOn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "any_screen_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "any_screen_enabled"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    const-string v2, "GestureType"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "one_handed_op_wakeup_type"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "one_handed_op_wakeup_type"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "any_screen_enabled"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "one_handed_op_wakeup_type"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "one_handed_op_show_hard_keys"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "is_enabled"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "db_popup_view_shortcut"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "db_split_screen_view_shortcut"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "multisound_app"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "multisound_devicetype"

    const/4 v4, -0x1

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "multisound_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_SupportComcastWifi"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_offload_network_notify"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_offload_network_notify"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    :goto_2
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.aodservice"

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "OFF"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v4, "CscFeature_AOD_ConfigDefStatus"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "aod_mode"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "aod_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilter()Z

    move-result v0

    const-wide/16 v4, 0x1a4

    const-wide/16 v6, 0x474

    const/4 v2, 0x2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "blue_light_filter"

    invoke-static {v0, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "blue_light_filter_opacity"

    const/4 v9, 0x5

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "blue_light_filter_scheduled"

    invoke-static {v0, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "blue_light_filter_type"

    invoke-static {v0, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "blue_light_filter_on_time"

    invoke-static {v0, v8, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "blue_light_filter_off_time"

    invoke-static {v0, v8, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isAllNAVendor()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "volumelimit_on"

    invoke-static {v0, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "volumelimit_set_password"

    invoke-static {v0, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "volume_limiter_value"

    const/16 v9, 0x9

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "sec_display_temperature_red"

    invoke-static {v0, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "sec_display_temperature_blue"

    invoke-static {v0, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "sec_display_temperature_green"

    invoke-static {v0, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v8, "CscFeature_Setting_SupportRealTimeNetworkSpeed"

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "network_speed"

    invoke-static {v0, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    const-string v0, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "settings_ui"

    invoke-static {v0, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsValue;->resetBrightnessSettings()V

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "screen_off_timeout_backup"

    invoke-static {v0, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_b

    const-string v8, "USC"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_b
    iget-object v8, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    const-string v10, "USC"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const v10, 0xea60

    goto :goto_4

    :cond_c
    const/16 v10, 0x7530

    :goto_4
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_5
    iget-object v8, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/settings/Rune;->supportPocketMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_pocket"

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocketModeDefaultValue()I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "direct_share"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :cond_e
    iget-object v8, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "direct_share"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_6
    iget-object v8, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "reduce_animations"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_ConfigTouchSensetivity"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "ON"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_adjust_touch"

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    :cond_f
    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_adjust_touch"

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    :cond_10
    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_adjust_touch"

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_7
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_air_action"

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_unlock"

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_writing_color_switch"

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_writing_color"

    const-string v11, ""

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "open_air_cmd_using_spen_btn"

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_11
    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "open_air_cmd_using_spen_btn"

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_8
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDoubleTapMenu()Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "double_tab_to_wake_up"

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_12
    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/Rune;->supportLiftToWakeSetting(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v9, "ro.product.first_api_level"

    invoke-static {v9, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/16 v10, 0x1c

    if-lt v9, v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lift_to_wake"

    invoke-static {v10, v11, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9

    :cond_13
    iget-object v10, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lift_to_wake"

    invoke-static {v10, v11, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_14
    :goto_9
    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "pointer_speed"

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v9, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "primary_mouse_button_option"

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSimpleStatsuBarDefaultValue()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "simple_status_bar"

    if-ne v9, v3, :cond_15

    move v12, v3

    goto :goto_a

    :cond_15
    move v12, v1

    :goto_a
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "display_battery_percentage"

    invoke-static {v10, v11, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "status_bar_show_network_information"

    invoke-static {v10, v11, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "display_night_theme"

    invoke-static {v10, v11, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "uimode"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/UiModeManager;

    invoke-virtual {v10, v3}, Landroid/app/UiModeManager;->setNightMode(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v11, "display_night_theme_scheduled"

    invoke-static {v3, v11, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "display_night_theme_scheduled_type"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_night_theme_on_time"

    invoke-static {v1, v2, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_night_theme_off_time"

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->resetTrafficSettings()V

    :cond_16
    return-void
.end method

.method public resetWindDownSettings()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wind_down_reset_settings"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wind_down_gray_scale_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
