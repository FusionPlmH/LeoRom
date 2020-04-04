.class public abstract Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.super Landroid/app/Activity;
.source "SuwBaseActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBottomBttonArea:Landroid/widget/LinearLayout;

.field private mBottomScrollView:Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;

.field private mContentsArea:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mHeaderArea:Landroid/widget/LinearLayout;

.field private mIsNeedScrollView:Z

.field private mMainActionButtonArea:Landroid/widget/LinearLayout;

.field private mMainActionButtonText:Landroid/widget/TextView;

.field private mManualSetupButtonArea:Landroid/widget/LinearLayout;

.field private mManualSetupButtonText:Landroid/widget/TextView;

.field private mMoreOptionsButton:Landroid/widget/LinearLayout;

.field private mPreviousButtonArea:Landroid/widget/LinearLayout;

.field private mPreviousButtonText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleArea:Landroid/widget/LinearLayout;

.field private mVoiceGuideButton:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "SuwBaseActivity"

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->TAG:Ljava/lang/String;

    iput-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mIsNeedScrollView:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContentsArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private applyShowButtonShapes()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_button_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPreviousButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_header_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mHeaderArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_title_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mTitleArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_contents_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContentsArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_bottom_buttons:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mBottomBttonArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_title:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_more_options_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMoreOptionsButton:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_voice_guide_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mVoiceGuideButton:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mBottomScrollView:Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_previous_button_text:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPreviousButtonText:Landroid/widget/TextView;

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_previous_button_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPreviousButtonArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_main_action_button_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_main_action_button_text:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonText:Landroid/widget/TextView;

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_manual_setup_button_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mManualSetupButtonArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_manual_setup_button_text:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mManualSetupButtonText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/secsetupwizardlib/util/SuwUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContentsArea:Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContentsArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/secsetupwizardlib/R$color;->sswl_basic_background_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mBottomBttonArea:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$2;-><init>(Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPreviousButtonArea:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/sec/android/secsetupwizardlib/R$string;->sswl_button_back:I

    invoke-virtual {p0, v2}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/secsetupwizardlib/R$string;->sswl_button_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/secsetupwizardlib/R$string;->sswl_button_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mManualSetupButtonArea:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mManualSetupButtonText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/secsetupwizardlib/R$string;->sswl_button_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMoreOptionsButton:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/secsetupwizardlib/R$string;->sswl_more_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/secsetupwizardlib/R$string;->sswl_button_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->applyShowButtonShapes()V

    return-void
.end method

.method private setNaviButtons()V
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPreviousButtonArea:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/secsetupwizardlib/util/SuwUtils;->hideSystemBarsButtons(Landroid/content/Context;Landroid/view/Window;)V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPreviousButtonArea:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;-><init>(Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    sget v0, Lcom/sec/android/secsetupwizardlib/R$layout;->sswl_base_layout:I

    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/secsetupwizardlib/util/SuwUtils;->setIndicatorTransparency(Landroid/content/Context;Landroid/view/Window;)V

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->initView()V

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setNaviButtons()V

    invoke-static {p0}, Lcom/sec/android/secsetupwizardlib/util/SuwUtils;->supportVoiceGuideMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/secsetupwizardlib/util/SuwUtils;->getVoiceGuideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mVoiceGuideButton:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    invoke-virtual {v0}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;->stopplay()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/secsetupwizardlib/util/SuwUtils;->supportVoiceGuideMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mVoiceGuideButton:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    invoke-virtual {v0}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;->updateVoiceIcon()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    nop

    return-void
.end method

.method protected playScript(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mVoiceGuideButton:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mVoiceGuideButton:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;->playstart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

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

.method public setContentView(IZ)V
    .locals 2

    iput-boolean p2, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mIsNeedScrollView:Z

    sget v0, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mIsNeedScrollView:Z

    if-nez v1, :cond_0

    sget v1, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_layout_content:I

    invoke-virtual {p0, v1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method protected setHeaderTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected setHeaderTitleBottomMargin(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mTitleArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mTitleArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected setMainActionButton(ILandroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setMainActionButtonText(I)V

    return-void
.end method

.method protected setMainActionButtonEnabled(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method protected setMainActionButtonText(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonArea:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mMainActionButtonText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/secsetupwizardlib/R$string;->sswl_button_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setVoiceGuideButton(Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$OnVoiceGuideListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/secsetupwizardlib/util/SuwUtils;->supportVoiceGuideMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mVoiceGuideButton:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mVoiceGuideButton:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mVoiceGuideButton:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    invoke-virtual {v0}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;->init()V

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mVoiceGuideButton:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;->setListener(Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$OnVoiceGuideListener;)V

    :cond_0
    return-void
.end method
