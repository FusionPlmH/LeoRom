.class public Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "SecScreenRotationPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Landroid/support/v14/preference/SecSwitchPreference;

.field private mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "auto_rotate"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "auto_rotate"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "auto_rotate"

    return-object v0
.end method

.method public getUriListRequiringObservation()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;->mContext:Landroid/content/Context;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController$1;-><init>(Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    return-void
.end method

.method public updatePreference(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecScreenRotationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    return-void
.end method
