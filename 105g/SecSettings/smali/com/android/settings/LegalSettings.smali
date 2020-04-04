.class public Lcom/android/settings/LegalSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LegalSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field static final KEY_WALLPAPER_ATTRIBUTIONS:Ljava/lang/String; = "wallpaper_attributions"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/LegalSettings$2;

    invoke-direct {v0}, Lcom/android/settings/LegalSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/LegalSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LegalSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/LegalSettings;->startSamsungPP()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/LegalSettings;->isPrivacyAlertSupported()Z

    move-result v0

    return v0
.end method

.method private getDiagnosticDataVer()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "samsung_errorlog_agree"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_DIAG_VERSION:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getVersionByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getEULAVer()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    sget-object v1, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_EULA_VERSION:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getVersionByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLanguageCode()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPPVer()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isShowPPVersionInLegalInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_PP_VERSION:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getVersionByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private isPackageLoaded(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v2, "LegalSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is Installed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v2

    const-string v3, "LegalSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not Installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method private static isPrivacyAlertSupported()Z
    .locals 7

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "XAR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Global"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUSA()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "persist.sys.display_legal"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "LegalSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayCarrierLegal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v2, v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private isSAPPIntentAvailable()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.mobileservice.action.ACTION_SHOW_PRIVACY_POLICY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private startSamsungPP()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://legal.samsungdm.com/kor/%s/pp.html"

    invoke-direct {p0}, Lcom/android/settings/LegalSettings;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://legal.samsungdm.com/kor/%s/pp.html"

    const-string v3, "%s"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/LegalSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mobileservice.action.ACTION_SHOW_PRIVACY_POLICY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "samsung_privacy_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method checkWallpaperAttributionAvailability(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "wallpaper_attributions"

    invoke-virtual {p0, v0}, Lcom/android/settings/LegalSettings;->removePreference(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xe1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 v1, 0x7f150000

    invoke-virtual {v0, v1}, Lcom/android/settings/LegalSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "terms"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string v3, "license"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string v3, "copyright"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string/jumbo v3, "webview_license"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    invoke-virtual {v0, v1}, Lcom/android/settings/LegalSettings;->checkWallpaperAttributionAvailability(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    const-string v5, "samsung_legal"

    invoke-virtual {v0, v5}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUSA()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-class v6, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v6, "samsung_legal"

    invoke-virtual {v0, v6}, Lcom/android/settings/LegalSettings;->removePreference(Ljava/lang/String;)Z

    :cond_2
    :goto_1
    const-string v6, "samsung_privacy_policy"

    invoke-virtual {v0, v6}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->isSAPPIntentAvailable()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    new-instance v7, Lcom/android/settings/LegalSettings$1;

    invoke-direct {v7, v0}, Lcom/android/settings/LegalSettings$1;-><init>(Lcom/android/settings/LegalSettings;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_3

    :cond_4
    :goto_2
    const-string v7, "LegalSettings"

    const-string v8, "SA PP intent is not available"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "samsung_privacy_policy"

    invoke-virtual {v0, v7}, Lcom/android/settings/LegalSettings;->removePreference(Ljava/lang/String;)Z

    :goto_3
    const-string v7, "com.samsung.safetyinformation"

    invoke-direct {v0, v7}, Lcom/android/settings/LegalSettings;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUSA()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    const-string v7, "safetyinfomation"

    invoke-virtual {v0, v7}, Lcom/android/settings/LegalSettings;->removePreference(Ljava/lang/String;)Z

    :cond_6
    invoke-static {}, Lcom/android/settings/LegalSettings;->isPrivacyAlertSupported()Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "privacy_alert"

    invoke-virtual {v0, v7}, Lcom/android/settings/LegalSettings;->removePreference(Ljava/lang/String;)Z

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120cb9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Samsung "

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "knox_privacy_notice"

    invoke-virtual {v0, v8}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_8
    new-instance v7, Ljava/io/File;

    const-string v8, "/system/lib/drm/libdivxplugin.so"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "divx_license_settings"

    invoke-virtual {v0, v8}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v2, v8}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_9
    const-string v8, "legal_phrase_version"

    invoke-virtual {v0, v8}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getEULAVer()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-nez v10, :cond_a

    const-string v10, "%s: %s\n"

    new-array v13, v12, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f121534

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getEULAVer()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v4

    invoke-static {v10, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getPPVer()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "%s: %s\n"

    new-array v13, v12, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f121535

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getPPVer()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v4

    invoke-static {v10, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getDiagnosticDataVer()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "%s: %s\n"

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f121533

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getDiagnosticDataVer()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v4

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string v4, "\n"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LegalSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const v10, 0x7f121532

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "license"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x12c4

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v1, "terms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x12c5

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "webview_license"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x12c6

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_2
    const-string v1, "samsung_privacy_policy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x254e

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_3
    const-string v1, "safetyinfomation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x12c7

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_4
    const-string v1, "samsung_legal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUSA()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x12c8

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_5
    const-string v1, "knox_privacy_notice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x12cb

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
