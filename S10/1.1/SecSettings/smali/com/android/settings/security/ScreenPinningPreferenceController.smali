.class public Lcom/android/settings/security/ScreenPinningPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ScreenPinningPreferenceController.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final KEY_SCREEN_PINNING:Ljava/lang/String; = "screen_pinning_settings"

.field private static final PKG_ACCESSIBILITY:Ljava/lang/String; = "com.samsung.accessibility"

.field private static final TAG:Ljava/lang/String; = "ScreenPinningPreferenceController"


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private final mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/OtherSecuritySettings;)V
    .locals 1

    const-string v0, "screen_pinning_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    iput-object p3, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/security/ScreenPinningPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/security/ScreenPinningPreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/ScreenPinningPreferenceController;->setLockToAppEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/security/ScreenPinningPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/security/ScreenPinningPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCurrentSecurityTitle()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f12129c

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/high16 v1, 0x10000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f12129b

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f121ae7

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f121aeb

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f121ae9

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isScreenLockUsed()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12129c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/security/ScreenPinningPreferenceController;->getCurrentSecurityTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_to_app_exit_locked"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setLockToAppEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_enabled"

    nop

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/settings/security/ScreenPinningPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/OtherSecuritySettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1ecd

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_exit_locked"

    invoke-direct {p0}, Lcom/android/settings/security/ScreenPinningPreferenceController;->isScreenLockUsed()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/settings/security/ScreenPinningPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "screen_pinning_settings"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1219df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1219de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-ne p1, v4, :cond_2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningPreferenceController;->screenPinningDisablePopup()V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/security/ScreenPinningPreferenceController;->setLockToAppEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v3}, Lcom/android/settings/security/ScreenPinningPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    :goto_1
    return v2

    :cond_2
    return v3
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/settings/security/ScreenPinningPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public screenPinningDisablePopup()V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12129a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v5, 0x7f1207e6

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    iget-object v5, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.accessibility"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u2022 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f120027

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x1030132

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v7, 0x7f0d0116

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const v8, 0x7f0a024b

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a024c

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const v11, 0x7f121a8d

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v10, v11, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x104000a

    new-instance v10, Lcom/android/settings/security/ScreenPinningPreferenceController$3;

    invoke-direct {v10, p0}, Lcom/android/settings/security/ScreenPinningPreferenceController$3;-><init>(Lcom/android/settings/security/ScreenPinningPreferenceController;)V

    invoke-virtual {v2, v4, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v4, 0x1040000

    new-instance v10, Lcom/android/settings/security/ScreenPinningPreferenceController$2;

    invoke-direct {v10, p0}, Lcom/android/settings/security/ScreenPinningPreferenceController$2;-><init>(Lcom/android/settings/security/ScreenPinningPreferenceController;)V

    invoke-virtual {v2, v4, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/android/settings/security/ScreenPinningPreferenceController$1;

    invoke-direct {v4, p0}, Lcom/android/settings/security/ScreenPinningPreferenceController$1;-><init>(Lcom/android/settings/security/ScreenPinningPreferenceController;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopDockConnected(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_to_app_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-object v5, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string v5, "false"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v8, "isScreenPinningAllowedAsUser"

    invoke-static {v6, v7, v8, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    if-nez v6, :cond_1

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    invoke-virtual {v7, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    return-void
.end method
