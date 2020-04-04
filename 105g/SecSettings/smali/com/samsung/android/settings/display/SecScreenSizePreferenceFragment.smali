.class public Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecScreenSizePreferenceFragment.java"


# static fields
.field public static DEBUG:Z

.field public static DENSITY_BASE_PIXEL:[F


# instance fields
.field private mContext:Landroid/content/Context;

.field mCurrentDensityIndex:I

.field private mCurrentScale:F

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mDensities:[I

.field private mFlipFolderState:I

.field private final mFlipFolderStateReceiver:Landroid/content/BroadcastReceiver;

.field private mIsChangedScreenSizeSeekBar:Z

.field private mLarger:Landroid/view/View;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mPreviewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

.field private mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

.field private mPreviewSampleResIds:[I

.field private mPreviewTextSize:I

.field private mResIds_without_grid_app:[I

.field private mResIds_without_grid_app_external:[I

.field private mScreenPreview:Landroid/widget/LinearLayout;

.field private mScreenSizeLayout:Landroid/widget/LinearLayout;

.field private mScreenSizePreview:Landroid/view/View;

.field private mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

.field private mSelectedScreenSize:I

.field private mSmaller:Landroid/view/View;

.field private mTouchInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->DEBUG:Z

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->DENSITY_BASE_PIXEL:[F

    return-void

    :array_0
    .array-data 4
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x40900000    # 4.5f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mIsChangedScreenSizeSeekBar:Z

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7f0d0261

    aput v3, v2, v0

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mResIds_without_grid_app:[I

    new-array v1, v1, [I

    aput v3, v1, v0

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mResIds_without_grid_app_external:[I

    new-instance v0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;-><init>(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mFlipFolderStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mFlipFolderState:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mFlipFolderState:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)Lcom/samsung/android/settings/WrapContentHeightViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mTouchInProgress:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mTouchInProgress:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->doneScreenPreview()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)Lcom/android/settings/PreviewPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewTextSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mCurrentScale:F

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mIsChangedScreenSizeSeekBar:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)Lcom/samsung/android/settings/display/widget/IntervalSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    return-object v0
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v0, v0, [I

    aput p1, v0, v2

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private doneScreenPreview()V
    .locals 3

    const-string v0, "SecScreenSizePreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsChangedScreenSizeSeekBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mIsChangedScreenSizeSeekBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentDensityIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mCurrentDensityIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSelectedScreenSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mSelectedScreenSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mIsChangedScreenSizeSeekBar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mCurrentDensityIndex:I

    iget v1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mSelectedScreenSize:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mCurrentDensityIndex:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mDensities:[I

    iget v2, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mCurrentDensityIndex:I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->ApplyForcedDisplayDensity(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeColor(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0802a8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0802a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d18

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const v0, 0x7f0d025b

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizePreview:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f12164d

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {v0, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mDensities:[I

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    move v7, v0

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mDensities:[I

    array-length v0, v0

    new-array v8, v0, [Landroid/content/res/Configuration;

    const-string v0, "SecScreenSizePreferenceFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mDensities.length"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mDensities:[I

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v9

    move v0, v5

    :goto_1
    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mDensities:[I

    array-length v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    if-ge v0, v10, :cond_3

    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v12, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mDensities:[I

    aget v12, v12, v0

    iput v12, v10, Landroid/content/res/Configuration;->densityDpi:I

    :cond_1
    iput v11, v10, Landroid/content/res/Configuration;->fontScale:F

    aput-object v10, v8, v0

    iget-object v11, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mDensities:[I

    aget v11, v11, v0

    if-ne v9, v11, :cond_2

    iput v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mCurrentDensityIndex:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mCurrentDensityIndex:I

    iput v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mSelectedScreenSize:I

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mResIds_without_grid_app:[I

    iput-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewSampleResIds:[I

    goto :goto_2

    :cond_4
    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mResIds_without_grid_app_external:[I

    iput-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewSampleResIds:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mResIds_without_grid_app_external:[I

    iput-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewSampleResIds:[I

    :goto_3
    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizePreview:Landroid/view/View;

    const v10, 0x7f0a05f5

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v0, Lcom/android/settings/PreviewPagerAdapter;

    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewSampleResIds:[I

    invoke-direct {v0, v10, v7, v12, v8}, Lcom/android/settings/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    iget v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mCurrentDensityIndex:I

    invoke-virtual {v0, v10}, Lcom/android/settings/PreviewPagerAdapter;->setPreviewLayer(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f0b03f4

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewTextSize:I

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "font_scale"

    invoke-static {v0, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mCurrentScale:F

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    iget v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewTextSize:I

    iget v11, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mCurrentScale:F

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/PreviewPagerAdapter;->SetFontScale(IF)V

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    if-eqz v7, :cond_5

    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewSampleResIds:[I

    array-length v10, v10

    sub-int/2addr v10, v6

    goto :goto_4

    :cond_5
    move v10, v5

    :goto_4
    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v10, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$2;

    invoke-direct {v10, v1}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$2;-><init>(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)V

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizePreview:Landroid/view/View;

    const v10, 0x7f0a05d6

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPointArea:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewSampleResIds:[I

    array-length v0, v0

    const/16 v10, 0x8

    if-le v0, v6, :cond_9

    move v11, v5

    :goto_5
    if-ge v11, v0, :cond_6

    move v12, v11

    const v13, 0x7f0d014e

    invoke-virtual {v2, v13, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v14, 0x7f1215da

    invoke-virtual {v1, v14}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    add-int/lit8 v3, v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v15, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v15, v6

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$3;

    invoke-direct {v3, v1, v12}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$3;-><init>(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;I)V

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    iget-object v3, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v11, 0x7f0802a9

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    if-eqz v7, :cond_8

    iget-object v3, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPreviewSampleResIds:[I

    array-length v3, v3

    sub-int/2addr v3, v6

    goto :goto_6

    :cond_8
    move v3, v5

    :goto_6
    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->changeColor(I)V

    goto :goto_7

    :cond_9
    iget-object v3, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_7
    iget-object v3, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizePreview:Landroid/view/View;

    const v11, 0x7f0a06af

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v11, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizePreview:Landroid/view/View;

    const v12, 0x7f0a06ac

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeLayout:Landroid/widget/LinearLayout;

    iget-object v11, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizePreview:Landroid/view/View;

    const v12, 0x7f0a06fd

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iput-object v11, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget-object v11, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v11

    const/4 v12, -0x1

    const v13, 0x7f0805da

    const v14, 0x7f0601bb

    const/16 v15, 0xf

    if-ne v11, v12, :cond_a

    iget-object v5, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_9

    :cond_a
    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v15, v11}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget-object v11, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mDensities:[I

    array-length v11, v11

    sub-int/2addr v11, v6

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setMax(I)V

    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget v11, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mCurrentDensityIndex:I

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgress(I)V

    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    new-instance v11, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;

    invoke-direct {v11, v1}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;-><init>(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)V

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v10, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    new-instance v11, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$5;

    invoke-direct {v11, v1}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$5;-><init>(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)V

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "easy_mode_switch"

    invoke-static {v10, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_b

    move v10, v6

    goto :goto_8

    :cond_b
    move v10, v5

    :goto_8
    iget-object v11, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    if-nez v10, :cond_c

    move v5, v6

    nop

    :cond_c
    invoke-virtual {v11, v5}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setEnabled(Z)V

    iget-object v5, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget-object v6, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    const v11, 0x7f0806f2

    invoke-virtual {v6, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060183

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v1, v5}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iget-object v6, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizePreview:Landroid/view/View;

    const v11, 0x7f0a077c

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mSmaller:Landroid/view/View;

    iget-object v6, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mSmaller:Landroid/view/View;

    new-instance v11, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$6;

    invoke-direct {v11, v1}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$6;-><init>(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizePreview:Landroid/view/View;

    const v11, 0x7f0a044a

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mLarger:Landroid/view/View;

    iget-object v6, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mLarger:Landroid/view/View;

    new-instance v11, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$7;

    invoke-direct {v11, v1}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$7;-><init>(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9
    iget-object v5, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizePreview:Landroid/view/View;

    const v6, 0x7f0a000e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenPreview:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v5, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenPreview:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v15, v6}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v5, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenPreview:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v1, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizePreview:Landroid/view/View;

    return-object v5
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    iget v4, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mFlipFolderState:I

    if-eq v4, v2, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus()I

    move-result v4

    if-eq v4, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mFlipFolderStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.flipfolder.OPEN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mFlipFolderStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
