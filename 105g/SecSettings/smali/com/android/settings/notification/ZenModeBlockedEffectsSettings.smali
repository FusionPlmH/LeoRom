.class public Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeBlockedEffectsSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/logging/status/StatusLogger;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings$3;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 19
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;

    const-string/jumbo v4, "zen_effect_intent"

    const/4 v5, 0x4

    const/16 v6, 0x534

    const/4 v7, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;

    const-string/jumbo v12, "zen_effect_light"

    const/16 v13, 0x8

    const/16 v14, 0x535

    const/4 v15, 0x0

    move-object v9, v1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;

    const-string/jumbo v5, "zen_effect_peek"

    const/4 v9, 0x1

    new-array v8, v9, [I

    const/16 v10, 0x100

    const/4 v11, 0x0

    aput v10, v8, v11

    const/16 v6, 0x10

    const/16 v7, 0x536

    move-object v2, v1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;

    const-string/jumbo v15, "zen_effect_status"

    new-array v2, v9, [I

    aput v10, v2, v11

    const/16 v16, 0x20

    const/16 v17, 0x537

    move-object v12, v1

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;

    const-string/jumbo v6, "zen_effect_badge"

    const/16 v7, 0x40

    const/16 v8, 0x538

    const/4 v9, 0x0

    move-object v3, v1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;

    const-string/jumbo v13, "zen_effect_list"

    const/16 v14, 0x100

    const/16 v15, 0x53a

    const/16 v16, 0x0

    move-object v10, v1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/ZenFooterPreferenceController;

    const-string/jumbo v2, "zen_footer_info"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/settings/notification/ZenFooterPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
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

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x102c

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150159

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v2, 0x7f1216fb

    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v2, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings$1;-><init>(Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->secAreAllVisualEffectsSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    :goto_0
    return-void
.end method
