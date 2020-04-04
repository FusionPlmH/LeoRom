.class public Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;
.super Landroid/app/Activity;
.source "SmartScanSuwDisclaimer.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mDisclaimerScroll:Lcom/samsung/android/settings/widget/SecBottomScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/SecBottomScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addImmersiveFlagsToDecorView(Landroid/view/Window;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->addVisibilityFlag(Landroid/view/View;I)V

    return-void

    :cond_0
    return-void
.end method

.method private addImmersiveFlagsToWindow(Landroid/view/Window;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/2addr v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method


# virtual methods
.method public addVisibilityFlag(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public hideSystemBars(Landroid/view/Window;)V
    .locals 2

    const/16 v0, 0x1202

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x400

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->addImmersiveFlagsToWindow(Landroid/view/Window;I)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    return-void
.end method

.method protected initSetupWizardUi()V
    .locals 14

    const v0, 0x7f0a05ea

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a053c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a053d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    const v2, 0x7f0a053a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    const v2, 0x7f0a028e

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_button_background"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const v2, 0x7f08071a

    if-eqz v0, :cond_1

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance v3, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$1;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v12, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    new-instance v13, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;

    move-object v2, v13

    move-object v3, p0

    move-object v4, v11

    move-object v5, v9

    move-object v6, v10

    move v7, v12

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;ILandroid/widget/LinearLayout;)V

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SsstSmartScanSuwDisclaimer"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d0271

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->initSetupWizardUi()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->setSuwDisclaimerScroll()V

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->hideSystemBars(Landroid/view/Window;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->setIndicatorTransparency()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "SsstSmartScanSuwDisclaimer"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "SsstSmartScanSuwDisclaimer"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "SsstSmartScanSuwDisclaimer"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "SsstSmartScanSuwDisclaimer"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public setIndicatorTransparency()V
    .locals 2

    const/16 v0, 0x3002

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected setSuwDisclaimerScroll()V
    .locals 15

    const-string v0, "SsstSmartScanSuwDisclaimer"

    const-string v1, "setSuwDisclaimerScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a078c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/SecBottomScrollView;

    const v0, 0x7f0a053d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a053a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    const v1, 0x7f0a028e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    const v1, 0x7f0a053c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_button_background"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/SecBottomScrollView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/SecBottomScrollView;

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;

    move-object v1, v13

    move-object v2, p0

    move v3, v11

    move-object v4, v10

    move-object v5, v9

    move-object v6, v0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;ILandroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v12, v13}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v13, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/SecBottomScrollView;

    new-instance v14, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;

    move-object v1, v14

    move-object v3, v0

    move-object v4, v8

    move v5, v11

    move-object v6, v10

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;Landroid/widget/TextView;Landroid/widget/ImageView;ILandroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->setOnBottomReachedListener(Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;)V

    :cond_0
    return-void
.end method
