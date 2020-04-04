.class public Lcom/android/settings/development/DevelopmentSwitchBarController;
.super Ljava/lang/Object;
.source "DevelopmentSwitchBarController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mIsAvailable:Z

.field private final mSettings:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/widget/SwitchBar;ZLcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mIsAvailable:Z

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSettings:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    iget-boolean v1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mIsAvailable:Z

    if-eqz v1, :cond_1

    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 5

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSettings:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v3, "isDeveloperModeAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSettings:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSettings:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->mSettings:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method
