.class Lcom/samsung/android/settings/lockscreen/LockScreenSettings$7;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "LockScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "content://com.samsung.android.dynamiclock.provider"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "support_link_settings"

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "dls_enabled"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v3, :cond_1

    const-string v4, "dynamic_lock_screen"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "lock_settings_screen"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "unlock_set_or_change"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "trust_agent"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "secured_lock_settigns"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "always_on_screen"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "clock_style_pref"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "lock_screen_dualclock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "lock_screen_additional_info"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "lock_screen_menu_owner_infomation"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "lock_screen_menu_notifications"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "lock_app_shortcut"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "about_lockscreen"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "LockScreenSettings"

    const-string v5, "getNonIndexableKeys = Utils.isDesktopConnected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopDockConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v4, "always_on_screen"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigDynamicLockScreenPolicy"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_5

    const-string v5, "com.samsung.android.dynamiclock"

    invoke-static {p1, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "MagazineLockScreen"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    const-string v5, "magazine_lockscreen"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportOtherLockScreenServices(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "other_lock_screen_services"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const-string v5, "unlock_set_or_change"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "secured_lock_settigns"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->access$000()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "lock_app_shortcut"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_b

    const-string v5, "lock_screen_menu_notifications"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "lock_screen_dualclock"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "clock_style_pref"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "lock_screen_menu_owner_infomation"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "lock_screen_additional_info"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isDCMhome(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "lock_app_shortcut"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "lock_screen_menu_notifications"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "unlock_set_or_change"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "lock_screen_dualclock"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "clock_style_pref"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "lock_screen_menu_owner_infomation"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "lock_screen_additional_info"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "secured_lock_settigns"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "lock_screen_dualclock"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    const/16 v5, 0x10

    invoke-static {v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "lock_settings_screen"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "secured_lock_settigns"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "always_on_screen"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "clock_style_pref"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "lock_screen_dualclock"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "lock_screen_additional_info"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "lock_screen_menu_owner_infomation"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "lock_screen_menu_notifications"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "lock_app_shortcut"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "about_lockscreen"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "lockscreen_preferences"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "unlock_set_or_change"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mygalaxystories"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "lss_settigns"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10
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

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v4, "unlock_set_or_change"

    iput-object v4, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v4, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v4, 0x7f121b0d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v4, 0x7f120df5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v5, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    const-string v5, "always_on_screen"

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-string v5, "android.intent.action.MAIN"

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    const-string v5, "com.samsung.android.app.aodservice"

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    const-string v5, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    const v5, 0x7f120101

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v5, "AOD"

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const-string v5, ""

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    const-string v5, ""

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->access$000()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_2

    nop

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object v5

    const-class v6, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    invoke-static {p1, v5, v2, v6}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/settings/security/trustagent/TrustAgentManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v9, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v3, v9

    iget-object v9, v8, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iget-object v9, v8, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v9, "trust_agent"

    iput-object v9, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v5, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    const-string v5, "lock_screen_dualclock"

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v5, 0x7f121278

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v5, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    const-string v5, "lock_app_shortcut"

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v5, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v5, 0x7f120d35

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v5, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    const-string v5, "lock_screen_menu_owner_infomation"

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v5, 0x7f12055f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const v5, 0x7f121809

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v5, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    const-string v5, "lock_screen_menu_notifications"

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v5, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v5, 0x7f120e02

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f120e01

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const v5, 0x7f120e00

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v5, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    const-string v5, "lock_screen_additional_info"

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v5, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v5, 0x7f1200be

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f1200bd

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const v5, 0x7f1200bb

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v5, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    const-string v5, "clock_style_pref"

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v5, 0x7f1204d7

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f1204d8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const v4, 0x7f1204db

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    const-class v2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v2, 0x7f1500d7

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v0

    :cond_0
    and-int/lit16 v2, v0, 0x100

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->isPageSearchEnabled(Landroid/content/Context;)Z

    move-result v2

    return v2
.end method
