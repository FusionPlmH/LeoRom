.class public Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_ADVANCEDFEATURE_ONEHANDOPERATION:I


# instance fields
.field private mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mDescText:Landroid/widget/TextView;

.field private mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mNaviBarSettingsObserver:Landroid/database/ContentObserver;

.field private mOneHandOperationObserver:Landroid/database/ContentObserver;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mPrefShowHardKeysOnScreen:Landroid/support/v14/preference/SecSwitchPreference;

.field private mPreviewPreference:Lcom/android/settings/applications/LayoutPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;

.field showHardkey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$9;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$9;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mNaviBarSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->updateSwitchAndPreferenceState()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPrefShowHardKeysOnScreen:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->setOneHandOperation(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->changeColor(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->setDescText(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/WrapContentHeightViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private changeColor(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0802a8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0802a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private initLayoutPreference()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPreviewPreference:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPreviewPreference:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0234

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mDescText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPreviewPreference:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a05b5

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$4;-><init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPreviewPreference:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a05d6

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_0

    move v5, v3

    const v6, 0x7f0d014e

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f12109d

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$5;

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$5;-><init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;I)V

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0802a9

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPreviewPreference:Lcom/android/settings/applications/LayoutPreference;

    const v3, 0x7f0a05b6

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private isReadyOneHandedOperationStatusEnable()Z
    .locals 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSwitchAccessEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v15, "accessibility_magnifier"

    invoke-static {v12, v15, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v13, :cond_0

    move v12, v13

    goto :goto_0

    :cond_0
    move v12, v14

    :goto_0
    move v4, v12

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v15, "accessibility_display_magnification_enabled"

    invoke-static {v12, v15, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v15, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v12, v15, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    move v12, v14

    goto :goto_2

    :cond_3
    :goto_1
    move v12, v13

    :goto_2
    move v5, v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v15, "finger_magnifier"

    invoke-static {v12, v15, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v13, :cond_4

    move v12, v13

    goto :goto_3

    :cond_4
    move v12, v14

    :goto_3
    move v6, v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v12, v13

    goto :goto_4

    :cond_5
    move v12, v14

    :goto_4
    move v7, v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v15, "access_control_use"

    invoke-static {v12, v15, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v13, :cond_6

    move v12, v13

    goto :goto_5

    :cond_6
    move v12, v14

    :goto_5
    move v8, v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v15, "assistant_menu"

    invoke-static {v12, v15, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v13, :cond_7

    move v12, v13

    goto :goto_6

    :cond_7
    move v12, v14

    :goto_6
    move v9, v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v15, "direct_access"

    invoke-static {v12, v15, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v13, :cond_8

    move v12, v13

    goto :goto_7

    :cond_8
    move v12, v14

    :goto_7
    move v10, v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v15, "accessibility_autoclick_enabled"

    invoke-static {v12, v15, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v13, :cond_9

    goto :goto_8

    :cond_9
    move v13, v14

    :goto_8
    move v11, v13

    if-nez v2, :cond_a

    if-nez v3, :cond_a

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    if-nez v6, :cond_a

    if-nez v7, :cond_a

    if-nez v8, :cond_a

    if-nez v9, :cond_a

    if-nez v11, :cond_a

    if-eqz v10, :cond_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    return v0
.end method

.method private reduceSizeBroadcast(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "is_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private reduceSizeDisablePopup()V
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12106e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120041

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.app.talkback"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isExistAccessbilitiyPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\u200f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120718

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.google.android.marvin.talkback"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\u200f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120719

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.universalswitch"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isExistAccessbilitiyPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f12071a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.app.accesscontrol"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isExistAccessbilitiyPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120027

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.app.assistantmenu"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isExistAccessbilitiyPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1201a4

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f12071b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120056

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f12002a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1030132

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x7f0d0115

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0a024e

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a024f

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f12106d

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    new-instance v10, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;-><init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x1040000

    new-instance v10, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$7;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$7;-><init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$6;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$6;-><init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private setDescText(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "one_handed_op_wakeup_type"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, v0, p1

    add-int/lit8 p1, v2, -0x1

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->showHardkey:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mDescText:Landroid/widget/TextView;

    const v3, 0x7f121072

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mDescText:Landroid/widget/TextView;

    const v3, 0x7f121073

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mDescText:Landroid/widget/TextView;

    const v3, 0x7f121071

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setOneHandOperation(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "any_screen_enabled"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "one_handed_op_wakeup_type"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigation_bar_gesture_while_hidden"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "one_handed_op_wakeup_type"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f12106b

    invoke-static {v0, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method

.method private updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_handed_op_wakeup_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "one_handed_op_wakeup_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSwitchAndPreferenceState()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_gesture_while_hidden"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "one_handed_op_wakeup_type"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    :goto_2
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "one_handed_op_wakeup_type"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->setDescText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isRTL(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    sub-int v6, v3, v4

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPrefShowHardKeysOnScreen:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11200ae

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPrefShowHardKeysOnScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPrefShowHardKeysOnScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "one_handed_op_show_hard_keys"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    invoke-virtual {v5, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_8
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1100

    sput v0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->SETTINGS_ADVANCEDFEATURE_ONEHANDOPERATION:I

    sget v0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->SETTINGS_ADVANCEDFEATURE_ONEHANDOPERATION:I

    return v0
.end method

.method public initPreferece()V
    .locals 2

    const v0, 0x7f1500e1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->setAutoRemoveInsetCategory(Z)V

    const-string v0, "onehand_mode_preview"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPreviewPreference:Lcom/android/settings/applications/LayoutPreference;

    const-string v0, "gesture_type"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v0, "button_type"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const v1, 0x7f12107a

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setSummary(I)V

    const-string v0, "switch_show_hard_keys"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPrefShowHardKeysOnScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportOneHandModeShowHardKeySwitch()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "switch_show_hard_keys"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->removePreference(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->seslSetRoundedBg(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mPrefShowHardKeysOnScreen:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->showHardkey:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->showHardkey:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const v1, 0x7f121076

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setSummary(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const v1, 0x7f121077

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setSummary(I)V

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->initPreferece()V

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->initLayoutPreference()V

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->updateSwitchAndPreferenceState()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->initPreferece()V

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->initLayoutPreference()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f120b1c

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
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
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

    const-string v3, "one_handed_operation"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->startActivity(Landroid/content/Intent;)V
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

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mNaviBarSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getMetricsCategory()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x1102

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "any_screen_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->updateSwitchAndPreferenceState()V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "navigation_bar_gesture_while_hidden"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mNaviBarSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v4, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "any_screen_enabled"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v3

    nop

    :cond_0
    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12106c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->isReadyOneHandedOperationStatusEnable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->reduceSizeDisablePopup()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->setOneHandOperation(I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->setOneHandOperation(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x1101

    if-eqz p2, :cond_4

    const-wide/16 v3, 0x3e8

    goto :goto_1

    :cond_4
    const-wide/16 v3, 0x0

    :goto_1
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_5
    return-void
.end method
