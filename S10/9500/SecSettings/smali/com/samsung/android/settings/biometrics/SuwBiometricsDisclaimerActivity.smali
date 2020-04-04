.class public Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;
.super Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;
.source "SuwBiometricsDisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mNextButton:Landroid/widget/Button;

.field private mPreviousButton:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0539

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a05e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SuwBiometricsDisclaimerActivity"

    const-string v2, "Prev button clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string v1, "SuwBiometricsDisclaimerActivity"

    const-string v2, "Next button clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v2, 0x100

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mScreenId:I

    iget v2, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mContinueEventId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->finish()V

    nop

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SuwBiometricsDisclaimerActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->setHideNavigationBar(Landroid/app/Activity;)V

    const v0, 0x7f0a05e8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mPreviousButton:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0539

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mNextButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mPreviousButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mPreviousButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onResume()V

    return-void
.end method
