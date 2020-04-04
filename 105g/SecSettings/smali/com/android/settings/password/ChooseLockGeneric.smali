.class public Lcom/android/settings/password/ChooseLockGeneric;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;,
        Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    invoke-static {}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$000()Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$600(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPremiumDeviceOrContainer(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$600(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$600(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPasswordChangeTimeout(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    const/4 v4, 0x2

    if-lt v1, v4, :cond_2

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-ne v1, v3, :cond_3

    if-nez v4, :cond_3

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$600(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v3

    invoke-static {v0, v3, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$700(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;II)V

    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockGeneric;->setResult(I)V

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    goto :goto_1

    :cond_3
    if-lt v1, v3, :cond_5

    if-eqz v4, :cond_5

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$600(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    :cond_6
    :goto_1
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    return-void
.end method

.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-string v2, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, ":settings:hide_drawer"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string v2, ":android:no_headers"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$000()Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$100()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$200(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ChooseLockGenericFragment"

    const-string v3, "Back action is BLOCKED because of EnforcePwdChange policy in COM"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$500(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "fromKnoxAgentforUserSetup"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$300(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$400(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockGeneric;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->finish()V

    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$000()Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$100()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$200(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ChooseLockGenericFragment"

    const-string v3, "Back action is BLOCKED because of EnforcePwdChange policy in COM"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "fromKnoxAgentforUserSetup"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$300(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$400(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)I

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockGeneric;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->finish()V

    return v2

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
