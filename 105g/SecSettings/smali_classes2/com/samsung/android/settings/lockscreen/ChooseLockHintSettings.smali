.class public Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockHintSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;
    }
.end annotation


# instance fields
.field private isNeededLaunchRedactional:Z

.field private mFromSetupWizard:Z

.field private mJustPPP:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private launchRedactionlInterstitalIfNeeded()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->isNeededLaunchRedactional:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->mFromSetupWizard:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "fromSetupWizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->mJustPPP:Z

    if-eqz v1, :cond_2

    const-string v1, "justPPP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->launchRedactionlInterstitalIfNeeded()V

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

    const-class v0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "set_redaction"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->isNeededLaunchRedactional:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromSetupWizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->mFromSetupWizard:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "justPPP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->mJustPPP:Z

    return-void
.end method
