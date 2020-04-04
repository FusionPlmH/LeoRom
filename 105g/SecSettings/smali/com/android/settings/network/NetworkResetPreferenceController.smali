.class public Lcom/android/settings/network/NetworkResetPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NetworkResetPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mRestrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/network/NetworkResetRestrictionChecker;

    invoke-direct {v0, p1}, Lcom/android/settings/network/NetworkResetRestrictionChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkResetPreferenceController;->mRestrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;

    iput-object p1, p0, Lcom/android/settings/network/NetworkResetPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkResetPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/NetworkResetPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/system/ResetDashboardFragment;->isResetEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "network_reset_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
