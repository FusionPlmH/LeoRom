.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;
.super Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "motion_and_gesture"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "direct_share"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    nop

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "display_airmessage"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    move v2, v4

    const-string v4, "com.samsung.android.myeventcenter"

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v2, :cond_4

    :cond_3
    const-string v4, "key_festival_effect"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SMARTMANAGER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string v4, "call_message_spam_filter"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v4, "com.samsung.android.app.scrollcapture"

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "com.samsung.android.app.smartcapture"

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "smart_capture"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v4, "com.sec.app.screenrecorder"

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    const-string v4, "screen_recorder"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ConfigMotionType"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    nop

    :goto_1
    if-ge v3, v6, :cond_a

    aget-object v7, v5, v3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportMultiwindowSetting()Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "multi_window_setting"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v3

    :cond_c
    and-int/lit8 v6, v3, 0x8

    if-eqz v6, :cond_d

    const-string v6, "multi_window_setting"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string v6, "com.samsung.android.app.galaxylabs"

    invoke-static {p1, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_e
    const-string v6, "galaxy_labs"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->access$1900(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "hongbao_assistant_switch"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "hongbao_assistant"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    const-string v6, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_11
    const-string v6, "safetycare_help"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isPanicModeSupported()Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "key_safety_assistance"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_13
    const-string v6, "key_panic_mode"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_14

    const-string v6, "key_safety_assistance"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSecDynamicMenuFeatureProvider(Landroid/content/Context;)Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    move-result-object v6

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_15

    const-class v7, Lcom/samsung/android/settings/accessories/DockSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->hasValidDynamicMenu(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string v7, "dock_settings"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    const-string v7, "applock"

    invoke-static {v7}, Lcom/android/settings/Utils;->supportEnhancedFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_16

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v7

    if-eqz v7, :cond_17

    const-string v7, "com.samsung.android.app.sprotect"

    invoke-static {p1, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17

    :cond_16
    const-string v7, "key_applock"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v7

    if-nez v7, :cond_18

    const-string v7, "active_key_settings"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    const-string v7, "com.samsung.android.quickassist"

    invoke-static {p1, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_19

    const-string v7, "quick_dial"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v7

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v8

    if-eqz v8, :cond_1b

    :cond_1a
    if-nez v7, :cond_1c

    :cond_1b
    const-string v8, "dual_app"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-nez v8, :cond_1d

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1e

    :cond_1d
    const-string v8, "key_dex"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDailyBoard()Z

    move-result v8

    if-nez v8, :cond_1f

    const-string v8, "daily_board_setting"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v2

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeyGridViewConcept()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v5, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    const-string v5, "active_key_settings"

    iput-object v5, v4, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v5, Lcom/samsung/android/settings/activekey/ActiveKeySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v5, 0x7f12201a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const v5, 0x7f121b94

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportMultiwindowSetting()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    :cond_1
    const/4 v4, 0x0

    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v5, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    const-string v5, "multi_window_setting"

    iput-object v5, v4, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v4, "applock"

    invoke-static {v4}, Lcom/android/settings/Utils;->supportEnhancedFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v5, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    const-string v5, "key_applock"

    iput-object v5, v4, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f120190

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const v5, 0x7f12018e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v2, 0x7f150103

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public secGetVariableRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSecDynamicMenuFeatureProvider(Landroid/content/Context;)Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    move-result-object v0

    if-eqz v0, :cond_3

    const-class v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->getDynamicMenus(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v4, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;

    invoke-direct {v6, p1}, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;-><init>(Landroid/content/Context;)V

    iget-object v7, v4, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->key:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->title:Ljava/lang/String;

    const v7, 0x7f121b94

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->screenTitle:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    iput-object v7, v6, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->summary:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;->secGetVariableRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
