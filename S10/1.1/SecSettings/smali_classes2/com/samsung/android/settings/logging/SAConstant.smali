.class public Lcom/samsung/android/settings/logging/SAConstant;
.super Ljava/lang/Object;
.source "SAConstant.java"


# static fields
.field public static mSettingsStatusDBList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/settings/logging/status/SettingDBData;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSettingsStatusLoggingIdList:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xcc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusLoggingIdList:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xc8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "location_providers_allowed"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1203

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "wifi_scan_always_enabled"

    const-string v4, "global"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1337

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "ble_scan_always_enabled"

    const-string v4, "global"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xe75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "nearby_scanning_enabled"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1c02

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "smart_bonding"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1c24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "mode_ringer_time_on"

    const-string v4, "global"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfa1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "vibrate_when_ringing"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "volumelimit_on"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1017

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "volumelimit_set_password"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1c57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "adjust_media_volume_only"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfa3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "VIB_RECVCALL_MAGNITUDE"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfa4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfa5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1c34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfaf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "sound_effects_enabled"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfb0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lockscreen_sounds_enabled"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfb1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "charging_sounds_enabled"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfb2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "haptic_feedback_enabled"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfb3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "dtmf_tone"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "sip_key_feedback_sound"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfb5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "sip_key_feedback_vibration"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfd3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "notification_badging"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfe8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "notification_badge_app_icon_type"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfe9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "home_show_notification_enabled"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x232b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lock_screen_show_notifications"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x2333

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lock_noticard_opacity"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x2341

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "notification_text_color_inversion"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1068

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "screen_brightness"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1ce9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "screen_brightness_mode"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x107d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "blue_light_filter"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "blue_light_filter_opacity"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1cf3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "blue_light_filter_scheduled"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1081

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "blue_light_filter_type"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1cf4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "blue_light_filter_on_time"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1cf5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "blue_light_filter_off_time"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x106c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "font_size"

    const-string v4, "global"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x106d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "flip_font_style"

    const-string v4, "global"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x107a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "screen_mode_setting"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "sec_display_preset_index"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "sec_display_temperature_custom"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "sec_display_temperature_red_temp"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "sec_display_temperature_green_temp"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "sec_display_temperature_blue_temp"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x120c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "easy_mode_switch"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1071

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "tap_to_icon"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x178f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "simple_status_bar"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1790

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "display_battery_percentage"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1074

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "screen_off_timeout"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x107c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "screen_off_pocket"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "display_night_theme"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "display_night_theme_scheduled"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "display_night_theme_scheduled_type"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "display_night_theme_on_time"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "display_night_theme_off_time"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigationbar_unlock_with_home_button"

    const-string v4, "global"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigationbar_key_order"

    const-string v4, "global"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigationbar_force_touch_enable"

    const-string v4, "global"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigationbar_pressure_user_level"

    const-string v4, "global"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigation_bar_gesture_while_hidden"

    const-string v4, "global"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigation_bar_gesture_hint"

    const-string v4, "global"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x10fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "fingerprint_gesture_quick"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x12f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "intelligent_sleep_mode"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1e00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "any_screen_enabled"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "one_handed_op_wakeup_type"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "double_tab_launch"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1111

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "enable_smart_capture"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1112

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "surface_palm_swipe"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1114

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "motion_pick_up"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1115

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "motion_merged_mute_pause"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "motion_pick_up_to_call_out"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1dec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "swipe_to_call_message"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1205

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "send_emergency_message"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1116

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "direct_share"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1117

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "hdr_effect"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1df6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "auto_adjust_touch"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1db3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "reduce_animations"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1db5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lift_to_wake"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "double_tab_to_wake_up"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1e19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "default_app_selection_option"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1e3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "instant_apps_enabled"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xf3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "assist_structure_enabled"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xf3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "assist_screenshot_enabled"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x119a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "show_password"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1ecd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lock_to_app_enabled"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x11aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lock_to_app_exit_locked"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1ed0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "require_password_to_decrypt"

    const-string v4, "global"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1e8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "strong_protection"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x25dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "security_update_db"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x25dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "use_wifi_only_db"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1230

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "backup_auto_restore"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x12d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "autofill_service"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1f59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "show_ime_with_hard_keyboard"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x125f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "tts_default_synth"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1260

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "tts_default_rate"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1261

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "pointer_speed"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x128e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "auto_time"

    const-string v4, "global"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1293

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "time_12_24"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1f69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "sec_silent_auto_reset"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x12c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "SOFTWARE_UPDATE_WIFI_ONLY2"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x12c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "SOFTWARE_UPDATE_SET_INSTALL_TIME"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x2138

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "screen_transition_effect"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x213a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "biometrics_prompt_type"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1179

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "remote_control"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x117c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "send_last_location"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x117d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "fmm_unlock_recovery"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x232f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "n_digits_pin_enabled"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x233b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lock_function_val"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x233f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lockdown_in_power_menu"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x2347

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "auto_swipe_main_user"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x234c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "dualclock_menu_settings"

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0xc39
        0xc89
        0xc8a
        0x1bbd
        0x1bc1
        0xdae
        0x1bdd
        0x1bde
        0x1bdf
        0x2589
        0xc8d
        0xc8e
        0xc8f
        0x1203
        0x1337
        0xe75
        0x1bf8
        0x1c02
        0x1c24
        0xfa1
        0x1014
        0x1017
        0xfa7
        0xfa8
        0xfa9
        0xfaa
        0x1c56
        0x1c57
        0xfa3
        0xfa4
        0xfa5
        0x1c34
        0xfab
        0xfac
        0xfae
        0xffc
        0xffe
        0xff4
        0x1020
        0x101c
        0x101e
        0x1021
        0x1022
        0xff6
        0x1c53
        0x1c54
        0xfaf
        0xfb0
        0xfb1
        0xfb2
        0xfb3
        0xfb4
        0xfb5
        0x1c2a
        0xfd3
        0xfe8
        0xfe9
        0xfd3
        0x232b
        0x2333
        0x2338
        0x2341
        0x232c
        0x1068
        0x1ce9
        0x107d
        0x1080
        0x1cf3
        0x1081
        0x1cf4
        0x1d06
        0x106c
        0x106d
        0x107a
        0x1d1f
        0x1d27
        0x1d1b
        0x1d1c
        0x1d1d
        0x1d20
        0x1d10
        0x120c
        0x1071
        0x107b
        0x1d43
        0x1d44
        0x1d45
        0x1d46
        0x1d47
        0x1d3a
        0x1d3b
        0x1d40
        0x1d3c
        0x1d3e
        0x1d3f
        0x178f
        0x1790
        0x1ca3
        0x1074
        0x107c
        0x1089
        0x10d0
        0x10fe
        0x12f0
        0x1e00
        0x1102
        0x1103
        0x1111
        0x1112
        0x1114
        0x1115
        0x1113
        0x1dec
        0x1116
        0x1117
        0x1df6
        0x1db3
        0x1db5
        0x1d2b
        0x1205
        0xf33
        0xf35
        0xf37
        0x1e19
        0x1e3f
        0xf3a
        0xf3d
        0xf3e
        0x1ebe
        0x1ec3
        0x2138
        0x213a
        0x119a
        0x25dc
        0x25dd
        0x119f
        0x1ecd
        0x11aa
        0x1ed0
        0x122b
        0x1230
        0x12d4
        0x1f41
        0x125d
        0x1f59
        0x125f
        0x1260
        0x1261
        0x128e
        0x1293
        0x1f5e
        0x1f69
        0x122e
        0x1f6c
        0x12c1
        0x12c2
        0x40
        0x41
        0x37
        0xb
        0x1e8e
        0x158
        0x2015
        0x2012
        0x2013
        0x2014
        0x204b
        0x204c
        0x20e1
        0x20f6
        0x20e5
        0x20e6
        0x211f
        0x2120
        0x2121
        0x1019
        0x101a
        0x101b
        0x101d
        0x101f
        0x1020
        0x1021
        0x1022
        0x102d
        0x102e
        0x102f
        0x1030
        0x1031
        0x1032
        0x1033
        0xff1
        0xff3
        0x1179
        0x117c
        0x117d
        0x232a
        0x232d
        0x232f
        0x233b
        0x233f
        0x2345
        0x2346
        0x2347
        0x234c
    .end array-data
.end method

.method public static getSettingsStatusDBList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/settings/logging/status/SettingDBData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusDBList:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getSettingsStustusLoggingIdList()[I
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/logging/SAConstant;->mSettingsStatusLoggingIdList:[I

    return-object v0
.end method
