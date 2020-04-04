.class public Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;
.super Ljava/lang/Object;
.source "NearbyScanningEnabler.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInit:Z

.field private mNearbyScanningObserver:Landroid/database/ContentObserver;

.field private mNearbyScanningSettingsSwitch:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mOnPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    instance-of v0, p2, Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroid/support/v7/preference/SwitchPreferenceCompat;

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroid/support/v7/preference/SwitchPreferenceCompat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNearbyScanningSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public init()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    const-string v1, "NearbyScanningEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nsValue value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroid/support/v7/preference/SwitchPreferenceCompat;

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-ne v0, v2, :cond_0

    const v3, 0x7f1219b4

    goto :goto_0

    :cond_0
    const v3, 0x7f1219b3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iput-boolean v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    :cond_2
    :goto_1
    const-string v1, "NearbyScanningEnabler"

    const-string v2, "Switch is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    return v1
.end method

.method public onDestroyView()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()Z
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "NearbyScanningEnabler"

    const-string v2, "Init is failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "NearbyScanningEnabler"

    const-string v2, "Context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v2, "NearbyScanningEnabler"

    const-string v3, "ContentResolver is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()Z
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "NearbyScanningEnabler"

    const-string v2, "Init is failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "NearbyScanningEnabler"

    const-string v2, "Context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v2, "NearbyScanningEnabler"

    const-string v3, "ContentResolver is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v2, 0x1

    :try_start_0
    const-string v3, "nearby_scanning_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroid/support/v7/preference/SwitchPreferenceCompat;

    check-cast v4, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-ne v3, v2, :cond_3

    const v5, 0x7f1219b4

    goto :goto_1

    :cond_3
    const v5, 0x7f1219b3

    :goto_1
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-ne v3, v2, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-virtual {v4, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    return v2

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-ne v3, v2, :cond_6

    move v1, v2

    nop

    :cond_6
    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return v2

    :cond_7
    const-string v2, "NearbyScanningEnabler"

    const-string v4, "Switch is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
