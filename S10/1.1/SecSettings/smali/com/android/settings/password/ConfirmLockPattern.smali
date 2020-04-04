.class public Lcom/android/settings/password/ConfirmLockPattern;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/android/settings/password/ConfirmLockPattern$Stage;,
        Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;
    }
.end annotation


# static fields
.field private static mForBiometrics:Z

.field private static mForFace:Z

.field private static mForFingerprint:Z

.field private static mForIris:Z

.field private static mForSmartScan:Z

.field private static mFromPersonalPage:Z

.field private static mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    sput-object v0, Lcom/android/settings/password/ConfirmLockPattern;->mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mFromPersonalPage:Z

    sput-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForFingerprint:Z

    sput-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForIris:Z

    sput-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForFace:Z

    sput-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForSmartScan:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForBiometrics:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForFace:Z

    return v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForFingerprint:Z

    return v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForBiometrics:Z

    return v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForIris:Z

    return v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForSmartScan:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/password/ConfirmLockPattern;->mFromPersonalPage:Z

    return p0
.end method

.method static synthetic access$600()Lcom/android/settings/password/ConfirmLockPattern$Stage;
    .locals 1

    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern;->mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/password/ConfirmLockPattern$Stage;)Lcom/android/settings/password/ConfirmLockPattern$Stage;
    .locals 0

    sput-object p0, Lcom/android/settings/password/ConfirmLockPattern;->mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    return-object p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

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

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    const p2, 0x7f13013c

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "for_fingerprint"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForFingerprint:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "for_iris"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForIris:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "for_face"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForFace:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "for_smartscan"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForSmartScan:Z

    sget-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForFingerprint:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForFace:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForIris:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForSmartScan:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/settings/password/ConfirmLockPattern;->mForBiometrics:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.password_isenforced"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000()Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000()Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a04ac

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v1, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
