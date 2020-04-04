.class Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$1;
.super Lcom/android/settings/notification/SettingPref;
.source "SecSoundDefaultVolumeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;


# direct methods
.method varargs constructor <init>(Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 6

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method public isApplicable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 5

    iget v0, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$1;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$1;->mSetting:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$1;->getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$1;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$1;->mTwoState:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$1;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController$1;->mDropDown:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
