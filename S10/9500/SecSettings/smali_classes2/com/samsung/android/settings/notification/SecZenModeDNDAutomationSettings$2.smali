.class Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$2;
.super Ljava/lang/Object;
.source "SecZenModeDNDAutomationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->updateControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$2;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->setChecked(Z)V

    :cond_2
    return v2
.end method
