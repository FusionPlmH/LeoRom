.class public Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartStaySettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static SMART_STAY:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSmartStayHelpImg:Landroid/widget/ImageView;

.field private mSmartStayObserver:Landroid/database/ContentObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private createSmartStayView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    const v0, 0x7f0d026f

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    const v2, 0x7f0a0784

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    const v2, 0x7f0a0231

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    const v3, 0x7f0a0786

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayHelpImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayHelpImg:Landroid/widget/ImageView;

    const v3, 0x7f08065c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayHelpImg:Landroid/widget/ImageView;

    const v3, 0x7f08065b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayHelpImg:Landroid/widget/ImageView;

    const v3, 0x7f08065a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    return-object v2
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1075

    sput v0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->SMART_STAY:I

    sget v0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->SMART_STAY:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->createSmartStayView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->startAnimation()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->createSmartStayView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "intelligent_sleep_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->startAnimation()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1076

    invoke-static {v0, v1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method

.method public startAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayHelpImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayHelpImg:Landroid/widget/ImageView;

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
