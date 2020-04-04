.class public Lcom/android/settings/users/AutoSyncDataPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AutoSyncDataPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;,
        Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;
    }
.end annotation


# instance fields
.field private mAutoSyncBroadcastReceiver:Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

.field private final mParentFragment:Landroid/app/Fragment;

.field private mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field protected mUserHandle:Landroid/os/UserHandle;

.field protected final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;-><init>(Lcom/android/settings/users/AutoSyncDataPreferenceController;Lcom/android/settings/users/AutoSyncDataPreferenceController$1;)V

    iput-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mAutoSyncBroadcastReceiver:Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mParentFragment:Landroid/app/Fragment;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/AutoSyncDataPreferenceController;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method private isBlockedByEDM()Z
    .locals 10

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RoamingPolicy"

    const-string v4, "isRoamingSyncEnabled"

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    if-nez v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v7

    const-string v8, "gsm.operator.isroaming"

    const-string v9, "false"

    invoke-static {v7, v8, v9}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    move v6, v3

    :cond_2
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    nop

    :goto_2
    move v3, v4

    const-string v4, "AutoSyncDataController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBlockedByEDM: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "auto_sync_account_data"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isRestrictedProfile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mAutoSyncBroadcastReceiver:Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->unregister(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0x8

    const/16 v3, 0x122b

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->isBlockedByEDM()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mParentFragment:Landroid/app/Fragment;

    iget-object v3, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v2, v1, v3, v0}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->show(Landroid/app/Fragment;ZLandroid/os/UserHandle;Landroid/support/v14/preference/SwitchPreference;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "AutoSyncDataController"

    const-string v3, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mAutoSyncBroadcastReceiver:Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->register(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->isBlockedByEDM()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v1, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    goto :goto_0

    :cond_0
    nop

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v1, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
