.class public Lcom/samsung/android/settings/csc/CscSettingsLoader;
.super Ljava/lang/Object;
.source "CscSettingsLoader.java"


# instance fields
.field private final PATH_OPERATORS_DEFAULTRINGER:Ljava/lang/String;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private mContext:Landroid/content/Context;

.field private mParser:Lcom/samsung/android/settings/csc/CscParser;

.field private mResolver:Landroid/content/ContentResolver;

.field prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Operators.DefaultRinger"

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->PATH_OPERATORS_DEFAULTRINGER:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const-string v0, "USER_PREFERENCES"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public update()V
    .locals 8

    new-instance v0, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v1, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "CscSettingsLoader"

    const-string v3, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v3, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "auto_time"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "auto_time_zone"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v3, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "auto_time"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "auto_time_zone"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const-string v0, "CscSettingsLoader"

    const-string v3, "Timezone Update is not found"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v3, "Settings.Main.Sound.MediaVolume"

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings.Main.Sound.MediaVolume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v5, "Settings.Main.Sound.MediaVolume"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const-string v3, "Settings.Main.Sound.MediaVolume"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "CscSettingsLoader"

    const-string v3, "Media volume is not found"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v3, "Settings.Main.Sound.MsgToneVolume"

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings.Main.Sound.NotificationVolume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v5, "Settings.Main.Sound.MsgToneVolume"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const-string v3, "Settings.Main.Sound.MsgToneVolume"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "CscSettingsLoader"

    const-string v3, "Notification volume is not found"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v3, "Settings.Main.Sound.RngVolume"

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    const-string v0, "CscSettingsLoader"

    const-string v4, "Settings.Main.Sound.RingVolume"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Settings.Main.Sound.RngVolume"

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "CscSettingsLoader"

    const-string v4, "Ring Volume is not found"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v4, "Settings.Main.Sound.ALARMVolume"

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    if-eqz v0, :cond_6

    const-string v0, "CscSettingsLoader"

    const-string v5, "Settings.Main.Sound.AlarmVolume"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Settings.Main.Sound.ALARMVolume"

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v0, "CscSettingsLoader"

    const-string v5, "ALARM Volume is not found"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v5, "Settings.Main.Sound.RngToneAlertType"

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "CscSettingsLoader"

    const-string v5, "Settings.Main.Sound.RngToneAlertType"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Settings.Main.Sound.RngToneAlertType"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateSilentMode(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const-string v0, "CscSettingsLoader"

    const-string v5, "RngToneAlertType is not found"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v5, "Settings.Main.Sound.KeyTone.KeyVolume"

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "CscSettingsLoader"

    const-string v5, "Settings.Main.Sound.KeyTone.KeyVolume"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Settings.Main.Sound.KeyTone.KeyVolume"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    goto :goto_6

    :cond_8
    const-string v0, "CscSettingsLoader"

    const-string v5, "KeyTones is not found"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    const-string v5, "CscSettingsLoader"

    const-string v6, "Settings.Main.Phone.BackLightTime"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "15sec"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_off_timeout"

    const/16 v7, 0x3a98

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "30sec"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1min"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_off_timeout"

    const v7, 0xea60

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2min"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_off_timeout"

    const v7, 0x1d4c0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5min"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_off_timeout"

    const v7, 0x493e0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "10min"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const v6, 0x927c0

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "screen_off_timeout"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    :cond_e
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v7, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "30min"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v7, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    invoke-virtual {v5, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    if-eqz v0, :cond_f

    const-string v5, "j3y17qlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "screen_off_timeout"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    :cond_f
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_off_timeout"

    const v7, 0x1b7740

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    :cond_10
    const-string v5, "CscSettingsLoader"

    const-string v6, "BackLight Time is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_7
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Sound.TouchTone"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    const-string v5, "CscSettingsLoader"

    const-string v6, "Settings.Main.Sound.TouchTone"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Sound.TouchTone"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "sound_effects_enabled"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_12
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Sound.TouchTone"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "sound_effects_enabled"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_13
    const-string v5, "CscSettingsLoader"

    const-string v6, "Touch Sounds is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_8
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.PowerSavingMode"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    const-string v5, "CscSettingsLoader"

    const-string v6, "Setting Power Saving Mode"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.PowerSavingMode"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "psm_switch"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9

    :cond_15
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.PowerSavingMode"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "psm_switch"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9

    :cond_16
    const-string v5, "CscSettingsLoader"

    const-string v6, "Setting Power Saving Mode is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_9
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.GPS.GPSActivation"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    const-string v5, "CscSettingsLoader"

    const-string v6, "Setting GPS Satelites"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "location_providers_allowed"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "network"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.GPS.GPSActivation"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "location_providers_allowed"

    const-string v7, "gps,network"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a

    :cond_18
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.GPS.GPSActivation"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "location_providers_allowed"

    const-string v7, "-gps"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a

    :cond_19
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.GPS.GPSActivation"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "location_providers_allowed"

    const-string v7, "gps"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a

    :cond_1a
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.GPS.GPSActivation"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "location_providers_allowed"

    const-string v7, "-gps"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a

    :cond_1b
    const-string v5, "CscSettingsLoader"

    const-string v6, "GPS Satelites is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_a
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.Activation"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e

    const-string v5, "CscSettingsLoader"

    const-string v6, "Settings.Main.Phone.Motion.MotionActivation"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.Activation"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_engine"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_b

    :cond_1d
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.Activation"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_engine"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_b

    :cond_1e
    const-string v5, "CscSettingsLoader"

    const-string v6, "MotionActivation is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_b
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.GlanceView"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_21

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_GLANCE_VIEW"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    const-string v5, "CscSettingsLoader"

    const-string v6, "Settings.Main.Phone.Motion.GlanceView"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.GlanceView"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_glance_view"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_c

    :cond_20
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.GlanceView"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_glance_view"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_c

    :cond_21
    const-string v5, "CscSettingsLoader"

    const-string v6, "GlanceView is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_c
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.DirectCall"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_24

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    const-string v5, "CscSettingsLoader"

    const-string v6, "Settings.Motion.DirctCall"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.DirectCall"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pick_up_to_call_out"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_d

    :cond_23
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.DirectCall"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pick_up_to_call_out"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_d

    :cond_24
    const-string v5, "CscSettingsLoader"

    const-string v6, "DirctCall is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_d
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_27

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    const-string v5, "CscSettingsLoader"

    const-string v6, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pick_up"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e

    :cond_26
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pick_up"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e

    :cond_27
    const-string v5, "CscSettingsLoader"

    const-string v6, "SmartAlert is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_e
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.TurnOver"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2a

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string v5, "CscSettingsLoader"

    const-string v6, "Settings.Main.Phone.Motion.TurnOver"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.TurnOver"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_overturn"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f

    :cond_29
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.TurnOver"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_overturn"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f

    :cond_2a
    const-string v5, "CscSettingsLoader"

    const-string v6, "TurnOver is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_f
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2d

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const-string v5, "CscSettingsLoader"

    const-string v6, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "surface_palm_swipe"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10

    :cond_2c
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "surface_palm_swipe"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10

    :cond_2d
    const-string v5, "CscSettingsLoader"

    const-string v6, "PalmSwipe is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_10
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_30

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    const-string v5, "CscSettingsLoader"

    const-string v6, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "surface_palm_touch"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_11

    :cond_2f
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v6, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "surface_palm_touch"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_11

    :cond_30
    const-string v5, "CscSettingsLoader"

    const-string v6, "PalmTouch is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_11
    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "PREF_RINGTONE_SET"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "PREF_NOTIFICATION_SET"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    iget-object v5, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "PREF_ALARMTONE_SET"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateRingtones(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateRingtones(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateRingtones(I)V

    return-void
.end method

.method public updateRingtones(I)V
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Landroid/media/RingtoneManager;

    iget-object v2, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_UseChameleon"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    new-instance v4, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    const-string v7, "Operators.DefaultRinger"

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v6}, Landroid/media/RingtoneManager;->setType(I)V

    iget-object v7, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v8, "Settings.Main.Sound.RingTone.src"

    invoke-virtual {v7, v8, v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    const-string v7, "CscSettingsLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Chameleon Tag_Str: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    move/from16 v4, p1

    :goto_0
    const-string v7, "CscSettingsLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting Ringtones (type) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-ne v4, v6, :cond_2

    invoke-virtual {v2, v6}, Landroid/media/RingtoneManager;->setType(I)V

    iget-object v9, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v10, "Settings.Main.Sound.RingTone.src"

    invoke-virtual {v9, v10, v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    const-string v9, "CscSettingsLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1. Tag_Str: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-ne v4, v8, :cond_3

    invoke-virtual {v2, v8}, Landroid/media/RingtoneManager;->setType(I)V

    iget-object v9, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v10, "Settings.Main.Sound.MessageTone.src"

    invoke-virtual {v9, v10, v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    const-string v9, "CscSettingsLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1. Tag_Str: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-ne v4, v7, :cond_4

    invoke-virtual {v2, v7}, Landroid/media/RingtoneManager;->setType(I)V

    iget-object v9, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v10, "Settings.Main.Sound.AlarmTone.src"

    invoke-virtual {v9, v10, v5, v6}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    const-string v9, "CscSettingsLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1. Tag_Str: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    move-object v3, v0

    if-eqz v3, :cond_5

    const-string v9, "(.*)&amp;(.*)"

    invoke-virtual {v3, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "&amp;"

    const-string v10, "&"

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "CscSettingsLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tag_Str change (before : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " / after : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v9, v0

    if-eqz v9, :cond_19

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    if-ne v4, v6, :cond_6

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string v10, "PREF_RINGTONE_SET"

    invoke-interface {v0, v10, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v10, "PREF_RINGTONE_SET"

    invoke-interface {v0, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "CscSettingsLoader"

    const-string v10, "CSC Ringtone found: PREF_RINGTONE_SET(1)"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    if-ne v4, v8, :cond_7

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string v10, "PREF_NOTIFICATION_SET"

    invoke-interface {v0, v10, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v10, "PREF_NOTIFICATION_SET"

    invoke-interface {v0, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "CscSettingsLoader"

    const-string v10, "CSC Notification found: PREF_NOTIFICATION_SET(1)"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    if-ne v4, v7, :cond_8

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string v10, "PREF_ALARMTONE_SET"

    invoke-interface {v0, v10, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v10, "PREF_ALARMTONE_SET"

    invoke-interface {v0, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "CscSettingsLoader"

    const-string v10, "CSC Alarmtone found: PREF_ALARMTONE_SET(1)"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    const-string/jumbo v0, "title"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v5

    :goto_3
    move v12, v0

    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Ringtone title : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, "CscSettingsLoader"

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Ringtone equalsIgnoreCase (position): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v15, "CscSettingsLoader"

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v12, 0x1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    nop

    move v0, v5

    const/4 v5, 0x0

    goto :goto_3

    :cond_a
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v12, v0, :cond_b

    goto/16 :goto_9

    :cond_b
    invoke-virtual {v2, v12}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v5

    const-string v0, "CscSettingsLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ringtone uri : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_11

    const/4 v13, 0x3

    if-ne v4, v6, :cond_d

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    if-eqz v5, :cond_c

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "DEBUG_RINGTONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CscSettings : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_c
    const-string v0, "CscSettingsLoader"

    const-string v6, "CSC Ringtone was set : Before PREF_RINGTONE_SET(3)"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x2710

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v6, v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "PREF_RINGTONE_SET"

    invoke-interface {v0, v6, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "CscSettingsLoader"

    const-string v6, "CSC Ringtone was set : PREF_RINGTONE_SET(3)"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_d
    if-ne v4, v8, :cond_f

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "DEBUG_RINGTONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CscSettings : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_e
    const-string v7, ""

    :goto_6
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "PREF_NOTIFICATION_SET"

    invoke-interface {v0, v6, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "CscSettingsLoader"

    const-string v6, "CSC Notification was set : PREF_NOTIFICATION_SET(3)"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    if-ne v4, v7, :cond_11

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "DEBUG_RINGTONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CscSettings : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_10
    const-string v7, ""

    :goto_7
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "PREF_ALARMTONE_SET"

    invoke-interface {v0, v6, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "CscSettingsLoader"

    const-string v6, "CSC Alarmtone was set : PREF_ALARMTONE_SET(3)"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_8
    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b

    :cond_12
    :goto_9
    const-string v0, "CscSettingsLoader"

    const-string v5, "No matched ringtones"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v6, :cond_14

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "PREF_RINGTONE_SET"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_13

    const-string v0, "CscSettingsLoader"

    const-string v5, "Aleady failed. The Ringtone is not exist"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-void

    :cond_13
    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "PREF_RINGTONE_SET"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "CscSettingsLoader"

    const-string v5, "Ringtone not found. Media DB was not prepared: PREF_RINGTONE_SET(2)"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_14
    if-ne v4, v8, :cond_16

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "PREF_NOTIFICATION_SET"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_15

    const-string v0, "CscSettingsLoader"

    const-string v5, "Aleady failed. Notification is not exist"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-void

    :cond_15
    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "PREF_NOTIFICATION_SET"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "CscSettingsLoader"

    const-string v5, "Notification not found. Media DB was not prepared: PREF_NOTIFICATION_SET(2)"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_16
    if-ne v4, v7, :cond_18

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "PREF_ALARMTONE_SET"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_17

    const-string v0, "CscSettingsLoader"

    const-string v5, "Aleady failed. Alarmtone is not exist"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-void

    :cond_17
    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "PREF_ALARMTONE_SET"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "CscSettingsLoader"

    const-string v5, "Alarmtone not found. Media DB was not prepared: PREF_ALARMTONE_SET(2)"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_a
    iget-object v0, v1, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-void

    :cond_19
    :goto_b
    return-void
.end method

.method public updateSilentMode(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "CscSettingsLoader"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const-string v2, "melody"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " melody"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :cond_0
    const-string v2, "mute"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : mute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "vib"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v2, "CscSettingsLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : vib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :cond_2
    const-string v2, "CscSettingsLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : vibmelody"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "vibrate_when_ringing"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    goto :goto_1

    :cond_3
    const-string v1, "CscSettingsLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public updateVolume(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string v1, "CscSettingsLoader"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    invoke-virtual {v1, p2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "CscSettingsLoader"

    const-string/jumbo v4, "updateVolume explain error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_1

    :cond_0
    const-string v1, "CscSettingsLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
