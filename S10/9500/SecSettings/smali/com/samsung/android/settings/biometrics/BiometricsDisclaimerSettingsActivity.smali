.class public Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;
.super Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;
.source "BiometricsDisclaimerSettingsActivity.java"


# instance fields
.field private mActionBar:Landroid/support/v7/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const-string v1, "BiometricsDisclaimerActivity"

    const-string v2, "ActionBar clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onResume()V

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mRequestBiometricsType:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const v1, 0x7f12096e

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mRequestBiometricsType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const v1, 0x7f1202ef

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mRequestBiometricsType:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const v1, 0x7f1202ee

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerSettingsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    return-void
.end method
