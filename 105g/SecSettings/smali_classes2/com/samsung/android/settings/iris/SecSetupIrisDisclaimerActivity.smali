.class public Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;
.super Landroid/app/Activity;
.source "SecSetupIrisDisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mIsEnable:Z

.field private mSUWBottomBar:Landroid/widget/RelativeLayout;

.field private mSUWNextBtn:Landroid/widget/LinearLayout;

.field private mSUWNextBtnImg:Landroid/widget/ImageView;

.field private mSUWNextText:Landroid/widget/TextView;

.field private mSUWOpenBtnImg:Landroid/widget/ImageView;

.field private mSUWPrevBtn:Landroid/widget/LinearLayout;

.field private mScrollView:Lcom/samsung/android/settings/widget/SecBottomScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mIsEnable:Z

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mIsEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setEnableNextButton(Z)V

    return-void
.end method

.method private initView()V
    .locals 13

    const v0, 0x7f0a0262

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12075c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0263

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f120760

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/UnderlineSpan;

    invoke-direct {v7}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0a0264

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, ""

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUSA()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f12075e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f12075d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f12075f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0a0265

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120761

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0a07fb

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWBottomBar:Landroid/widget/RelativeLayout;

    const v11, 0x7f0a0819

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWPrevBtn:Landroid/widget/LinearLayout;

    const v11, 0x7f0a0813

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtn:Landroid/widget/LinearLayout;

    const v11, 0x7f0a0814

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextText:Landroid/widget/TextView;

    const v11, 0x7f0a0812

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtnImg:Landroid/widget/ImageView;

    const v11, 0x7f0a0815

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWOpenBtnImg:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextText:Landroid/widget/TextView;

    const v12, 0x7f120dad

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    iget-object v11, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWBottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWPrevBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setEnableNextButton(Z)V

    const v5, 0x7f0a026f

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/widget/SecBottomScrollView;

    iput-object v5, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mScrollView:Lcom/samsung/android/settings/widget/SecBottomScrollView;

    iget-object v5, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mScrollView:Lcom/samsung/android/settings/widget/SecBottomScrollView;

    new-instance v11, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity$1;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity$1;-><init>(Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;)V

    invoke-virtual {v5, v11}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->setOnBottomReachedListener(Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;)V

    return-void
.end method

.method private setEnableNextButton(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_button_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v1, 0x8

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08071a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWOpenBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWOpenBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0813

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0819

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mIsEnable:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mScrollView:Lcom/samsung/android/settings/widget/SecBottomScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->fullScroll(I)Z

    nop

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/view/Window;)V

    const v1, 0x7f0d01d1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->initView()V

    return-void
.end method
