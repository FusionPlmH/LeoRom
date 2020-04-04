.class public Lcom/android/settings/password/ChooseLockPattern;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;,
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;,
        Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    }
.end annotation


# static fields
.field private static mAppLockBackupKey:Ljava/lang/String;

.field private static mEventId:I

.field private static mForAppLockBackupKey:Z

.field public static mForFace:Z

.field public static mForFingerprint:Z

.field public static mForIris:Z

.field private static mForPrivateModeBackupKey:Z

.field private static mForSmartScan:Z

.field private static mFromAppLock:Z

.field private static mFromPersonalPage:Z

.field private static mFromScreenLockBio:Z

.field private static mFromScreenLockType:Z

.field private static mFromSettingsBio:Z

.field private static mFromSetupWizard:Z

.field private static mIsEnforcedMultifactorNReset:Z

.field private static mIsFromKnoxTwoStep:Z

.field private static mKnoxUserId:I

.field private static mNeedSetupCredential:Z

.field private static mScreenId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mForFingerprint:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mForIris:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mForFace:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mForSmartScan:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mFromPersonalPage:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mFromAppLock:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mForAppLockBackupKey:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/password/ChooseLockPattern;->mAppLockBackupKey:Ljava/lang/String;

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mFromSetupWizard:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mFromScreenLockType:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mFromScreenLockBio:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mFromSettingsBio:Z

    sput v0, Lcom/android/settings/password/ChooseLockPattern;->mKnoxUserId:I

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mIsFromKnoxTwoStep:Z

    sput-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mNeedSetupCredential:Z

    const/16 v0, 0x1130

    sput v0, Lcom/android/settings/password/ChooseLockPattern;->mScreenId:I

    const/16 v0, 0x115b

    sput v0, Lcom/android/settings/password/ChooseLockPattern;->mEventId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    return v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mForAppLockBackupKey:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mIsFromKnoxTwoStep:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mForSmartScan:Z

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    sget v0, Lcom/android/settings/password/ChooseLockPattern;->mKnoxUserId:I

    return v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mNeedSetupCredential:Z

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    sget v0, Lcom/android/settings/password/ChooseLockPattern;->mScreenId:I

    return v0
.end method

.method static synthetic access$1800()I
    .locals 1

    sget v0, Lcom/android/settings/password/ChooseLockPattern;->mEventId:I

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/password/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/password/ChooseLockPattern;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockPattern;->allowHomeAndBack(Z)V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mFromSetupWizard:Z

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mFromScreenLockBio:Z

    return v0
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/password/ChooseLockPattern;->mFromAppLock:Z

    return v0
.end method

.method private allowHomeAndBack(Z)V
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0xbb

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    const/16 v1, 0x3e9

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getComponentName()Landroid/content/ComponentName;

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

    const-class v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getFragmentClass()Ljava/lang/Class;

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

    const-class v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

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
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x400

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "from_personal"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mFromPersonalPage:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "from_applock"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mFromAppLock:Z

    const-string v1, "ChooseLockPattern"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFromAppLock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/settings/password/ChooseLockPattern;->mFromAppLock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "for_fingerprint"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mForFingerprint:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "for_iris"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mForIris:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "for_face"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mForFace:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "for_smartscan"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mForSmartScan:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "fromScreenLock"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mFromScreenLockType:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "screen_lock_bio"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mFromScreenLockBio:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "settings_bio"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mFromSettingsBio:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "fromSetupWizard"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mFromSetupWizard:Z

    const-string v1, "ChooseLockPattern"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mForFingerprint] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/settings/password/ChooseLockPattern;->mForFingerprint:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "forPrivateBackupKey"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "forAppLockBackupKey"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/password/ChooseLockPattern;->mAppLockBackupKey:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern;->mAppLockBackupKey:Ljava/lang/String;

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    sput-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mForAppLockBackupKey:Z

    const-string v1, "ChooseLockPattern"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mForPrivateModeBackupKey] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/settings/password/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "fromKnoxKeyguard"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/password/ChooseLockPattern;->mKnoxUserId:I

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "is_knox_two_step"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mIsFromKnoxTwoStep:Z

    const-string v1, "ChooseLockPattern"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mKnoxUserId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/settings/password/ChooseLockPattern;->mKnoxUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ChooseLockPattern"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsFromKnoxTwoStep :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/settings/password/ChooseLockPattern;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mFromSetupWizard:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/settings/password/ChooseLockPattern;->mFromSettingsBio:Z

    :cond_5
    sget v1, Lcom/android/settings/password/ChooseLockPattern;->mKnoxUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPattern;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    sget v5, Lcom/android/settings/password/ChooseLockPattern;->mKnoxUserId:I

    invoke-virtual {v1, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v6

    if-eqz v6, :cond_6

    sput-boolean v2, Lcom/android/settings/password/ChooseLockPattern;->mNeedSetupCredential:Z

    :cond_6
    const-string v1, ""

    sget-boolean v4, Lcom/android/settings/password/ChooseLockPattern;->mFromPersonalPage:Z

    if-nez v4, :cond_9

    sget-boolean v4, Lcom/android/settings/password/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    sget v4, Lcom/android/settings/password/ChooseLockPattern;->mKnoxUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/settings/password/ChooseLockPattern;->mForFingerprint:Z

    if-nez v4, :cond_8

    const v4, 0x7f1214fa

    new-array v2, v2, [Ljava/lang/Object;

    sget v5, Lcom/android/settings/password/ChooseLockPattern;->mKnoxUserId:I

    invoke-static {p0, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/password/ChooseLockPattern;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    const v2, 0x7f121511

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_4

    :cond_9
    :goto_3
    const v2, 0x7f1215ad

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPattern;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_a
    goto :goto_5

    :cond_b
    const v2, 0x7f0a0087

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a086c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AppCompatTextView;

    if-eqz v3, :cond_c

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    const v4, 0x7f0a01c9

    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    new-instance v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    return-void
.end method
