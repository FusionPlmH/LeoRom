.class public Lcom/samsung/android/settings/display/FontPreview;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "FontPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/FontPreview$LoadListTask;
    }
.end annotation


# static fields
.field private static final APK_NAME_LIST:[Ljava/lang/String;

.field private static CHANGE_MODE_FONT_SIZE:I

.field private static CHANGE_MODE_FONT_STYLE:I

.field private static CHANGE_MODE_SCREEN_SIZE:I

.field public static DEBUG:Z

.field public static DENSITY_BASE_PIXEL:[F

.field private static DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

.field public static REBOOT:Z

.field public static sSelectedFontSizeSeekBarProgress:I


# instance fields
.field private mAccessFontOnOff:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mBixbyCurrentStatesId:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChangingSizeText:Landroid/widget/TextView;

.field private mCharSeqRevisedValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mCurrentDensityIndex:I

.field mCurrentFontIndex:I

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mDensities:[I

.field private mExtraHugeString:Ljava/lang/String;

.field private mExtraLargeFontIndex:I

.field private mFloatRevisedValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mFontFloatSize:F

.field private mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

.field private mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

.field private mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

.field private mFontSizeStrings:[Ljava/lang/String;

.field private mFontStyleListView:Landroid/widget/ListView;

.field private mFontSwitch:Landroid/widget/Switch;

.field private mFontSwitchTextView:Landroid/widget/TextView;

.field private mFontWithDensityDescTextView:Landroid/widget/TextView;

.field private mHugeString:Ljava/lang/String;

.field private mIsAccessibilitySettingsVision:Z

.field private mIsChangedFontSizeSeekBar:Z

.field private mIsChangedScreenSizeSeekBar:Z

.field private mIsClickSwitch:Z

.field private mIsEnabledShowBtnBg:Z

.field private mIsFont11Level:Z

.field private mIsFontLargerOn:Z

.field private mIsFromSetupWizard:Z

.field private mIsRunLoadListTask:Z

.field mIsSelectedCurrentThemeFont:Z

.field private mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

.field private mMaxTextView:Landroid/widget/TextSwitcher;

.field private mMinTextView:Landroid/widget/TextView;

.field private mPackageName:Ljava/lang/String;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mPreviewPager:Landroid/support/v4/view/ViewPager;

.field private mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

.field private mPreviewSampleResIds:[I

.field private mPreviousFont:I

.field private mProgressBarLayout:Landroid/widget/RelativeLayout;

.field private mResIds_without_grid_app:[I

.field private mResIds_without_grid_app_external:[I

.field private mSavedClickedItem:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mScreenSizeLayout:Landroid/widget/LinearLayout;

.field private mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

.field private mSelectedFontSize:I

.field private mSelectedFontStyleItemIndex:I

.field private mSelectedScreenSize:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowForHugeFontTextView:Landroid/widget/TextView;

.field private mThemeFontTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    const/4 v1, 0x7

    sput v1, Lcom/samsung/android/settings/display/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    const-string v2, ""

    const-string v3, "com.monotype.android.font.chococooky"

    const-string v4, "com.monotype.android.font.cooljazz"

    const-string v5, "com.monotype.android.font.helvneuelt"

    const-string v6, "com.monotype.android.font.samsungsans"

    const-string v7, "com.monotype.android.font.rosemary"

    const-string v8, "com.monotype.android.font.applemint"

    const-string v9, "com.monotype.android.font.tinkerbell"

    const-string v10, "com.monotype.android.font.udrgothic"

    const-string v11, "com.monotype.android.font.udmincho"

    const-string v12, "com.monotype.android.font.arjpopb"

    const-string v13, "com.monotype.android.font.kaiti"

    const-string v14, "com.monotype.android.font.shaonv"

    const-string v15, "com.monotype.android.font.miao"

    const-string v16, "com.monotype.android.font.samsungone"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/display/FontPreview;->APK_NAME_LIST:[Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/settings/display/FontPreview;->DENSITY_BASE_PIXEL:[F

    const/4 v1, 0x1

    sput v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_SIZE:I

    const/4 v1, 0x2

    sput v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_STYLE:I

    const/4 v1, 0x4

    sput v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_SCREEN_SIZE:I

    sput-boolean v0, Lcom/samsung/android/settings/display/FontPreview;->REBOOT:Z

    return-void

    :array_0
    .array-data 4
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x40900000    # 4.5f
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/FontPreview;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/FontPreview;)Lcom/android/settings/PreviewPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/settings/display/FontPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/settings/display/FontPreview;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/display/FontPreview;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->getFontNameFromSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/display/widget/IntervalSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/display/FontPreview;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/display/FontPreview;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreview;->setFontStyleList(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/display/FontPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedScreenSizeSeekBar:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/FontPreview;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreview;->changeFontSizeFromSeekBar(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/android/settings/display/FontPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedFontSizeSeekBar:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/display/FontPreview;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/display/FontPreview;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private changeFontSizeFromSeekBar(I)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "font_size"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x3

    if-lt v1, v4, :cond_2

    if-ge p1, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    int-to-float v5, v3

    mul-float/2addr v5, v0

    const v6, 0x3f59999a    # 0.85f

    mul-float/2addr v5, v6

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_2
    if-ge v1, v4, :cond_3

    if-lt p1, v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    int-to-float v5, v3

    mul-float/2addr v5, v0

    const v6, 0x3f947ae1    # 1.16f

    mul-float/2addr v5, v6

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    int-to-float v5, v3

    mul-float/2addr v5, v0

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/PreviewPagerAdapter;->SetFontScale(IF)V

    sput p1, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontFloatSize:F

    return-void
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

.method private configureActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    return-void
.end method

.method private getCurrentSavedFontString()Ljava/lang/String;
    .locals 5

    const-string v0, "default"

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    sub-int/2addr v4, v2

    if-lez v4, :cond_0

    array-length v4, v3

    sub-int/2addr v4, v2

    aget-object v0, v3, v4

    :cond_0
    return-object v0
.end method

.method private getFontNameFromSystem()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v6, v5

    sub-int/2addr v6, v4

    if-lez v6, :cond_0

    array-length v6, v5

    sub-int/2addr v6, v4

    aget-object v3, v5, v6

    :cond_0
    const-string v4, "monotype"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "default"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f121546

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    :cond_2
    return-object v3
.end method

.method private setAccessiblityFontSizeView(Z)V
    .locals 7

    if-eqz p1, :cond_2

    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const v3, 0x7f0a0007

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a0448

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    const v4, 0x7f0a0449

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitchTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitchTextView:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v1}, Landroid/widget/Switch;->setClickable(Z)V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    iget v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    if-eqz v6, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f121465

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private setDim(ZZ)V
    .locals 4

    const v0, 0x7f060099

    const v1, 0x7f0806e1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    const v3, 0x7f0806c6

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setDrawable(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    sget v1, Lcom/samsung/android/settings/display/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mHugeString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    const v3, 0x7f0806c5

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setDrawable(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->animationStart(Z)V

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->invalidate()V

    :cond_6
    return-void
.end method

.method private setFontStyleList(Landroid/os/Bundle;)V
    .locals 9

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->setReHeightFontStyleListview()V

    const v0, 0x7f0a0323

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    new-instance v3, Lcom/samsung/android/settings/display/FontPreview$6;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/display/FontPreview$6;-><init>(Lcom/samsung/android/settings/display/FontPreview;Landroid/widget/ScrollView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->loadPreferences()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->setSelectedFontStyle()V

    if-eqz p1, :cond_3

    const-string v2, "USER_SELECTED_FONT_STYLE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x1

    move-object v3, p0

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/settings/display/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_3
    return-void
.end method

.method private setFontsizeLayoutSevenOrEleven(Z)V
    .locals 6

    const v0, 0x7f0d019d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FontPreview;->setContentView(I)V

    const v0, 0x7f0a032b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0322

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0754

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    const v0, 0x7f0a06f7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const v2, 0x7f0806e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/FontPreview;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    sget v2, Lcom/samsung/android/settings/display/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    const v1, 0x7f0a0841

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    const v1, 0x7f0a032c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontWithDensityDescTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0325

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextSwitcher;

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    new-instance v2, Lcom/samsung/android/settings/display/FontPreview$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FontPreview$5;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    const/high16 v1, 0x10a0000

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    if-eqz p1, :cond_1

    const v3, 0x7f0a0326

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMinTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12147c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mHugeString:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121443

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraHugeString:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121464

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setMax(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121463

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setMax(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/display/FontPreview;->setDim(ZZ)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontWithDensityDescTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setReHeightFontStyleListview()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-interface {v4, v1, v5, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "font_size"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v3, v3, 0x5

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->requestLayout()V

    :cond_2
    return-void
.end method

.method private setSelectedFontStyle()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->getCurrentSavedFontString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FontPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelectedFontStyle : selectedFont : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeFontIndex()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const-string v1, "FontPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelectedFontStyle : Current Theme Font index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const-string v1, "FontPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelectedFontStyle : selectedFont index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const-wide/16 v8, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/display/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private startDownloadFont(I)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121560

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x14000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121545

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    move-object v1, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0x106d

    const-wide/16 v4, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iput p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    return-void
.end method

.method private update3StepFontsizeList()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeStrings:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    aget-object v6, v2, v4

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mCharSeqRevisedValues:Ljava/util/ArrayList;

    return-void
.end method

.method private update7StepFontsizeList()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mCharSeqRevisedValues:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public changeColor(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0802a6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0802a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d15

    return v0
.end method

.method public loadPreferences()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "SavedClickedItem"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flip_font_style"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_font_style"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "FontPreview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFontStyleIndexForMultiUser() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isPressed()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/settings/display/FontPreview;->setDim(ZZ)V

    iput-boolean p2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    const/16 v4, 0x107d

    invoke-static {v1, v4, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->setReHeightFontStyleListview()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    iput-object v1, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSize(Landroid/content/Context;)F

    move-result v0

    float-to-int v3, v0

    const-string v0, "fontArraySize"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fontArraySize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v0, 0xb

    if-ne v3, v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "show_button_background"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsEnabledShowBtnBg:Z

    iget-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    const/4 v6, 0x6

    if-eqz v0, :cond_2

    iput v6, v1, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "accessiblity_font_switch"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    iget v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    if-ne v0, v4, :cond_3

    iput-boolean v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    goto :goto_2

    :cond_3
    iput-boolean v5, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    const/4 v0, 0x5

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const v7, 0x7f121601

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v8, "isAccessibilitySettingsVision"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    iget-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v0, :cond_4

    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/FontPreview;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v0, :cond_4

    iput v6, v1, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    :cond_4
    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "device_provisioned"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    goto :goto_4

    :cond_6
    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/FontPreview;->setTitle(Ljava/lang/CharSequence;)V

    :goto_4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/LinkedHashSet;

    iget-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/LinkedHashSet;

    const-string v6, "ScreenZoomAndFont"

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/LinkedHashSet;

    const-string v6, "Font"

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/LinkedHashSet;

    const-string v6, "Font"

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/LinkedHashSet;

    const-string v6, "ScreenZoomAndFont"

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->configureActionBar()V

    iget-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/display/FontPreview;->setFontsizeLayoutSevenOrEleven(Z)V

    iget-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/display/FontPreview;->setAccessiblityFontSizeView(Z)V

    :cond_8
    iget-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    const/16 v6, 0x8

    if-eqz v0, :cond_9

    const v0, 0x7f0a0752

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    const/4 v7, 0x2

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v8, "elite"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setMax(I)V

    const v0, 0x7f0a0326

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v8, 0x7f12183c

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    const v8, 0x7f0a0325

    invoke-virtual {v1, v8}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextSwitcher;

    const v9, 0x7f120cab

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->update3StepFontsizeList()V

    goto :goto_6

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->update7StepFontsizeList()V

    :goto_6
    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/samsung/android/settings/display/FontPreview;->DENSITY_BASE_PIXEL:[F

    invoke-static {v0, v8}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v4, :cond_b

    move v0, v4

    goto :goto_7

    :cond_b
    move v0, v5

    :goto_7
    move v9, v0

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v0, v0

    new-array v10, v0, [Landroid/content/res/Configuration;

    const-string v0, "FontPreview onCreate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDensities.length"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v11

    move v0, v5

    :goto_8
    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v12, v12

    if-ge v0, v12, :cond_d

    new-instance v12, Landroid/content/res/Configuration;

    invoke-direct {v12, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v13, v1, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    aget v13, v13, v0

    iput v13, v12, Landroid/content/res/Configuration;->densityDpi:I

    const/high16 v13, 0x3f800000    # 1.0f

    iput v13, v12, Landroid/content/res/Configuration;->fontScale:F

    aput-object v12, v10, v0

    iget-object v13, v1, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    aget v13, v13, v0

    if-ne v11, v13, :cond_c

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    iget v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedScreenSize:I

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_e

    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mResIds_without_grid_app:[I

    iput-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    goto :goto_9

    :cond_e
    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mResIds_without_grid_app_external:[I

    iput-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    goto :goto_a

    :catch_0
    move-exception v0

    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mResIds_without_grid_app_external:[I

    iput-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    :goto_a
    const v0, 0x7f0a05f2

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/android/settings/PreviewPagerAdapter;

    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    invoke-direct {v0, v12, v9, v13, v10}, Lcom/android/settings/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    invoke-virtual {v0, v12}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v9, :cond_f

    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    array-length v12, v12

    sub-int/2addr v12, v4

    goto :goto_b

    :cond_f
    move v12, v5

    :goto_b
    invoke-virtual {v0, v12}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    new-instance v12, Lcom/samsung/android/settings/display/FontPreview$1;

    invoke-direct {v12, v1}, Lcom/samsung/android/settings/display/FontPreview$1;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v0, v12}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v0, 0x7f0a05d4

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    array-length v0, v0

    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    move v13, v5

    :goto_c
    const/4 v14, 0x0

    if-ge v13, v0, :cond_10

    move v15, v13

    const v6, 0x7f0d0146

    invoke-virtual {v12, v6, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v14, 0x7f12158d

    invoke-virtual {v1, v14}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-array v4, v7, [Ljava/lang/Object;

    add-int/lit8 v7, v13, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v17, 0x1

    aput-object v7, v4, v17

    invoke-static {v14, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$2;

    invoke-direct {v4, v1, v15}, Lcom/samsung/android/settings/display/FontPreview$2;-><init>(Lcom/samsung/android/settings/display/FontPreview;I)V

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x2

    goto :goto_c

    :cond_10
    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_11

    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v6, 0x7f0802a7

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_11
    if-eqz v9, :cond_12

    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    array-length v4, v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    goto :goto_d

    :cond_12
    move v4, v5

    :goto_d
    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/display/FontPreview;->changeColor(I)V

    const v4, 0x7f0a06aa

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0a06f8

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iput-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_13

    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10

    :cond_13
    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget-object v6, v1, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setMax(I)V

    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget v6, v1, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgress(I)V

    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    new-instance v6, Lcom/samsung/android/settings/display/FontPreview$3;

    invoke-direct {v6, v1}, Lcom/samsung/android/settings/display/FontPreview$3;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "easy_mode_switch"

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_e

    :cond_14
    move v4, v5

    :goto_e
    iget-object v6, v1, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    if-nez v4, :cond_15

    const/4 v7, 0x1

    goto :goto_f

    :cond_15
    move v7, v5

    :goto_f
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setEnabled(Z)V

    :goto_10
    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v4

    iput v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget v6, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgress(I)V

    iget v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    iput v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mCurrentFontIndex:I

    iget v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    iget v6, v1, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    if-le v4, v6, :cond_16

    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_16
    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    new-instance v6, Lcom/samsung/android/settings/display/FontPreview$4;

    invoke-direct {v6, v1}, Lcom/samsung/android/settings/display/FontPreview$4;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    iget v6, v1, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    invoke-virtual {v4, v6}, Lcom/android/settings/PreviewPagerAdapter;->setPreviewLayer(I)V

    iget-boolean v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    if-eqz v4, :cond_18

    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    if-eqz v4, :cond_17

    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->getProgress()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/display/FontPreview;->changeFontSizeFromSeekBar(I)V

    :cond_17
    return-void

    :cond_18
    const v4, 0x7f0a0329

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget-object v4, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070581

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f07057a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_19

    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    iget-object v13, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v13}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object v15, v7

    move/from16 v19, v6

    invoke-direct/range {v15 .. v20}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v13, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v13, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    :cond_19
    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    iget-object v13, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v13}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v7

    move/from16 v17, v6

    invoke-direct/range {v15 .. v20}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v13, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v13, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_11
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v13, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v13, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v13, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v13, :cond_1a

    iget-boolean v13, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    if-nez v13, :cond_1b

    new-instance v13, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    invoke-direct {v13, v1, v14}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;-><init>(Lcom/samsung/android/settings/display/FontPreview;Lcom/samsung/android/settings/display/FontPreview$1;)V

    iput-object v13, v1, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    iget-object v13, v1, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    sget-object v14, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v13, v14, v5}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_12

    :cond_1a
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/display/FontPreview;->setFontStyleList(Landroid/os/Bundle;)V

    :cond_1b
    :goto_12
    const-string v5, "FontPreview onCreate"

    const-string v13, "called onCreate()"

    invoke-static {v5, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    :cond_1
    const-string v0, "FontPreview destroy"

    const-string v1, "called onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p3

    const-string v0, "FlipFont"

    const-string v3, "onItemClick:()"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v3, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    iput v2, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v7, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    return-void

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f121461

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {v1, v3}, Lcom/samsung/android/settings/display/FontPreview;->startDownloadFont(I)V

    return-void

    :cond_2
    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x106d

    const/4 v10, 0x1

    if-eqz v8, :cond_4

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    iget-object v11, v1, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    iget-object v11, v1, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v11}, Lcom/android/settings/PreviewPagerAdapter;->SetFontStyle(Landroid/graphics/Typeface;)V

    :cond_3
    iput-boolean v10, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v0

    const-wide/16 v10, 0x2

    invoke-static {v0, v9, v10, v11}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void

    :cond_4
    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    if-ge v2, v10, :cond_5

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x7f121557

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    nop

    nop

    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_5
    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x7f121558

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v12, :cond_6

    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v12

    iput-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v12}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v12, v10}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v12}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_6
    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget v13, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v5

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v5, v12, v11

    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/ActivityManager;

    const/4 v0, 0x3

    invoke-virtual {v12, v0, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_7

    :try_start_1
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :cond_7
    :goto_3
    const-string v0, "FlipFont"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pkgName1:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    iget-object v14, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v14, v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v0, v14, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    iget-object v14, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v14, v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/settings/PreviewPagerAdapter;->SetFontStyle(Landroid/graphics/Typeface;)V

    :cond_8
    const/4 v14, 0x0

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_9

    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v15, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v14, v0

    goto :goto_4

    :catch_2
    move-exception v0

    :cond_9
    :goto_4
    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v15, "USER_SELECTED_FONT_STYLE"

    iget v10, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v0, v15, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_a
    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget v10, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v10, "default"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_5

    :cond_b
    goto :goto_6

    :cond_c
    :goto_5
    const/4 v11, 0x1

    :goto_6
    move v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v11

    if-eqz v10, :cond_d

    const-wide/16 v15, 0x1

    :goto_7
    move-object/from16 v17, v0

    move-wide v0, v15

    goto :goto_8

    :cond_d
    const-wide/16 v15, 0x0

    goto :goto_7

    :goto_8
    invoke-static {v11, v9, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_e
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 8

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;-><init>(Lcom/samsung/android/settings/display/FontPreview;Lcom/samsung/android/settings/display/FontPreview$1;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "FontPreview onResume"

    const-string v2, "called onResume()"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "easy_mode_switch"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setEnabled(Z)V

    const v2, 0x7f0a06a9

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f060112

    goto :goto_2

    :cond_3
    const v4, 0x7f060195

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v4, 0x7f0a06ac

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v5, 0x7f0a06ab

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x8

    if-eqz v0, :cond_4

    move v7, v6

    goto :goto_3

    :cond_4
    move v7, v1

    :goto_3
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v7, 0x7f0a0004

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v1, v6

    :goto_4
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "USER_SELECTED_FONT_STYLE"

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
