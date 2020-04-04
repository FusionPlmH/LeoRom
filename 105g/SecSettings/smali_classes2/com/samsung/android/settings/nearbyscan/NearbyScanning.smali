.class public Lcom/samsung/android/settings/nearbyscan/NearbyScanning;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NearbyScanning.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNearbyHelpImg:Landroid/widget/ImageView;

.field private mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchBarChildView:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createNeaybyScanningView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NearbyScanning"

    const-string v1, "createNeaybyScanningView for Tablet"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d01f9

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    goto :goto_0

    :cond_1
    const-string v0, "NearbyScanning"

    const-string v1, "createNeaybyScanningView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d01f8

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    const v2, 0x7f0a04fe

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    const v3, 0x7f0a04fd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyHelpImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    return-object v2
.end method

.method private setLayoutOnClickForLogging()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->getNearbyScanningSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    return v1

    :cond_2
    return v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xe74

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "NearbyScanning"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    new-instance v1, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->init()Z

    invoke-direct {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->setLayoutOnClickForLogging()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NearbyScanning"

    const-string v2, "onActivityCreated.setLayoutOnClickForLogging Failed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "NearbyScanning"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->createNeaybyScanningView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->startAnimation()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "NearbyScanning"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->setDBInt(Landroid/content/Context;I)V

    const-string v0, "Not Installed BeaconManager"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->createNeaybyScanningView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onDestroyView()Z

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "NearbyScanning"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onPause()Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "NearbyScanning"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onResume()Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->startAnimation()V

    return-void
.end method

.method public startAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyHelpImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyHelpImg:Landroid/widget/ImageView;

    new-instance v2, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
