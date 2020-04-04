.class public Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FirstCallPreferenceController.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController$PhoneFirstCallHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mPhoneFirstCallHandler:Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController$PhoneFirstCallHandler;

.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mPhoneFirstCallHandler:Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController$PhoneFirstCallHandler;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->updateFirstCallDate(Ljava/lang/String;)V

    return-void
.end method

.method private setFirstCallstatus()V
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x4

    const/16 v3, 0x16

    const/16 v4, 0xe

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "PrefControllerMixin"

    const-string v5, "IOException in getOemData!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    new-instance v2, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController$PhoneFirstCallHandler;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController$PhoneFirstCallHandler;-><init>(Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;)V

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mPhoneFirstCallHandler:Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController$PhoneFirstCallHandler;

    new-instance v2, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mPhoneFirstCallHandler:Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController$PhoneFirstCallHandler;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController$PhoneFirstCallHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    :goto_2
    nop

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    const-string v4, "PrefControllerMixin"

    const-string v5, "IOException in getOemData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    throw v2
.end method

.method private updateFirstCallDate(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "first_call_date"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f12191b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/FirstCallPreferenceController;->setFirstCallstatus()V

    return-void
.end method
