.class public Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecFontSizePreferenceFragment.java"


# static fields
.field public static DEBUG:Z

.field private static mFontSize:F

.field public static sSelectedFontSizeSeekBarProgress:I


# instance fields
.field private mBoldFontPreference:Landroid/support/v14/preference/SecSwitchPreference;

.field private mBooster:Lcom/samsung/android/settings/utils/Booster;

.field private mChangingSizeText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

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

.field private mFontPreviewScroll:Landroid/widget/ScrollView;

.field private mFontSizePreview:Landroid/view/View;

.field private mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

.field private mFontStylePreference:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mHalfStroke:Landroid/graphics/drawable/ClipDrawable;

.field private mIsChangedFontSizeSeekBar:Z

.field private mLarger:Landroid/view/View;

.field private mPreviewTextSize:F

.field private mSelectedFontSize:I

.field private mSmaller:Landroid/view/View;

.field private mTextPreviewLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsChangedFontSizeSeekBar:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->applyBoldFont(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Lcom/samsung/android/settings/display/widget/IntervalSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->applyFontSize()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->changeFontSizeFromSeekBar(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsChangedFontSizeSeekBar:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private applyBoldFont(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setBoldFontDbValue(Z)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput p1, v1, Landroid/content/res/Configuration;->boldFont:I

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private applyFontSize()V
    .locals 3

    const-string v0, "SecFontSizePreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsChangedFontSizeSeekBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsChangedFontSizeSeekBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " sSelectedFontSizeSeekBarProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sSelectedFontSizeSeekBarProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSelectedFontSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSelectedFontSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsChangedFontSizeSeekBar:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sSelectedFontSizeSeekBarProgress:I

    iget v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSelectedFontSize:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sSelectedFontSizeSeekBarProgress:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/utils/Booster;->start(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizeDbValue()V

    iget v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontFloatSize:F

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontScaleDbValue(F)V

    :cond_0
    return-void
.end method

.method private changeFontSizeFromSeekBar(I)V
    .locals 5

    const-string v0, "SecFontSizePreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeFontSizeFromSeekBar progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFloatRevisedValueList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFloatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFloatRevisedValueList:Ljava/util/ArrayList;

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
    iget v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTextSize:F

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mChangingSizeText:Landroid/widget/TextView;

    mul-float v4, v1, v0

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sput p1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sSelectedFontSizeSeekBarProgress:I

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontFloatSize:F

    sput v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSize:F

    return-void
.end method

.method private createFontSizeView()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d01a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSize(Landroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "SecFontSizePreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fontArraySize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1214ae

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizeLayout()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getMaxFontSize(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setMax(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->updateFontSizeList(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSelectedFontSize:I

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSelectedFontSize:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    new-instance v4, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    new-instance v4, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const-string v3, "SecFontSizePreferenceFragment"

    const-string v4, "called onCreate()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    return-object v3
.end method

.method private isBoldTextEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bold_text"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private setBoldFontDbValue(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bold_text"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setFontSizeDbValue()V
    .locals 4

    sget v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sSelectedFontSizeSeekBarProgress:I

    const-string v1, "SecFontSizePreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange fontIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSizeChangedIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "large_font"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "SecFontSizePreferenceFragment"

    const-string v3, "com.samsung.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setFontSizeLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    const v1, 0x7f0a084b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    const v2, 0x7f0a0329

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontPreviewScroll:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontPreviewScroll:Landroid/widget/ScrollView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontPreviewScroll:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontPreviewScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mHalfStroke:Landroid/graphics/drawable/ClipDrawable;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mHalfStroke:Landroid/graphics/drawable/ClipDrawable;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    const v1, 0x7f0a06fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0806f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    const v1, 0x7f0a084a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mChangingSizeText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mChangingSizeText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mChangingSizeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1214a6

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setPreviewImageHeight(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mChangingSizeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mChangingSizeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTextSize:F

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    const v2, 0x7f0a077c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSmaller:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSmaller:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    const v2, 0x7f0a044a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLarger:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLarger:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateFontSizeList(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFloatRevisedValueList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFloatRevisedValueList:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x106a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->createFontSizeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setSelectable(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f1500c5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->addPreferencesFromResource(I)V

    new-instance v0, Lcom/samsung/android/settings/utils/Booster;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/utils/Booster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    const-string v0, "sec_font_style"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentFontName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    const-string v0, "bold_text"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBoldFontPreference:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBoldFontPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBoldFontPreference:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$1;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBoldFontPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->isBoldTextEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public setFontScaleDbValue(F)V
    .locals 4

    move v0, p1

    const-string v1, "SecFontSizePreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fontScale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    return-void
.end method
