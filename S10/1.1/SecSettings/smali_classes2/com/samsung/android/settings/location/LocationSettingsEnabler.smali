.class public Lcom/samsung/android/settings/location/LocationSettingsEnabler;
.super Lcom/android/settings/location/LocationEnabler;
.source "LocationSettingsEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mActive:Z

.field private final mContext:Landroid/content/Context;

.field private final mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

.field private final mLocationModeObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/SwitchPreferenceCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mActive:Z

    new-instance v2, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object p2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    new-instance v0, Lcom/android/settings/location/LocationEnabler;

    invoke-direct {v0, p1, p0, p3}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mActive:Z

    new-instance v2, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object p2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    new-instance v0, Lcom/android/settings/location/LocationEnabler;

    invoke-direct {v0, p1, p0, p3}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/location/LocationSettingsEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->updatePrefSummary(I)V

    return-void
.end method

.method private updatePrefSummary(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const v1, 0x7f120cf0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const v1, 0x7f1219df

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onLocationModeChanged(IZ)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->updatePrefSummary(I)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v4, v3}, Lcom/android/settings/location/LocationEnabler;->getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v5, v3}, Lcom/android/settings/location/LocationEnabler;->hasShareLocationRestriction(I)Z

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v6, :cond_4

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v4}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    xor-int/lit8 v7, p2, 0x1

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v6

    if-eq v2, v6, :cond_4

    iget-boolean v6, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-boolean v6, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v6, :cond_8

    const-string v6, "gps"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/LocationPolicy"

    const-string v11, "isGPSStateChangeAllowed"

    invoke-static {v9, v10, v11, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const-string v11, "content://com.sec.knox.provider/LocationPolicy"

    const-string v12, "isLocationProviderBlocked"

    invoke-static {v10, v11, v12, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-ne v9, v1, :cond_5

    if-nez v10, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    xor-int/lit8 v11, p2, 0x1

    invoke-virtual {v1, v11}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    :cond_5
    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v0

    if-eq v2, v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_8
    const-string v0, "LocationSettingsEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLocationModeChanged : mSwitch = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLocationOptionChange(Ljava/lang/Object;Z)Z
    .locals 13

    const-string v0, "gps"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/LocationPolicy"

    const-string v4, "isGPSStateChangeAllowed"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/LocationPolicy"

    const-string v5, "isLocationProviderBlocked"

    invoke-static {v3, v4, v5, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    if-ne v3, v5, :cond_1

    :cond_0
    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    if-eqz v6, :cond_2

    return v5

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const-wide/16 v8, 0x0

    const/16 v10, 0xbbd

    if-eqz v7, :cond_4

    const/16 v7, 0x11f9

    if-eqz p2, :cond_3

    const-wide/16 v11, 0x3e8

    goto :goto_1

    :cond_3
    move-wide v11, v8

    :goto_1
    invoke-static {v10, v7, v11, v12}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v7, :cond_6

    const/16 v7, 0xc8f

    if-eqz p2, :cond_5

    const-wide/16 v8, 0x1

    nop

    :cond_5
    invoke-static {v10, v7, v8, v9}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_6
    if-eqz p2, :cond_9

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->showVzwLocationConsentDialog(Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    const-string v7, "DCM"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120ac8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120ac7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f1201a5

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v8, Lcom/samsung/android/settings/location/LocationSettingsEnabler$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$2;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)V

    invoke-virtual {v7, v4, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f1201a6

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v8, Lcom/samsung/android/settings/location/LocationSettingsEnabler$3;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$3;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)V

    invoke-virtual {v7, v4, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->setLocationMode(I)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->setLocationMode(I)V

    :goto_2
    return v5
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const-string v0, "gps"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/LocationPolicy"

    const-string v4, "isGPSStateChangeAllowed"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/LocationPolicy"

    const-string v5, "isLocationProviderBlocked"

    invoke-static {v3, v4, v5, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    if-ne v3, v5, :cond_1

    :cond_0
    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    if-eqz v6, :cond_2

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v7, v5}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    return v4

    :cond_2
    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onLocationOptionChange(Ljava/lang/Object;Z)Z

    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/settings/location/LocationEnabler;->setLocationEnabled(Z)V

    return v5
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v1, v2

    if-ne p2, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onLocationOptionChange(Ljava/lang/Object;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v2, p2}, Lcom/android/settings/location/LocationEnabler;->setLocationEnabled(Z)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->updatePrefSummary(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->refreshLocationMode()V

    return-void
.end method
