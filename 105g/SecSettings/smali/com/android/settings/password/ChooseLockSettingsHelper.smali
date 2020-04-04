.class public final Lcom/android/settings/password/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mForFace:Z

.field private mForFingerPrint:Z

.field private mForIris:Z

.field private mForSmartScan:Z

.field private mFragment:Landroid/app/Fragment;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUnlockRecovery:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFingerPrint:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForIris:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFace:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForSmartScan:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mUnlockRecovery:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFingerPrint:Z

    :cond_0
    const-string v1, "Face"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFace:Z

    :cond_1
    const-string v1, "Iris"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForIris:Z

    :cond_2
    const-string v1, "SmartScan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForSmartScan:Z

    :cond_3
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-boolean p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mUnlockRecovery:Z

    return-void
.end method

.method private checkUCMKeyguardStatus(I)Ljava/lang/String;
    .locals 4

    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    return-object v2
.end method

.method private confirmDirection(IIZZJILjava/lang/CharSequence;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.accessibility.directionlock.ConfirmLockDirection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "challenge"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private confirmUCMPin(IZLjava/lang/String;ZI)Z
    .locals 10

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/password/ChooseLockSettingsHelper;->confirmUCMPin(IZLjava/lang/String;ZIIZJ)Z

    move-result v0

    return v0
.end method

.method private confirmUCMPin(IZLjava/lang/String;ZIIZJ)Z
    .locals 3

    const-string v0, "launchConfirmationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmUCMPin csName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", external : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", effectiveUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.password.ConfirmUCMLockPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "lockscreen.ucscredentialstoragenameuri"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    if-eq p6, v1, :cond_0

    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "challenge"

    invoke-virtual {v0, v1, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "mEffectiveUserId"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    if-eqz p4, :cond_2

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    goto :goto_3

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1
    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_3

    :try_start_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_2
    goto :goto_3

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_3
    const/4 v1, 0x1

    return v1
.end method

.method private copyInternalExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "theme"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "theme"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string v1, "android.intent.extra.TASK_ID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_1

    const-string v3, "android.intent.extra.TASK_ID"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    if-nez v0, :cond_2

    if-eq v1, v2, :cond_3

    :cond_2
    const/high16 v2, 0x800000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method private generateUCMURI(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    const-string v0, "launchConfirmationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateUCMURI csName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", request : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x82

    if-eq p3, v0, :cond_0

    const/16 v0, 0x80

    if-ne p3, v0, :cond_1

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "*>;ZZZJI",
            "Ljava/lang/CharSequence;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p7

    move/from16 v3, p11

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, -0x270f

    if-ne v3, v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.android.settings.ConfirmCredentials.title"

    move-object/from16 v9, p2

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v8, "com.android.settings.ConfirmCredentials.header"

    move-object/from16 v10, p3

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v8, "com.android.settings.ConfirmCredentials.details"

    move-object/from16 v11, p4

    invoke-virtual {v7, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v8, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "com.android.settings.ConfirmCredentials.allowIrisAuthentication"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "com.android.settings.ConfirmCredentials.allowIntelligentScanAuthentication"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "com.android.settings.ConfirmCredentials.darkTheme"

    if-eqz v2, :cond_1

    if-nez v6, :cond_1

    move v12, v5

    goto :goto_1

    :cond_1
    move v12, v4

    :goto_1
    invoke-virtual {v7, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "return_credentials"

    move/from16 v12, p6

    invoke-virtual {v7, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "has_challenge"

    move/from16 v13, p8

    invoke-virtual {v7, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "challenge"

    move-wide/from16 v14, p9

    invoke-virtual {v7, v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-boolean v8, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFingerPrint:Z

    if-ne v8, v5, :cond_2

    const-string v8, "for_fingerprint"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    iget-boolean v8, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForIris:Z

    if-ne v8, v5, :cond_3

    const-string v8, "for_iris"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    iget-boolean v8, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFace:Z

    if-ne v8, v5, :cond_4

    const-string v8, "for_face"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    iget-boolean v8, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForSmartScan:Z

    if-ne v8, v5, :cond_5

    const-string v8, "for_smartscan"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    iget-boolean v8, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mUnlockRecovery:Z

    if-ne v8, v5, :cond_6

    const-string/jumbo v8, "unlock_recovery"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    iget-object v8, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v5, "isFromKnoxSetDigitalLock"

    invoke-virtual {v8, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "isFromKnoxSetDigitalLock"

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    const/4 v8, 0x1

    :goto_2
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "isEnforcedPwdChanged"

    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "isEnforcedPwdChanged"

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "disable_fingerprint"

    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    invoke-virtual {v7, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_9
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "disable_iris"

    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "com.android.settings.ConfirmCredentials.allowIrisAuthentication"

    invoke-virtual {v7, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_a
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "disable_intelligent_scan"

    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "com.android.settings.ConfirmCredentials.allowIntelligentScanAuthentication"

    invoke-virtual {v7, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b
    const-string v4, ":settings:hide_drawer"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v7, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    move-object/from16 v5, p12

    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v4, "com.android.settings"

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_d

    const/high16 v4, 0x2000000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v0, v4, v7}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4, v7}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_c
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v0, v4, v7}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_d
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v0, v4, v7}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyInternalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4, v7, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :cond_e
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v0, v4, v7}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyInternalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v7, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_3
    const/4 v4, 0x1

    return v4
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;)Z
    .locals 18

    move-object/from16 v13, p0

    move/from16 v14, p1

    move/from16 v12, p10

    iget-object v0, v13, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v11

    const/4 v15, 0x0

    const-string v0, "launchConfirmationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v13, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const v1, 0x9100

    if-eq v0, v1, :cond_5

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x70000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    move/from16 v17, v11

    goto/16 :goto_6

    :pswitch_0
    const v1, 0x10001

    move-object v0, v13

    move v2, v14

    move/from16 v3, p6

    move/from16 v4, p7

    move-wide/from16 v5, p8

    move v7, v12

    move-object/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/password/ChooseLockSettingsHelper;->confirmDirection(IIZZJILjava/lang/CharSequence;)Z

    move-result v15

    goto :goto_0

    :pswitch_1
    move/from16 v17, v11

    goto/16 :goto_3

    :cond_0
    if-eq v11, v12, :cond_1

    invoke-static/range {p10 .. p10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v13, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {v13, v11}, Lcom/android/settings/password/ChooseLockSettingsHelper;->checkUCMKeyguardStatus(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-direct {v13, v10, v11, v14}, Lcom/android/settings/password/ChooseLockSettingsHelper;->generateUCMURI(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v16

    move-object v0, v13

    move v1, v14

    move/from16 v2, p5

    move-object/from16 v3, v16

    move/from16 v4, p6

    move v5, v11

    move v6, v12

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/password/ChooseLockSettingsHelper;->confirmUCMPin(IZLjava/lang/String;ZIIZJ)Z

    move-result v15

    goto :goto_0

    :cond_1
    invoke-direct {v13, v12}, Lcom/android/settings/password/ChooseLockSettingsHelper;->checkUCMKeyguardStatus(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-direct {v13, v9, v12, v14}, Lcom/android/settings/password/ChooseLockSettingsHelper;->generateUCMURI(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    move-object v0, v13

    move v1, v14

    move/from16 v2, p5

    move-object v3, v6

    move/from16 v4, p6

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/password/ChooseLockSettingsHelper;->confirmUCMPin(IZLjava/lang/String;ZI)Z

    move-result v15

    goto :goto_0

    :cond_2
    nop

    if-nez p5, :cond_4

    if-eqz p7, :cond_3

    goto :goto_1

    :cond_3
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword;

    goto :goto_2

    :cond_4
    :goto_1
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    :goto_2
    move-object v5, v0

    move-object v0, v13

    move v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v16, v9

    move-wide/from16 v9, p8

    move/from16 v17, v11

    move v11, v12

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;)Z

    move-result v15

    goto :goto_6

    :cond_5
    move/from16 v17, v11

    :goto_3
    if-nez p5, :cond_7

    if-eqz p7, :cond_6

    goto :goto_4

    :cond_6
    const-class v0, Lcom/android/settings/password/ConfirmLockPattern;

    goto :goto_5

    :cond_7
    :goto_4
    const-class v0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    :goto_5
    move-object v5, v0

    move-object v0, v13

    move v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;)Z

    move-result v15

    nop

    :goto_6
    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public launchConfirmationActivity(ILjava/lang/CharSequence;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z
    .locals 12

    move-object v11, p0

    iget-object v0, v11, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z
    .locals 13

    move-object v11, p0

    iget-object v0, v11, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v12, p7

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z
    .locals 12

    move-object v11, p0

    iget-object v0, v11, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v10

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)Z
    .locals 13

    move-object v11, p0

    iget-object v0, v11, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v12, p7

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v10

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z
    .locals 13

    move-object v11, p0

    iget-object v0, v11, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v12, p4

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;ZZI)Z
    .locals 13

    move-object v11, p0

    iget-object v0, v11, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v12, p5

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move/from16 v5, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivityForAnyUser(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Z
    .locals 14

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "allow_any_user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    move-object v3, p0

    move v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v13, p5

    invoke-direct/range {v3 .. v13}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v1

    return v1
.end method

.method public launchConfirmationActivityWithExternalAndChallenge(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJI)Z
    .locals 13

    move-object v11, p0

    iget-object v0, v11, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v12, p8

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v10

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public launchFrpConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 12

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, -0x270f

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method
