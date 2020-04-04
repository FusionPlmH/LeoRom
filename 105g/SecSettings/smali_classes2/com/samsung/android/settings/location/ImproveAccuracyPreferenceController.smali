.class public Lcom/samsung/android/settings/location/ImproveAccuracyPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "ImproveAccuracyPreferenceController.java"


# instance fields
.field private mPreference:Landroid/support/v7/preference/SecPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/location/LocationBasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "improve_location"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/location/ImproveAccuracyPreferenceController;->mPreference:Landroid/support/v7/preference/SecPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "improve_location"

    return-object v0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/location/ImproveAccuracyPreferenceController;->mPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    return-void
.end method
