.class public Lcom/android/settings/applications/assist/ManageAssist;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ManageAssist.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecIndexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;


# instance fields
.field protected final mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

.field private mDefaultAssistPref:Lcom/samsung/android/settings/widget/SecGearPreference;

.field final mHandler:Landroid/os/Handler;

.field private mVoiceInputPref:Lcom/samsung/android/settings/widget/SecGearPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/assist/ManageAssist$2;

    invoke-direct {v0}, Lcom/android/settings/applications/assist/ManageAssist$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/assist/ManageAssist;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;-><init>(Lcom/android/settings/applications/assist/ManageAssist;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist;->mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    new-instance v0, Lcom/android/settings/applications/assist/ManageAssist$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/ManageAssist$1;-><init>(Lcom/android/settings/applications/assist/ManageAssist;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/assist/ManageAssist;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/ManageAssist;->updatePreferenceStates()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/assist/ManageAssist;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;

    const-string v2, "default_assist"

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/applications/assist/AssistContextPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static isNavigationBar()Z
    .locals 3

    :try_start_0
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ManageAssist"

    const-string v2, "Failing checking whether status bar can hide"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/ManageAssist;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    invoke-static {p1, v0, v1}, Lcom/android/settings/applications/assist/ManageAssist;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ManageAssist"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xc9

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500d9

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/assist/ManageAssist;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->setAssistOnly(Z)Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;

    const-string v3, "default_assist"

    invoke-direct {v2, p1, v3, v1}, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :cond_0
    const/16 v2, 0xf3a

    invoke-static {v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ManageAssist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "assist_description"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/assist/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-static {}, Lcom/android/settings/applications/assist/ManageAssist;->isNavigationBar()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f121347

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string v0, "default_assist"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/assist/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecGearPreference;

    iput-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist;->mDefaultAssistPref:Lcom/samsung/android/settings/widget/SecGearPreference;

    const-string/jumbo v0, "voice_input_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/assist/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecGearPreference;

    iput-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist;->mVoiceInputPref:Lcom/samsung/android/settings/widget/SecGearPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v2, "isChangeAssistDefaultAppAllowed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mDefaultAssistPref:Lcom/samsung/android/settings/widget/SecGearPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mDefaultAssistPref:Lcom/samsung/android/settings/widget/SecGearPreference;

    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecGearPreference;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mVoiceInputPref:Lcom/samsung/android/settings/widget/SecGearPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mVoiceInputPref:Lcom/samsung/android/settings/widget/SecGearPreference;

    if-eqz v0, :cond_2

    move v6, v3

    nop

    :cond_2
    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/widget/SecGearPreference;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist;->mDefaultAssistPref:Lcom/samsung/android/settings/widget/SecGearPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist;->mDefaultAssistPref:Lcom/samsung/android/settings/widget/SecGearPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecGearPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist;->mVoiceInputPref:Lcom/samsung/android/settings/widget/SecGearPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist;->mVoiceInputPref:Lcom/samsung/android/settings/widget/SecGearPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecGearPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_5
    return-void
.end method
