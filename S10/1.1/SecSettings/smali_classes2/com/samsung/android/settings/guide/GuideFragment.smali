.class public final Lcom/samsung/android/settings/guide/GuideFragment;
.super Landroid/app/Fragment;
.source "GuideFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/guide/GuideFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;,
        Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;
    }
.end annotation


# static fields
.field private static sIsInGuideMode:Z


# instance fields
.field private mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

.field private mIsInGuideMode:Z

.field private mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

.field private mOpenedHeader:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    sget-object v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mOpenedHeader:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    return-void
.end method

.method private static completeGuide(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/guide/GuideFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/guide/GuideModeHelper;->getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isGuideModeBluetooth(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isGuideModeWiFi(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deployGuide: isBtGuide : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":isBtGuide:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ":isWifiGuide:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x7f0a035c

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-static {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    sput-boolean v6, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isGuideCompleted(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->completeGuide(Landroid/app/Activity;)V

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Lcom/samsung/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    sput-boolean v5, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/guide/GuideFragment;->newInstance(Landroid/content/Intent;)Lcom/samsung/android/settings/guide/GuideFragment;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v6

    if-eqz v6, :cond_5

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    const-string v9, "GuideFragment"

    invoke-virtual {v8, v7, v1, v9}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    sput-boolean v5, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_1

    :cond_6
    sput-boolean v6, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    :goto_1
    return-void
.end method

.method public static dismissHelpDialog(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/guide/GuideFragment;

    if-eqz v1, :cond_0

    const-string v2, "GuideFragment"

    const-string v3, "dismissGuideHelper: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1}, Lcom/samsung/android/settings/guide/GuideFragment;->dismissHelpDialogOnAdvanceClick()V

    goto :goto_0

    :cond_0
    const-string v2, "GuideFragment"

    const-string v3, "dismissGuideHelper: GuideFragment is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private dismissHelpDialogOnAdvanceClick()V
    .locals 3

    const-string v0, "GuideFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissHelpDialog: mGuider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    const-string v0, "GuideFragment"

    const-string v1, "dismissHelpDialog: calling  mGuider::dismissHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    :cond_0
    return-void
.end method

.method public static findGuideFragment(Landroid/app/Activity;)Lcom/samsung/android/settings/guide/GuideFragmentCallback;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/guide/GuideFragmentCallback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p0, Landroid/app/ListActivity;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/app/ListActivity;

    invoke-virtual {v1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    :cond_0
    goto :goto_0

    :cond_1
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    const v1, 0x7f0a04ac

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private initFragment(Landroid/os/Bundle;Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V
    .locals 4

    move-object v0, p2

    if-nez v0, :cond_3

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    invoke-static {v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isGuideModeWiFi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    sget-object v3, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    :goto_0
    move-object v0, v3

    goto :goto_2

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isGuideModeBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    sget-object v3, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    :goto_1
    move-object v0, v3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isGuideCompleted(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/samsung/android/settings/guide/GuideFragment;->completeGuide(Landroid/app/Activity;)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    if-ne v0, v2, :cond_6

    return-void

    :cond_6
    iput-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v2}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onDestroy()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    sget-object v2, Lcom/samsung/android/settings/guide/GuideFragment$1;->$SwitchMap$com$samsung$android$settings$guide$GuideFragment$GuideModes:[I

    iget-object v3, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v3}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubSettings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-direct {v2, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    goto :goto_3

    :pswitch_1
    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubSettings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Lcom/samsung/android/settings/guide/BtSettingsGuider;

    invoke-direct {v2, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v2}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->showHelpDialog()V

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isInGuideMode()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    return v0
.end method

.method public static isInGuideMode(Landroid/app/Activity;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/samsung/android/settings/guide/GuideFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTablet()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    return v0
.end method

.method private static newInstance(Landroid/content/Intent;)Lcom/samsung/android/settings/guide/GuideFragment;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/guide/GuideFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/guide/GuideFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/guide/GuideFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static setsIsInGuideMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    return-void
.end method

.method public static showHelpDialog(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/guide/GuideFragment;

    if-eqz v1, :cond_0

    const-string v2, "GuideFragment"

    const-string v3, "showHelpDialog: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1}, Lcom/samsung/android/settings/guide/GuideFragment;->showHelpDialogOnResume()V

    goto :goto_0

    :cond_0
    const-string v2, "GuideFragment"

    const-string v3, "showHelpDialog: GuideFragment is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showHelpDialogOnResume()V
    .locals 3

    const-string v0, "GuideFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHelpDialogOnResume: mGuider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    const-string v0, "GuideFragment"

    const-string v1, "showHelpDialogOnResume: calling  mGuider::showHelpDialogOnResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onResume()V

    goto :goto_0

    :cond_0
    const-string v0, "GuideFragment"

    const-string v1, "showHelpDialogonAdvanceClick: mGuider is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onActivityCreated(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/GuideFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/GuideFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GuideFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onPause()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_1

    const/16 v0, 0xcc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->onResume()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/guide/GuideFragment;->mGuider:Lcom/samsung/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/guide/GuiderLifecycleListener;->finish()V

    :goto_0
    return-void
.end method
