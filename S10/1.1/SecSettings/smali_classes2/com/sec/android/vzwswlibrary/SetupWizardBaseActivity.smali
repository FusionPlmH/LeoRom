.class public abstract Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SetupWizardBaseActivity.java"


# instance fields
.field private mBottomBttonArea:Landroid/widget/LinearLayout;

.field private mContentsArea:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mHeaderArea:Landroid/widget/LinearLayout;

.field private mIsNeedScrollView:Z

.field private mIsVoiceGuideNeeded:Z

.field private mMainActionButtonArea:Landroid/widget/LinearLayout;

.field private mMainActionButtonText:Landroid/widget/TextView;

.field private mManualSetupButtonArea:Landroid/widget/LinearLayout;

.field private mManualSetupButtonText:Landroid/widget/TextView;

.field private mPreviousButtonArea:Landroid/widget/LinearLayout;

.field private mPreviousButtonArrow:Landroid/widget/ImageView;

.field private mPreviousButtonText:Landroid/widget/TextView;

.field private mProgressBar:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleArea:Landroid/widget/LinearLayout;

.field private mVoiceGuideButton:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    iput-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mIsNeedScrollView:Z

    iput-boolean v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mIsVoiceGuideNeeded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mProgressBar:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContentsArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private applyShowButtonShapes()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_button_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButtonText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mPreviousButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_0
    return-void
.end method

.method private hideSystemBarsButtons()V
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/vzwswlibrary/util/WizardSystemBarHelper;->hideSystemBars(Landroid/content/Context;Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_header_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mHeaderArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_title_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mTitleArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_contents_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContentsArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_bottom_buttons:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mBottomBttonArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_title:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_voice_guide_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mVoiceGuideButton:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_previous_button_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mPreviousButtonArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_previous_button_text:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mPreviousButtonText:Landroid/widget/TextView;

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_previous_button_arrow:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mPreviousButtonArrow:Landroid/widget/ImageView;

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_main_action_button_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_main_action_button_text:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButtonText:Landroid/widget/TextView;

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_manual_setup_button_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButtonArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_manual_setup_button_text:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButtonText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/vzwswlibrary/util/Utils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mBottomBttonArea:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$2;-><init>(Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mPreviousButtonArea:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/sec/android/vzwswlibrary/R$string;->vswl_button_back:I

    invoke-virtual {p0, v2}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/vzwswlibrary/R$string;->vswl_button_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButtonText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/vzwswlibrary/R$string;->vswl_button_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButtonArea:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButtonText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/vzwswlibrary/R$string;->vswl_button_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->applyShowButtonShapes()V

    return-void
.end method

.method private isNorthAmericaOperator()Z
    .locals 4

    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "USA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private setIndicatorTransparency()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x3402

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/vzwswlibrary/util/Utils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x1402

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setNaviButtons()V
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mPreviousButtonArea:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->hideSystemBarsButtons()V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mPreviousButtonArea:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$1;-><init>(Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private supportVoiceGuideMode()Z
    .locals 11

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    const-string v2, "SuwBaseActivity"

    const-string v4, "[CONDITION] supportVoiceGuideMode not Owner : return false"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    :cond_2
    const-string v7, "SuwBaseActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "locale : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " / country : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->isNorthAmericaOperator()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/vzwswlibrary/R$array;->bixby_support_locale_names_us:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/vzwswlibrary/R$array;->bixby_support_locale_names:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    :goto_1
    if-eqz v8, :cond_4

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "SuwBaseActivity"

    const-string v10, "[CONDITION] Support VoiceGuide locales"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v7

    :goto_2
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->supportVoiceGuideUI()Z

    move-result v7

    if-eqz v7, :cond_5

    return v2

    :cond_5
    return v3
.end method

.method private supportVoiceGuideUI()Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETUPWIZARD_CONFIG_UI_STYLE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuwBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEC_FLOATING_FEATURE_SETUPWIZARD_CONFIG_UI_STYLE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "SupportVoiceGuideUI"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    sget v0, Lcom/sec/android/vzwswlibrary/R$layout;->vswl_base_layout:I

    invoke-super {p0, v0}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setIndicatorTransparency()V

    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setStatusBarColor(I)V

    invoke-direct {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->initView()V

    invoke-direct {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setNaviButtons()V

    invoke-direct {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->supportVoiceGuideMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/vzwswlibrary/util/Utils;->getVoiceGuideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mVoiceGuideButton:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-virtual {v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->stopplay()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mVoiceGuideButton:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-virtual {v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->invalidateVoiceIcon()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    nop

    return-void
.end method

.method protected playScript(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mVoiceGuideButton:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    if-eqz v0, :cond_0

    const-string v0, "SuwBaseActivity"

    const-string v1, "playScript2"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mVoiceGuideButton:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->playstart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContentView(IZ)V
    .locals 3

    iput-boolean p2, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mIsVoiceGuideNeeded:Z

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_layout_content:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mVoiceGuideButton:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    iget-boolean v2, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mIsVoiceGuideNeeded:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->setVisibility(I)V

    sget v1, Lcom/sec/android/vzwswlibrary/R$id;->progress:I

    invoke-virtual {p0, v1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mProgressBar:Landroid/view/View;

    return-void
.end method

.method protected setHeaderTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mHeaderArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected setHeaderTitleBottomMargin(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mTitleArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mTitleArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected setMainActionButton(ILandroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mBottomBttonArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setMainActionButtonText(I)V

    return-void
.end method

.method protected setMainActionButtonText(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButtonText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/vzwswlibrary/R$string;->vswl_button_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setManualSetupButton(ILandroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButtonArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButtonArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setManualSetupButtonText(I)V

    return-void
.end method

.method protected setManualSetupButtonText(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButtonArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButtonArea:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButtonText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/vzwswlibrary/R$string;->vswl_button_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setPreviousButton(Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mBottomBttonArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mPreviousButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mPreviousButtonArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mPreviousButtonArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mPreviousButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mPreviousButtonText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mPreviousButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mPreviousButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method protected setVoiceGuideButton(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$OnVoiceGuideListener;)V
    .locals 2

    const-string v0, "SuwBaseActivity"

    const-string v1, "setVoiceGuideButton"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mIsVoiceGuideNeeded:Z

    if-nez v0, :cond_0

    const-string v0, "SuwBaseActivity"

    const-string v1, "VoiceGuide not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mVoiceGuideButton:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mVoiceGuideButton:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-virtual {v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->init()V

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mVoiceGuideButton:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->setListener(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$OnVoiceGuideListener;)V

    :cond_1
    return-void
.end method

.method public setWifiListProgressBar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mProgressBar:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mProgressBar:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
