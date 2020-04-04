.class public Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FactoryDataResetPasswordPreferenceController.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

.field private mNewPassword:Ljava/lang/String;

.field private mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/security/OtherSecuritySettings;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->CURRENT:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iput-object v0, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iput-object p2, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

    return-void
.end method

.method private StartPassword()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12108e

    if-nez v0, :cond_0

    sget-object v2, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->NEW:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iput-object v2, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iget-object v2, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120f10

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120e06

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->CURRENT:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iput-object v2, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iget-object v2, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120549

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.security.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ".from"

    const-string v2, "FromOtherSecurity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

    invoke-virtual {v1, v0, p4}, Lcom/samsung/android/settings/security/OtherSecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$1;->$SwitchMap$com$samsung$android$settings$security$FactoryDataResetPasswordPreferenceController$PWState:[I

    iget-object v1, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x64

    const v2, 0x7f12107b

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->NEW:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iput-object v0, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iget-object v0, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120f10

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120e06

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->CURRENT:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iput-object v0, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mNewPassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_2
    const-string v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mNewPassword:Ljava/lang/String;

    const-string v0, "MasterClear"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1new phone password = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->CONFIRM:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iput-object v0, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iget-object v0, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f12054a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mNewPassword:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "factory_data_reset_password"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->StartPassword()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 3

    sget v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->MY_USER_ID:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    invoke-direct {p0, p3}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->setFirstTimePhonepassword(Landroid/content/Intent;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
