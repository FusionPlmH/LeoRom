.class public Lcom/samsung/android/settings/smartscan/SuwSmartScanTip;
.super Lcom/samsung/android/settings/smartscan/SmartScanTip;
.source "SuwSmartScanTip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mNextButton:Landroid/widget/Button;

.field private mPreviousButton:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a053e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SsstSuwSmartScanTip"

    const-string v2, "Next button clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SuwSmartScanTip;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SuwSmartScanTip;->finish()V

    nop

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SsstSuwSmartScanTip"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->setHideNavigationBar(Landroid/app/Activity;)V

    const v0, 0x7f0a05ec

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SuwSmartScanTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SuwSmartScanTip;->mPreviousButton:Landroid/widget/LinearLayout;

    const v0, 0x7f0a053e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SuwSmartScanTip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SuwSmartScanTip;->mNextButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SuwSmartScanTip;->mPreviousButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SuwSmartScanTip;->mPreviousButton:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SuwSmartScanTip;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SuwSmartScanTip;->mNextButton:Landroid/widget/Button;

    const v1, 0x7f1213cb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SuwSmartScanTip;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SuwSmartScanTip;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "SsstSuwSmartScanTip"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->onResume()V

    return-void
.end method
