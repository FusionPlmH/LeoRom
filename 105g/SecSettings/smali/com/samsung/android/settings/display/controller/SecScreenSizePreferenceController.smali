.class public Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "SecScreenSizePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mFlipFolderState:I

.field private mFlipFolderStateReceiver:Landroid/content/BroadcastReceiver;

.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "sec_screen_size"

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController$1;-><init>(Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mFlipFolderStateReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mFlipFolderState:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->updateScreenSizeState()V

    return-void
.end method

.method private registerObserver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.flipfolder.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mFlipFolderStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mFlipFolderStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateScreenSizeState()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mFlipFolderState:I

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-nez v0, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    iget v3, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mFlipFolderState:I

    if-eq v3, v2, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus()I

    move-result v3

    if-ne v3, v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-nez v0, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabled(Z)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f12164e    # 1.941831E38f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;Z)V

    :goto_4
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "sec_screen_size"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "sec_screen_size"

    return-object v0
.end method

.method public getUriListRequiringObservation()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 12

    const-string v0, "sec_screen_size"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "easy_mode_switch"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mFlipFolderState:I

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus()I

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "screen size title"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/settings/SettingsActivity;

    iget-object v5, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    const-class v4, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x7f12164d

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v11}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v3

    :cond_2
    :goto_1
    return v1

    :cond_3
    return v1
.end method

.method public isAvailable()Z
    .locals 6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x64

    if-lt v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isT4RModel()Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v1
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->unRegisterObserver()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->registerObserver()V

    return-void
.end method

.method public updatePreference(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setVisible(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->updateScreenSizeState()V

    return-void
.end method
