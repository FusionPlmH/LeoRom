.class public Lcom/android/settings/language/LanguageAndInputSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LanguageAndInputSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/logging/status/StatusLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;,
        Lcom/android/settings/language/LanguageAndInputSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mPersona:Lcom/samsung/android/knox/SemPersonaManager;


# instance fields
.field private mCurrentInputPref:Landroid/support/v7/preference/SecPreference;

.field private mCurrentKeyboardPreferenceController:Lcom/samsung/android/settings/language/CurrentKeyboardPreferenceController;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mHandler:Landroid/os/Handler;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

.field private mSettingsObserver:Lcom/android/settings/language/LanguageAndInputSettings$SettingsObserver;

.field private mSpellCheckCachedPref:Landroid/support/v7/preference/SecPreference;

.field private mUserCachedDicPref:Landroid/support/v7/preference/SecPreference;

.field private mUspLevel:I

.field private um:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettings;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    sget-object v0, Lcom/android/settings/language/-$$Lambda$LanguageAndInputSettings$VvwbgRiPWoRSuoMu5QPyPqZ5AEc;->INSTANCE:Lcom/android/settings/language/-$$Lambda$LanguageAndInputSettings$VvwbgRiPWoRSuoMu5QPyPqZ5AEc;

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettings$1;

    invoke-direct {v0}, Lcom/android/settings/language/LanguageAndInputSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettings$2;

    invoke-direct {v0}, Lcom/android/settings/language/LanguageAndInputSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mUspLevel:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/language/LanguageAndInputSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->updateCurrentImeName()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/language/LanguageAndInputSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/settings/language/PhoneLanguagePreferenceController;

    invoke-direct {v3, v0}, Lcom/android/settings/language/PhoneLanguagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/samsung/android/settings/language/CurrentKeyboardPreferenceController;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/language/CurrentKeyboardPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;

    invoke-direct {v3, v0}, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;

    invoke-direct {v4, v0, v1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v5, Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;

    invoke-direct {v5, v0}, Lcom/samsung/android/settings/language/ShowKeyboardButtonPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    new-instance v6, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v7, "keyboards_category"

    invoke-direct {v6, v0, v7}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v7, 0x3

    new-array v8, v7, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v10, 0x1

    aput-object v4, v8, v10

    const/4 v11, 0x2

    aput-object v5, v8, v11

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/settings/language/TtsPreferenceController;

    new-instance v8, Landroid/speech/tts/TtsEngines;

    invoke-direct {v8, v0}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    invoke-direct {v6, v0, v8}, Lcom/android/settings/language/TtsPreferenceController;-><init>(Landroid/content/Context;Landroid/speech/tts/TtsEngines;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/settings/language/PointerSpeedController;

    invoke-direct {v8, v0}, Lcom/android/settings/language/PointerSpeedController;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;

    invoke-direct {v12, v0}, Lcom/samsung/android/settings/language/PrimaryMouseButtonPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    invoke-virtual {v1, v8}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_1
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string/jumbo v14, "voice_category"

    invoke-direct {v13, v0, v14}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-array v14, v10, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object v6, v14, v9

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v14, "pointer_settings_category"

    invoke-direct {v13, v0, v14}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-array v14, v11, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object v8, v14, v9

    aput-object v12, v14, v10

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;

    invoke-direct {v13, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v14, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    invoke-direct {v14, v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v15, Lcom/android/settings/language/UserDictionaryPreferenceController;

    invoke-direct {v15, v0}, Lcom/android/settings/language/UserDictionaryPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v10, "input_assistance_category"

    invoke-direct {v11, v0, v10}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-array v7, v7, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object v13, v7, v9

    const/4 v9, 0x1

    aput-object v14, v7, v9

    const/4 v9, 0x2

    aput-object v15, v7, v9

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private changeSpellCheckerPreference(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mSpellCheckCachedPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    new-instance v1, Lcom/android/settings/language/UserDictionaryPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/language/UserDictionaryPreferenceController;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mUserCachedDicPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/language/UserDictionaryPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public static isMarketingInformationChecked(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "LangAndInputSettings"

    const-string v1, "marcket information isChecked called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sa_marketing_receive_agree"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "marketing_info_agree"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne v0, v2, :cond_0

    if-ne v1, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, v5, :cond_1

    move v4, v5

    nop

    :cond_1
    move v3, v4

    :cond_2
    :goto_0
    return v3
.end method

.method static synthetic lambda$static$0(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 1

    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-object v0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 6

    if-eqz p1, :cond_0

    const-string v0, ":settings:show_fragment_title_resid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mCurrentInputPref:Landroid/support/v7/preference/SecPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mCurrentKeyboardPreferenceController:Lcom/samsung/android/settings/language/CurrentKeyboardPreferenceController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/language/CurrentKeyboardPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mCurrentKeyboardPreferenceController:Lcom/samsung/android/settings/language/CurrentKeyboardPreferenceController;

    iget-object v2, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mCurrentInputPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/language/CurrentKeyboardPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/language/LanguageAndInputSettings;->changeSpellCheckerPreference(Landroid/content/Context;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/language/LanguageAndInputSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "LangAndInputSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x39

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150065

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mCurrentInputPref:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mCurrentKeyboardPreferenceController:Lcom/samsung/android/settings/language/CurrentKeyboardPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/language/CurrentKeyboardPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mCurrentKeyboardPreferenceController:Lcom/samsung/android/settings/language/CurrentKeyboardPreferenceController;

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mCurrentInputPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/language/CurrentKeyboardPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/language/LanguageAndInputSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    const-string v1, "current_input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/language/LanguageAndInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreference;

    iput-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mCurrentInputPref:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v1, "spellcheckers_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/language/LanguageAndInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreference;

    iput-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mSpellCheckCachedPref:Landroid/support/v7/preference/SecPreference;

    const-string v1, "key_user_dictionary_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/language/LanguageAndInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreference;

    iput-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mUserCachedDicPref:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/settings/language/LanguageAndInputSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->um:Landroid/os/UserManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/language/LanguageAndInputSettings$SettingsObserver;

    iget-object v2, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/language/LanguageAndInputSettings$SettingsObserver;-><init>(Lcom/android/settings/language/LanguageAndInputSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mSettingsObserver:Lcom/android/settings/language/LanguageAndInputSettings$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Lcom/samsung/android/settings/language/CurrentKeyboardPreferenceController;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/language/CurrentKeyboardPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mCurrentKeyboardPreferenceController:Lcom/samsung/android/settings/language/CurrentKeyboardPreferenceController;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mSettingsObserver:Lcom/android/settings/language/LanguageAndInputSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/language/LanguageAndInputSettings$SettingsObserver;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f120cb7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/language/LanguageAndInputSettings;->setTitleFromIntent(Landroid/content/Intent;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings;->mSettingsObserver:Lcom/android/settings/language/LanguageAndInputSettings$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/settings/language/LanguageAndInputSettings$SettingsObserver;->resume()V

    return-void
.end method
