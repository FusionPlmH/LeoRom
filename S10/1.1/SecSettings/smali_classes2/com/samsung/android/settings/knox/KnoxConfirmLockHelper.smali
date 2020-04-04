.class public Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;
.super Ljava/lang/Object;
.source "KnoxConfirmLockHelper.java"


# static fields
.field private static maxAttempts:I

.field private static totalAttempts:I


# instance fields
.field private lockPolicy:I

.field private mContext:Landroid/content/Context;

.field private mDialogTheme:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private mSFMaxAttempts:Z

.field private mUserId:I

.field private maximumFailedPasswordsForDisable:I

.field private maximumFailedPasswordsForWipe:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    sput v0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mSFMaxAttempts:Z

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->getLockAttemptPolicy()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mDialogTheme:I

    return-void
.end method

.method private ShowDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private getLockAttemptPolicy()V
    .locals 13

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v5, "getMaximumFailedPasswordsForDisable"

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    invoke-static {v7, v8}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_0

    iget v9, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    const v10, 0x186a0

    mul-int/2addr v9, v10

    :goto_0
    goto :goto_2

    :cond_0
    iget v9, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    if-nez v9, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    :goto_1
    goto :goto_0

    :goto_2
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v8

    iget-object v10, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v10, v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    iget v10, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v10

    const/16 v11, 0x3e9

    if-eqz v10, :cond_2

    const/16 v8, 0x14

    sput v8, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    iput v11, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_3

    :cond_2
    iget v10, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    if-gtz v10, :cond_3

    iget v10, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    if-gtz v10, :cond_3

    sput v8, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    const/16 v8, 0x3ea

    iput v8, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_3

    :cond_3
    iget v8, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    if-gtz v8, :cond_4

    iget v8, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    sput v8, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    iput v11, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_3

    :cond_4
    iget v8, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    const/16 v10, 0x3e8

    if-gtz v8, :cond_5

    iget v8, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    sput v8, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    iput v10, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_3

    :cond_5
    iget v8, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    iget v12, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    if-gt v8, v12, :cond_6

    iget v8, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    sput v8, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    iput v10, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_3

    :cond_6
    iget v8, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    sput v8, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    iput v11, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->lockPolicy:I

    :goto_3
    iget-object v8, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v8

    sput v8, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    const-string v8, "KnoxConfirmLockHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "U["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "], L["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->lockPolicy:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "], W["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "], D["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "], E["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendAdminLockEvent(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "knox.container.proxy.POLICY_ADMIN_LOCK"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private setSFMaxAttempts(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mSFMaxAttempts:Z

    return-void
.end method


# virtual methods
.method public checkNumberOfAttempts()V
    .locals 15

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v4}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    iget v5, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->lockPolicy:I

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_1

    const-string v2, "KnoxConfirmLockHelper"

    const-string v3, "checkNumberOfAttempts(): LOCK_POLICY_NO_POLICY"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v4}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v5

    sput v5, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setSFMaxAttempts(Z)V

    sget v5, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sget v6, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    const/16 v7, 0x3e9

    const/16 v8, 0x3e8

    if-lt v5, v6, :cond_8

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->resetNumberOfAttempts()V

    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/knox/SemPersonaManager;->launchPersonaHome(I)Z

    :cond_2
    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->lockPolicy:I

    if-ne v3, v8, :cond_5

    const-string v2, "KnoxConfirmLockHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkNumberOfAttempts(): LOCK_POLICY_WIPE, remove container userId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    invoke-static {v2}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->removeContainer(I)I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, -0x3f6

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    const-string v3, "KnoxConfirmLockHelper"

    const-string v5, "UNKNOWN ERROR"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    const-string v3, "KnoxConfirmLockHelper"

    const-string v5, "ERROR_DOES_NOT_EXIST"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    const-string v3, "KnoxConfirmLockHelper"

    const-string v5, "ERROR_NOT_CONTAINER_OWNER"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v3, "KnoxConfirmLockHelper"

    const-string v5, "ERROR_INTERNAL_ERROR"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "KnoxConfirmLockHelper"

    const-string v5, "Exception when remove container"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_1
    goto/16 :goto_6

    :cond_5
    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->lockPolicy:I

    if-ne v3, v7, :cond_7

    const-string v3, "KnoxConfirmLockHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNumberOfAttempts(): LOCK_POLICY_DISABLE, disable container userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setSFMaxAttempts(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v5, "trust"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/trust/TrustManager;

    iget v5, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    invoke-virtual {v3, v5, v2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    goto/16 :goto_6

    :cond_6
    const-string v2, "KnoxConfirmLockHelper"

    const-string v3, "Triggering lock !"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->sendAdminLockEvent(I)V

    goto/16 :goto_6

    :cond_7
    const-string v2, "KnoxConfirmLockHelper"

    const-string v3, "checkNumberOfAttempts(): Something was wrong"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_8
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v5

    if-eqz v5, :cond_9

    return-void

    :cond_9
    sget v5, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    sget v6, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v5, v6

    const/4 v6, 0x5

    if-ge v5, v6, :cond_15

    const-string v5, ""

    iget-object v6, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    invoke-static {v6, v9}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->isPremiumContainer(Landroid/content/Context;I)Z

    move-result v9

    const-string v10, "KnoxConfirmLockHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Under than 5 attempts left : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->lockPolicy:I

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-ne v10, v8, :cond_11

    sget v7, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    if-ne v7, v2, :cond_d

    sget v7, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    if-ne v7, v2, :cond_b

    if-eqz v9, :cond_a

    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f120b7f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v6, v8, v3

    aput-object v6, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    goto/16 :goto_3

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f120b83

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_b
    if-eqz v9, :cond_c

    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f120b80

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v6, v8, v3

    sget v3, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    sget v10, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    aput-object v6, v8, v14

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_c
    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f120b84

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    sget v8, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    sget v10, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_d
    sget v7, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sget v8, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    sub-int/2addr v8, v2

    if-ne v7, v8, :cond_f

    if-eqz v9, :cond_e

    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f120b82

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Object;

    sget v10, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v3

    aput-object v6, v8, v2

    aput-object v6, v8, v14

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_e
    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f120b86

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    sget v8, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_f
    if-eqz v9, :cond_10

    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f120b81

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    sget v10, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v3

    aput-object v6, v8, v2

    sget v2, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    sget v3, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v14

    aput-object v6, v8, v13

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_10
    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f120b85

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v14, [Ljava/lang/Object;

    sget v10, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v3

    sget v3, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    sget v10, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :goto_3
    invoke-direct {p0, v11, v2}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_11
    iget v8, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->lockPolicy:I

    if-ne v8, v7, :cond_15

    sget v7, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    if-ne v7, v2, :cond_13

    sget v7, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    if-ne v7, v2, :cond_12

    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f120b7b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v6, v8, v3

    aput-object v6, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    goto :goto_5

    :cond_12
    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f120b7c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v6, v8, v3

    sget v3, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    sget v10, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    aput-object v6, v8, v14

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_13
    sget v7, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sget v8, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    sub-int/2addr v8, v2

    if-ne v7, v8, :cond_14

    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f120b7e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Object;

    sget v10, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v3

    aput-object v6, v8, v2

    aput-object v6, v8, v14

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_14
    iget-object v7, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f120b7d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    sget v10, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v3

    aput-object v6, v8, v2

    sget v2, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    sget v3, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v14

    aput-object v6, v8, v13

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :goto_5
    invoke-direct {p0, v11, v2}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch -0x4b3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isSFAttemptDefaultFailed()Z
    .locals 2

    sget v0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    sget v1, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSFMaxAttempts()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mSFMaxAttempts:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetNumberOfAttempts()V
    .locals 2

    const-string v0, "KnoxConfirmLockHelper"

    const-string v1, "resetting totalAttempts to 0"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    return-void
.end method

.method public setRemainingNumberOfAttemptsText(Landroid/widget/TextView;)V
    .locals 5

    if-nez p1, :cond_0

    const-string v0, "KnoxConfirmLockHelper"

    const-string v1, "textview is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->lockPolicy:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    const v0, 0x7f120db1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "KnoxConfirmLockHelper"

    const-string v1, "setRemainingNumberOfAttemptsText(): LOCK_POLICY_NO_POLICY"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget v0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sget v1, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    :cond_2
    sget v0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    sget v1, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    return-void

    :cond_3
    sget v0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    sget v1, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f120c13

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f120c14

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->maxAttempts:I

    sget v4, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
