.class public Lcom/samsung/android/settings/notification/SecVolumeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecVolumeSettings.java"

# interfaces
.implements Lcom/android/settings/SettingsActivity$onKeyEventListener;
.implements Lcom/samsung/android/settings/logging/status/StatusLogger;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SecVolumeSettings$H;,
        Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mBixbyController:Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;

.field private mDNDStatusController:Lcom/samsung/android/settings/notification/SecDNDStatusPreferenceController;

.field private mDNDStatusObserver:Landroid/database/ContentObserver;

.field private mDTMFController:Lcom/samsung/android/settings/notification/SecDTMFVolumePreferenceController;

.field private final mHandler:Lcom/samsung/android/settings/notification/SecVolumeSettings$H;

.field private mMediaController:Lcom/android/settings/notification/MediaVolumePreferenceController;

.field private mNotiController:Lcom/android/settings/notification/NotificationVolumePreferenceController;

.field private mRingController:Lcom/android/settings/notification/RingVolumePreferenceController;

.field private mSystemController:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;

.field private final mVolumeCallback:Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/notification/SecVolumeSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/notification/SecVolumeSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/SecVolumeSettings$H;-><init>(Lcom/samsung/android/settings/notification/SecVolumeSettings;Lcom/samsung/android/settings/notification/SecVolumeSettings$1;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mHandler:Lcom/samsung/android/settings/notification/SecVolumeSettings$H;

    new-instance v0, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;-><init>(Lcom/samsung/android/settings/notification/SecVolumeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;

    new-instance v0, Lcom/samsung/android/settings/notification/SecVolumeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/SecVolumeSettings$1;-><init>(Lcom/samsung/android/settings/notification/SecVolumeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mDNDStatusObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->isZenModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecDNDStatusPreferenceController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mDNDStatusController:Lcom/samsung/android/settings/notification/SecDNDStatusPreferenceController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecVolumeSettings$H;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mHandler:Lcom/samsung/android/settings/notification/SecVolumeSettings$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/android/settings/notification/NotificationVolumePreferenceController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mNotiController:Lcom/android/settings/notification/NotificationVolumePreferenceController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/android/settings/notification/MediaVolumePreferenceController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mMediaController:Lcom/android/settings/notification/MediaVolumePreferenceController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/notification/SecVolumeSettings;)Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;Lcom/samsung/android/settings/notification/SecVolumeSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/notification/SecVolumeSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/notification/SecVolumeSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/notification/SecVolumeSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/notification/SecDTMFExplanationPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SecDTMFExplanationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/notification/SecVolumeInsetCategoryPreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SecVolumeInsetCategoryPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private initUPSMModePreference()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getPreferenceScreenResId()I

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

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isZenModeEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
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

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/notification/SecVolumeSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SecVolumeSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa6

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150106

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/RingVolumePreferenceController;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mRingController:Lcom/android/settings/notification/RingVolumePreferenceController;

    const-class v0, Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/MediaVolumePreferenceController;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mMediaController:Lcom/android/settings/notification/MediaVolumePreferenceController;

    const-class v0, Lcom/android/settings/notification/NotificationVolumePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationVolumePreferenceController;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mNotiController:Lcom/android/settings/notification/NotificationVolumePreferenceController;

    const-class v0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;

    const-class v0, Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;

    const-class v0, Lcom/samsung/android/settings/notification/SecDTMFVolumePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/SecDTMFVolumePreferenceController;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mDTMFController:Lcom/samsung/android/settings/notification/SecDTMFVolumePreferenceController;

    const-class v0, Lcom/samsung/android/settings/notification/SecDNDStatusPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/SecDNDStatusPreferenceController;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mDNDStatusController:Lcom/samsung/android/settings/notification/SecDNDStatusPreferenceController;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mRingController:Lcom/android/settings/notification/RingVolumePreferenceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mRingController:Lcom/android/settings/notification/RingVolumePreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/RingVolumePreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mRingController:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/RingVolumePreferenceController;->setLifeCycleObserver(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mMediaController:Lcom/android/settings/notification/MediaVolumePreferenceController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mMediaController:Lcom/android/settings/notification/MediaVolumePreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/MediaVolumePreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mMediaController:Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/MediaVolumePreferenceController;->setLifeCycleObserver(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mNotiController:Lcom/android/settings/notification/NotificationVolumePreferenceController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mNotiController:Lcom/android/settings/notification/NotificationVolumePreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mNotiController:Lcom/android/settings/notification/NotificationVolumePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->setLifeCycleObserver(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecSystemVolumePreferenceController;->setLifeCycleObserver(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecBixbyVolumePreferenceController;->setLifeCycleObserver(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mDTMFController:Lcom/samsung/android/settings/notification/SecDTMFVolumePreferenceController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mDTMFController:Lcom/samsung/android/settings/notification/SecDTMFVolumePreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecDTMFVolumePreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mDTMFController:Lcom/samsung/android/settings/notification/SecDTMFVolumePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecDTMFVolumePreferenceController;->setLifeCycleObserver(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyEventListener(Lcom/android/settings/SettingsActivity$onKeyEventListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->initUPSMModePreference()V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isAllNAVendor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->setHasOptionsMenu(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->setHasOptionsMenu(Z)V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isAllNAVendor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f1216d5

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "SecVolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const-class v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f1216d5

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVolumeSettings$VolumePreferenceCallback;->stopSample()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mDNDStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->isZenModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecVolumeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "zen_mode"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeSettings;->mDNDStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
