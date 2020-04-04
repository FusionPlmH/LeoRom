.class public Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RecentsKeySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mPointArea:Landroid/widget/LinearLayout;

.field private mRecentsKeyObserver:Landroid/database/ContentObserver;

.field private mSnapWindow:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mSplitScreenview:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->changeColor(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/WrapContentHeightViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method private changeColor(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0802a8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0802a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "db_snap_window_shortcut"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_snap_window_shortcut"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1de4

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    const v3, 0x7f0d01ac

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a05b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iput-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v4, 0x7f0a05d6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_0

    move v8, v6

    const v9, 0x7f0d014e

    invoke-virtual {v1, v9, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f12109d

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    add-int/lit8 v12, v6, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v7, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;

    invoke-direct {v7, p0, v8}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;I)V

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v5, 0x7f0802a9

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ne v2, v7, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->setHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "RecentsKeySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged() : position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_0

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500ed

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->addPreferencesFromResource(I)V

    const-string v0, "snap_window"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v0, "split_screen_view"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getMetricsCategory()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x1de7

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "db_split_screen_view_shortcut"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "db_split_screen_view_shortcut"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "db_snap_window_shortcut"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "db_snap_window_shortcut"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    sub-int v5, v2, v3

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :goto_2
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_split_screen_view_shortcut"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1de6

    invoke-static {v0, v1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method
