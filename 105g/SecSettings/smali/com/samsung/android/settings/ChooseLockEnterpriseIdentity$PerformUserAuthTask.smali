.class Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;
.super Landroid/os/AsyncTask;
.source "ChooseLockEnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformUserAuthTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

.field private password:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

.field private username:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;-><init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    const-string v0, "ChooseLockEnterpriseIdentity"

    const-string v1, "PerformUserAuthTask:performUserAuthentication "

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$100(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$200(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v1

    const-string v2, "ChooseLockEnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v4}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$200(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getEnterpriseIdentityAuthentication()Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "ChooseLockEnterpriseIdentity"

    const-string v2, "ekm is null"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ChooseLockEnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-direct {v1}, Lcom/samsung/android/knox/container/AuthenticationConfig;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorConfig(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    const-string v2, "com.sec.android.service.singlesignon"

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorPkgName(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    const-string v2, "com.sec.android.service.singlesignon"

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorPkgName(Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$300(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$400(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$200(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$500(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_OLD_PASSWORD:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$500(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    :goto_3
    sget-object v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    const-string v1, "PASSWORD_MIN_CHARACTERS_KEY"

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$600(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PASSWORD_MAX_CHARACTERS_KEY"

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$700(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PASSWORD_MIN_LETTERS_KEY"

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$800(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PASSWORD_MIN_UPPERCASE_KEY"

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$900(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PASSWORD_MIN_LOWERCASE_KEY"

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1000(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PASSWORD_MIN_SYMBOLS_KEY"

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1100(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PASSWORD_MIN_NUMERIC_KEY"

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1200(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PASSWORD_MIN_NONLETTER_KEY"

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1300(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PASSWORD_HISTORY_LENGTH_KEY"

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1400(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PASSWORD_MIN_COMPLEX_CHARACTERS_KEY"

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1400(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PASSWORD_PATTERN_RESTRICTIONS_KEY"

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1400(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PASSWORD_MAX_NUMERIC_SEQUENCE_LENGTH_KEY"

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1400(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PASSWORD_MAX_CHARACTER_SEQUENCE_LENGTH_KEY"

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1400(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PASSWORD_MIN_CHARACTER_CHANGE_LENGTH_KEY"

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1400(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1400(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    const-string v4, "PASSWORD_FORBIDDEN_STRINGS_KEY"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v4, "PASSWORD_MAX_CHARCTER_OCCURENCES_KEY"

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v5}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1400(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1500(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$200(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v3

    if-eq v1, v3, :cond_9

    const-string v1, "ChooseLockEnterpriseIdentity"

    const-string v3, "ADC creation without using MDM api"

    invoke-static {v1, v3}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "adc_creation_without_mdm"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorConfig(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1600(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->performUserAuthentication(Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_USERNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    :cond_a
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->doInBackground([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1900(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1700(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorConfig(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1600(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/container/AuthenticationConfig;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1800(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$100(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v0, -0x1

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3, v0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$1900(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;I)V

    nop

    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->finish()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
