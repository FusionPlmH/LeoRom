.class public Lcom/samsung/android/settings/display/NewModePreview;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NewModePreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;,
        Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;,
        Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static sPackageName:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

.field private mAdvancedSettingButton:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:I

.field mBluelightFilterDialog:Landroid/app/AlertDialog;

.field private mBluelightFilterObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mItemDecoration:Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mPresetCool:Landroid/widget/TextView;

.field private mPresetSeekBar:Landroid/widget/SeekBar;

.field private mPresetWarm:Landroid/widget/TextView;

.field private mPreviewLayout:Landroid/widget/RelativeLayout;

.field private mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

.field private mScreenModeList:Landroid/support/v7/widget/RecyclerView;

.field private mScreenModeView:Landroid/view/View;

.field private mSeekBarLayout:Landroid/widget/LinearLayout;

.field mSupportWcgModeOnAmoled:Z

.field private mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

.field private mVividContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "com.sec.android.gallery3d"

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.sbrowser"

    const-string v3, "com.samsung.everglades.video"

    const-string/jumbo v4, "tv.peel.samsung.app"

    const-string/jumbo v5, "tv.peel.smartremote"

    const-string v6, "com.sec.readershub"

    const-string v7, "com.google.android.apps.books"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/NewModePreview;->sPackageName:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$7;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/NewModePreview$7;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/NewModePreview;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBatteryLevel:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportWcgModeOnAmoled:Z

    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;-><init>(Lcom/samsung/android/settings/display/NewModePreview;Lcom/samsung/android/settings/display/NewModePreview$1;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/NewModePreview$8;-><init>(Lcom/samsung/android/settings/display/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/NewModePreview$9;-><init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBluelightFilterObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/NewModePreview;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/NewModePreview;->changeColor(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/display/NewModePreview;)Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mAdapter:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/settings/display/NewModePreview;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/display/NewModePreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NewModePreview;->setEnabledExclusiveBLF()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/display/NewModePreview;)Lcom/samsung/android/settings/WrapContentHeightViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/display/NewModePreview;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/NewModePreview;->showBluelightfilterDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mVividContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/display/NewModePreview;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/NewModePreview;->setScreenMode(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/display/NewModePreview;)Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    return-object v0
.end method

.method private changeColor(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0805ff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0805fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private createScreenModeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0d01fd

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    goto :goto_0

    :cond_1
    const v0, 0x7f0d01fe

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const v2, 0x7f0a05b5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v2, Lcom/samsung/android/settings/display/NewModePreview$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/NewModePreview$1;-><init>(Lcom/samsung/android/settings/display/NewModePreview;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const v2, 0x7f0a05f4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPreviewLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPreviewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPreviewLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->semSetRoundedCornerColor(II)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const v2, 0x7f0a05d6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v4, v0, :cond_3

    move v7, v4

    const v8, 0x7f0d0259

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f12109d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v10, v4, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/samsung/android/settings/display/NewModePreview$2;

    invoke-direct {v5, p0, v7}, Lcom/samsung/android/settings/display/NewModePreview$2;-><init>(Lcom/samsung/android/settings/display/NewModePreview;I)V

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v7, 0x7f0805fe

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/16 v7, 0x8

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const v8, 0x7f0a04e6

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    iput-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewModePreview;->mAdapter:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView;->setSelected(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView;->setClickable(Z)V

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8, v6, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v6}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance v8, Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;

    iget-object v9, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;-><init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/display/NewModePreview;->mItemDecoration:Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, p0, Lcom/samsung/android/settings/display/NewModePreview;->mItemDecoration:Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v1}, Landroid/support/v7/widget/RecyclerView;->semSetRoundedCorners(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v1, v9}, Landroid/support/v7/widget/RecyclerView;->semSetRoundedCornerColor(II)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0805da

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const v9, 0x7f0a08eb

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/samsung/android/settings/display/NewModePreview;->mVividContainer:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_mode_automatic_setting"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/display/NewModePreview;->mVividContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/display/NewModePreview;->mVividContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v5, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const v7, 0x7f0a06b5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v6, v1}, Landroid/support/v4/widget/NestedScrollView;->semSetRoundedCorners(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/support/v4/widget/NestedScrollView;->semSetRoundedCornerColor(II)V

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const v7, 0x7f0a0700

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSeekBarLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSeekBarLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSeekBarLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v6, v1, v3}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSeekBarLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const v3, 0x7f0a05e0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetCool:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const v3, 0x7f0a05e2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetWarm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const v3, 0x7f0a0703

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/samsung/android/settings/display/NewModePreview$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/NewModePreview$3;-><init>(Lcom/samsung/android/settings/display/NewModePreview;)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "sec_display_preset_index"

    invoke-static {v1, v3, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current preset : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    rsub-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const v2, 0x7f0a005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/RoundButtonView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mAdvancedSettingButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mAdvancedSettingButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    return-object v1
.end method

.method public static getCurrentScreenMode(Landroid/content/ContentResolver;)I
    .locals 3

    const-string v0, "screen_mode_automatic_setting"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x4

    return v1

    :cond_0
    const-string v2, "screen_mode_setting"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private setDisplayColor(I)V
    .locals 5

    const-string v0, "persist.sys.sf.native_mode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v2, 0x3ff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "ModePreview"

    const-string v4, "Failed to set display color"

    invoke-static {v3, v4, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_0
    :goto_2
    return-void
.end method

.method private setEnabledExclusiveBLF()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

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
    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetCool:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetCool:Landroid/widget/TextView;

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetWarm:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetWarm:Landroid/widget/TextView;

    if-nez v0, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mAdvancedSettingButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mAdvancedSettingButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/widget/RoundButtonView;->setEnabled(Z)V

    :cond_8
    return-void
.end method

.method private setScreenMode(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportWcgModeOnAmoled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string v0, "ModePreview"

    const-string v1, "set Mdnie ScreenMode WCG : 3 to 0"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/NewModePreview;->setDisplayColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_0

    :cond_0
    const-string v0, "ModePreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Mdnie ScreenMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/NewModePreview;->setDisplayColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "ModePreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Mdnie ScreenMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    :goto_0
    return-void
.end method

.method private setScreenModeItems()V
    .locals 8

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportAmoledDisplay()Z

    move-result v0

    const v1, 0x7f121638

    const v2, 0x7f121636

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportWcgModeOnAmoled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    const v1, 0x7f121647

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    const v1, 0x7f121646

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {v0, v2, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    const v2, 0x7f121640

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    const v2, 0x7f121634

    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v7, "SEC_FLOATING_FEATURE_LCD_SUPPORT_SCREEN_MODE_TYPE"

    invoke-virtual {v0, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    const v7, 0x7f12163e

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {v0, v2, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {v0, v7, v3}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    const v2, 0x7f12163f

    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_SCREEN_MODE_TYPE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    const v1, 0x7f121635

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    const v1, 0x7f12163c

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    const v1, 0x7f121644

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    :goto_0
    return-void
.end method

.method private setScreenModeItemsTablet()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    const v1, 0x7f121636

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    const v1, 0x7f121640

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    const v1, 0x7f121634

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    const v1, 0x7f121638

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    return-void
.end method

.method private showBluelightfilterDialog(I)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/NewModePreview$4;-><init>(Lcom/samsung/android/settings/display/NewModePreview;)V

    new-instance v1, Lcom/samsung/android/settings/display/NewModePreview$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/NewModePreview$5;-><init>(Lcom/samsung/android/settings/display/NewModePreview;I)V

    new-instance v2, Lcom/samsung/android/settings/display/NewModePreview$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/NewModePreview$6;-><init>(Lcom/samsung/android/settings/display/NewModePreview;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12163b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12163a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121643

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120774

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121ac2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1079

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a005e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ModePreview"

    const-string v1, "Adaptive display settings icon onClick"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f121633

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    nop

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a04aa

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/display/NewModePreview;->createScreenModeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const-string v1, "mDNIe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportWcgModeOnAmoled:Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NewModePreview;->setScreenModeItemsTablet()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/NewModePreview;->setScreenModeItems()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->getCurrentScreenMode(Landroid/content/ContentResolver;)I

    move-result v0

    const-string v1, "ModePreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() selectedMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;-><init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/content/Context;Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mAdapter:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/NewModePreview;->createScreenModeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->getCurrentScreenMode(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/NewModePreview;->setScreenMode(I)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportColorBalance()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBluelightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "ModePreview"

    const-string/jumbo v3, "unregisterReceiver exception"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120d50

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview;->finish()V

    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportColorBalance()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "blue_light_filter"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBluelightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NewModePreview;->setEnabledExclusiveBLF()V

    :cond_2
    return-void
.end method
