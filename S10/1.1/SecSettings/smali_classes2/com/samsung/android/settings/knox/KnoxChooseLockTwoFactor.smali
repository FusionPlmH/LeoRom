.class public Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor;
.super Lcom/android/settings/SettingsActivity;
.source "KnoxChooseLockTwoFactor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
    }
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor;->intent:Landroid/content/Intent;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$000()Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$100(Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$200()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$200()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$000()Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$100(Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$200()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->access$200()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v2

    if-lez v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor;->finish()V

    return v1
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    return-void
.end method
