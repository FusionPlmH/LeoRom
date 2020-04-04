.class public Lcom/android/settings/password/ChooseLockPassword;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;,
        Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;,
        Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    }
.end annotation


# static fields
.field private static LOCKSCREEN_PASSWORD_PIN_BUTTON:I

.field public static isChangePwdRequired:Z

.field private static mAppLockBackupKey:Ljava/lang/String;

.field private static mAppLock_isPin:Z

.field private static mEventIdPIN:I

.field private static mEventIdPassword:I

.field private static mForAppLockBackupKey:Z

.field private static mForFace:Z

.field private static mForFingerprint:Z

.field private static mForIris:Z

.field private static mForPrivateModeBackupKey:Z

.field private static mForSmartScan:Z

.field private static mFromAppLock:Z

.field private static mFromPersonalPage:Z

.field private static mFromScreenLockBio:Z

.field private static mFromScreenLockType:Z

.field private static mFromSettingsBio:Z

.field private static mFromSetupWizard:Z

.field private static mImm:Landroid/view/inputmethod/InputMethodManager;

.field private static mIsEnforcedMultifactorNReset:Z

.field private static mIsFromKnoxTwoStep:Z

.field private static mIsPin:Z

.field private static mIsRecovery:Z

.field private static mKnoxEnforcePassword:Z

.field private static mKnoxUserId:I

.field private static mNeedSetupCredential:Z

.field private static mPersonalPage_isPin:Z

.field private static mRQuality:I

.field private static mScreenId:I


# instance fields
.field private mAllowHomeAndBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->isChangePwdRequired:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mForFingerprint:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mForIris:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mForFace:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mForSmartScan:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mIsRecovery:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mFromSetupWizard:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mFromScreenLockType:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mFromScreenLockBio:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mFromSettingsBio:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/password/ChooseLockPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mFromPersonalPage:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mPersonalPage_isPin:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mForAppLockBackupKey:Z

    sput-object v1, Lcom/android/settings/password/ChooseLockPassword;->mAppLockBackupKey:Ljava/lang/String;

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mKnoxEnforcePassword:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    sput v0, Lcom/android/settings/password/ChooseLockPassword;->mKnoxUserId:I

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mIsFromKnoxTwoStep:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mNeedSetupCredential:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mFromAppLock:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mAppLock_isPin:Z

    const/16 v0, 0x1130

    sput v0, Lcom/android/settings/password/ChooseLockPassword;->mScreenId:I

    const/16 v0, 0x115a

    sput v0, Lcom/android/settings/password/ChooseLockPassword;->mEventIdPIN:I

    const/16 v0, 0x115c

    sput v0, Lcom/android/settings/password/ChooseLockPassword;->mEventIdPassword:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword;->mAllowHomeAndBack:Z

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mForIris:Z

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mIsPin:Z

    return v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mForAppLockBackupKey:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mForFingerprint:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/password/ChooseLockPassword;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockPassword;->allowHomeAndBack(Z)V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mFromSetupWizard:Z

    return v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mFromScreenLockBio:Z

    return v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mKnoxEnforcePassword:Z

    return v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mPersonalPage_isPin:Z

    return v0
.end method

.method static synthetic access$2200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mAppLock_isPin:Z

    return v0
.end method

.method static synthetic access$2300()I
    .locals 1

    sget v0, Lcom/android/settings/password/ChooseLockPassword;->LOCKSCREEN_PASSWORD_PIN_BUTTON:I

    return v0
.end method

.method static synthetic access$2302(I)I
    .locals 0

    sput p0, Lcom/android/settings/password/ChooseLockPassword;->LOCKSCREEN_PASSWORD_PIN_BUTTON:I

    return p0
.end method

