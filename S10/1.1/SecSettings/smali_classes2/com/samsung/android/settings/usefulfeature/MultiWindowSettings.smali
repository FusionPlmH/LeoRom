.class public Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MultiWindowSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mHasSoftKey:Z

.field private static mSummary_off:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInteractionControlObserver:Landroid/database/ContentObserver;

.field private mNaviBarSettingsObserver:Landroid/database/ContentObserver;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

.field private mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

.field private mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mHasSoftKey:Z

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSummary_off:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mInteractionControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mNaviBarSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updatePopupGestureState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updateRecentsKeyState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updateSplitScreenState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/WrapContentHeightViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method private updatePopupGestureState(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_3

    const v0, 0x7f1219de

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_popup_view_shortcut"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    nop

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_2

    const v0, 0x7f1219df

    nop

    :cond_2
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateRecentsKeyState(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSummary_off:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_split_screen_view_shortcut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "db_snap_window_shortcut"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    nop

    :cond_2
    const v3, 0x7f120eb6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_3

    const v4, 0x7f120eb1

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v1, :cond_4

    move-object v4, v3

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSummary_off:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateSplitScreenState(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_3

    const v0, 0x7f1219de

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_split_screen_view_shortcut"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v1, v3

    nop

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_2

    const v0, 0x7f1219df

    nop

    :cond_2
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public changeColor(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0802a8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0802a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1de2

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d01ac

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a05b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v3, 0x7f0a05d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_0

    move v7, v5

    const v8, 0x7f0d014d

    invoke-virtual {v0, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f1215a2

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$5;

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$5;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;I)V

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x7f0802a9

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->setHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "MultiWindowSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged() : position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f1500dd

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->addPreferencesFromResource(I)V

    const-string v0, "recents_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const-string v0, "pop_up_gesture"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v0, "split_screen"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mHasSoftKey:Z

    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mHasSoftKey:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120eb8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSummary_off:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v1, 0x7f120eae

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f120eb7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSummary_off:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v1, 0x7f120eaf

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setTitle(I)V

    :goto_0
    const-string v0, "recents_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->removePreference(Ljava/lang/String;)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f120b00

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "helphub:section"

    const-string v3, "multi_window"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mNaviBarSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "MultiWindowSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const v5, 0x7f1219de

    const v6, 0x7f1219df

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "db_popup_view_shortcut"

    invoke-static {v3, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_1

    move v5, v6

    nop

    :cond_1
    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getMetricsCategory()I

    move-result v3

    const/16 v5, 0x1de3

    invoke-static {v3, v5, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "db_split_screen_view_shortcut"

    invoke-static {v3, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_3

    move v5, v6

    nop

    :cond_3
    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "db_snap_window_shortcut"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v6, v4

    nop

    :cond_5
    move v3, v6

    const v5, 0x7f120eb6

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_6

    const v6, 0x7f120eb1

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "db_split_screen_view_shortcut"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v1, :cond_7

    move-object v7, v5

    goto :goto_0

    :cond_7
    sget-object v7, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSummary_off:Ljava/lang/String;

    :goto_0
    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getMetricsCategory()I

    move-result v6

    const/16 v7, 0x1de5

    invoke-static {v6, v7, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :cond_8
    :goto_1
    return v4
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.freeform_window_management"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "pop_up_gesture"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->removePreference(Ljava/lang/String;)Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updatePopupGestureState(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updateRecentsKeyState(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updateSplitScreenState(Z)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updatePopupGestureState(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updateRecentsKeyState(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updateSplitScreenState(Z)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "navigation_bar_gesture_while_hidden"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mNaviBarSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_5
    return-void
.end method
