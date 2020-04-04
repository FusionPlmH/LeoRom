.class public Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecSoundSystemFeedbackSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;

.field private static mPrefControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/TouchSoundPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/TouchSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ScreenLockSoundPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/ScreenLockSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ChargingSoundPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/ChargingSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/DialPadTonePreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/DialPadTonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundKeyboardSoundController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/notification/SecSoundKeyboardSoundController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundFolderSoundController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/notification/SecSoundFolderSoundController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundGPSNotiSoundController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/notification/SecSoundGPSNotiSoundController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/DockingSoundPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/DockingSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/DockAudioMediaPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/DockAudioMediaPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/EmergencyTonePreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/EmergencyTonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSystemVibrationCategoryController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SecSystemVibrationCategoryController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundKeyboardVibrationController;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/notification/SecSoundKeyboardVibrationController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/notification/SecSoundVibrationOnTouchController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    return-object v0
.end method

.method private initUPSMModePreference()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->getPreferenceScreenResId()I

    move-result v1

    const-string v2, "UPSM"

    invoke-static {v0, v1, v2}, Landroid/support/v7/preference/SecPreferenceUtils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
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

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SecSoundSystemFeedbackSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x150

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500ff

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mPrefControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v3, v2, Lcom/android/settings/development/OnActivityResultListener;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/settings/development/OnActivityResultListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/settings/development/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    or-int/2addr v0, v3

    :cond_0
    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->hasSystemVibration(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundSystemFeedbackSettings;->initUPSMModePreference()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method
