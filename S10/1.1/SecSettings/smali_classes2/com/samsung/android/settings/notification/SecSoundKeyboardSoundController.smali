.class public Lcom/samsung/android/settings/notification/SecSoundKeyboardSoundController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "SecSoundKeyboardSoundController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v7, Lcom/samsung/android/settings/notification/SecSoundKeyboardSoundController$1;

    const-string v3, "keyboard_sound"

    const-string v4, "sip_key_feedback_sound"

    const/4 v0, 0x0

    new-array v6, v0, [I

    const/4 v2, 0x2

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/notification/SecSoundKeyboardSoundController$1;-><init>(Lcom/samsung/android/settings/notification/SecSoundKeyboardSoundController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v7, p0, Lcom/samsung/android/settings/notification/SecSoundKeyboardSoundController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void
.end method


# virtual methods
.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundKeyboardSoundController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x150

    const/16 v1, 0xfb4

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