.method static synthetic access$2400(Lcom/android/settings/password/ChooseLockPassword;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockPassword;->sendIntentToMDMFW(I)V

    return-void
.end method

.method static synthetic access$2500()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mIsFromKnoxTwoStep:Z

    return v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mForSmartScan:Z

    return v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mForFace:Z

    return v0
.end method

.method static synthetic access$2800()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mNeedSetupCredential:Z

    return v0
.end method

.method static synthetic access$2900()I
    .locals 1

    sget v0, Lcom/android/settings/password/ChooseLockPassword;->mScreenId:I

    return v0
.end method

.method static synthetic access$3000()I
    .locals 1

    sget v0, Lcom/android/settings/password/ChooseLockPassword;->mEventIdPassword:I

    return v0
.end method

.method static synthetic access$3100()I
    .locals 1

    sget v0, Lcom/android/settings/password/ChooseLockPassword;->mEventIdPIN:I

    return v0
.end method

.method static synthetic access$400()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    sget-object v0, Lcom/android/settings/password/ChooseLockPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$402(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    sput-object p0, Lcom/android/settings/password/ChooseLockPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mIsRecovery:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/password/ChooseLockPassword;->mIsRecovery:Z

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/password/ChooseLockPassword;->mFromPersonalPage:Z

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mFromAppLock:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/password/ChooseLockPassword;->mFromAppLock:Z

    return p0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/password/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    return p0
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, Lcom/android/settings/password/ChooseLockPassword;->mKnoxUserId:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0

    sput p0, Lcom/android/settings/password/ChooseLockPassword;->mKnoxUserId:I

    return p0
.end method

.method private allowHomeAndBack(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-nez p1, :cond_0

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0xbb

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0x3e9

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    return-void
.end method

.method private sendIntentToMDMFW(I)V
    .locals 0

    return-void
.end method


# virtual methods
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

    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

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

    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

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

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->isChangePwdRequired:Z

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.password_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/password/ChooseLockPassword;->mRQuality:I

    const/high16 v1, 0x20000

    sget v2, Lcom/android/settings/password/ChooseLockPassword;->mRQuality:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/high16 v1, 0x30000

    sget v2, Lcom/android/settings/password/ChooseLockPassword;->mRQuality:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mIsPin:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_personal"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mFromPersonalPage:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_applock"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mFromAppLock:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "personal_mQuality"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mPersonalPage_isPin:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "applock_mQuality"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mAppLock_isPin:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromSetupWizard"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mFromSetupWizard:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromScreenLock"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mFromScreenLockType:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "screen_lock_bio"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mFromScreenLockBio:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "settings_bio"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mFromSettingsBio:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "for_fingerprint"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mForFingerprint:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "for_iris"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mForIris:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "for_face"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mForFace:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "for_smartscan"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mForSmartScan:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "knoxEnforcePassword"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mKnoxEnforcePassword:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromKnoxKeyguard"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "forPrivateBackupKey"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "forAppLockBackupKey"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/password/ChooseLockPassword;->mAppLockBackupKey:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword;->mAppLockBackupKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mForAppLockBackupKey:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/password/ChooseLockPassword;->mKnoxUserId:I

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_knox_two_step"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mIsFromKnoxTwoStep:Z

    sget v1, Lcom/android/settings/password/ChooseLockPassword;->mKnoxUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    sget v4, Lcom/android/settings/password/ChooseLockPassword;->mKnoxUserId:I

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v5

    if-eqz v5, :cond_4

    sput-boolean v3, Lcom/android/settings/password/ChooseLockPassword;->mNeedSetupCredential:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isRecovery"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->mIsRecovery:Z

    const-string v1, ""

    sget-boolean v2, Lcom/android/settings/password/ChooseLockPassword;->mFromPersonalPage:Z

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/android/settings/password/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    sget-boolean v2, Lcom/android/settings/password/ChooseLockPassword;->mIsPin:Z

    if-eqz v2, :cond_6

    const v2, 0x7f121512

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    :cond_6
    const v2, 0x7f121510

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_3
    move-object v1, v2

    goto :goto_6

    :cond_7
    :goto_4
    sget-boolean v2, Lcom/android/settings/password/ChooseLockPassword;->mPersonalPage_isPin:Z

    if-eqz v2, :cond_8

    const v2, 0x7f1215af

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_5

    :cond_8
    const v2, 0x7f1215ab

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_5
    move-object v1, v2

    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v2, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_9
    goto :goto_7

    :cond_a
    const v0, 0x7f0a0087

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/support/design/widget/AppBarLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a086c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatTextView;

    if-eqz v2, :cond_b

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    const v3, 0x7f0a01c9

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    new-instance v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_7
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/settings/password/ChooseLockPassword;->isChangePwdRequired:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-nez v1, :cond_4

    :cond_1
    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->access$000()Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->access$100(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPassword;->sendIntentToMDMFW(I)V

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->access$000()Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mH:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const-string v1, "ChooseLockPassword"

    const-string v2, "activity in Focus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "ChooseLockPassword"

    const-string v1, "activity out of Focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
