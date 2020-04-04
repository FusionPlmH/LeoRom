.class public Lcom/samsung/android/settings/SettingsBaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SettingsBaseActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

.field private mIsDisabledAppBar:Z

.field private mIsExpandedAppBar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/SettingsBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/SettingsBaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mIsDisabledAppBar:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mIsExpandedAppBar:Z

    return-void
.end method

.method private applyExtendedAppBar()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v2, 0x3ec4b5dd    # 0.3842f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070618

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-boolean v4, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mIsExpandedAppBar:Z

    invoke-virtual {v3, v4}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    if-lez v2, :cond_5

    iget-boolean v3, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mIsDisabledAppBar:Z

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    const/16 v4, 0x258

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v5, 0x1e0

    if-ge v3, v5, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ge v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    if-lt v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ge v3, v4, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    :goto_0
    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v3, v0}, Landroid/support/design/widget/AppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private isSupportLargeScreenMode()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x19b

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private measureContentFrame()V
    .locals 13

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7f070520

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07051f

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->isSupportLargeScreenMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v5, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v6, 0x1e0

    if-lt v5, v6, :cond_0

    const/16 v6, 0x257

    if-gt v5, v6, :cond_0

    const v2, 0x3f6b020c    # 0.918f

    const v1, 0x3d27ef9e    # 0.041f

    goto :goto_0

    :cond_0
    const/16 v6, 0x258

    if-lt v5, v6, :cond_1

    const/16 v6, 0x3bf

    if-gt v5, v6, :cond_1

    const v2, 0x3f70a3d7    # 0.94f

    const v1, 0x3cf5c28f    # 0.03f

    goto :goto_0

    :cond_1
    const/16 v6, 0x3c0

    if-lt v5, v6, :cond_2

    const/16 v6, 0x77f

    if-gt v5, v6, :cond_2

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v1, 0x3e000000    # 0.125f

    goto :goto_0

    :cond_2
    const/16 v6, 0x780

    if-lt v5, v6, :cond_3

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, 0x3e800000    # 0.25f

    :cond_3
    :goto_0
    const v4, 0x7f0a01d0

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/SettingsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f0a01ca

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SettingsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f0a01cb

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/SettingsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    nop

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    nop

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v1, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    nop

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v10, Lcom/samsung/android/settings/SettingsBaseActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "measureContentFrame : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public hideAppBar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setVisibility(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->applyExtendedAppBar()V

    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->measureContentFrame()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0266

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SettingsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SettingsBaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const v1, 0x7f0a019a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SettingsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    const v1, 0x7f0a0087

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SettingsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz p1, :cond_0

    const-string v1, "disabled_app_bar"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mIsDisabledAppBar:Z

    const-string v1, "expanded_app_bar"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mIsExpandedAppBar:Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->applyExtendedAppBar()V

    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->measureContentFrame()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "disabled_app_bar"

    iget-boolean v1, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mIsDisabledAppBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "expanded_app_bar"

    iget-boolean v1, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mIsExpandedAppBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    const v0, 0x7f0a01cb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SettingsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a01cb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SettingsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const v0, 0x7f0a01cb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SettingsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setExpandedAppBar(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mIsExpandedAppBar:Z

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setTitle(I)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsBaseActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
