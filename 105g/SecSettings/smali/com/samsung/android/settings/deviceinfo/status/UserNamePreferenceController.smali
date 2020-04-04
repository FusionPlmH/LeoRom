.class public Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "UserNamePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static buf:[B


# instance fields
.field private NAI_length:I

.field private default_network:Ljava/lang/String;

.field private isLTEOnly:Z

.field private mContext:Landroid/content/Context;

.field private mRilHandler:Landroid/os/Handler;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mUserName:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "ro.telephony.default_network"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->default_network:Ljava/lang/String;

    const-string v0, "11"

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->default_network:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->isLTEOnly:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mServiceMessenger:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mRilHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mSvcModeMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$2;-><init>(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->buf:[B

    return-object v0
.end method

.method static synthetic access$002([B)[B
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->buf:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->NAI_length:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->NAI_length:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mUserName:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->getOemData()V

    return-void
.end method

.method private connectToRilService()V
    .locals 4

    const-string v0, "PrefControllerMixin"

    const-string v1, "connect To Secphone service"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->init()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private getOemData()V
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x3

    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mRilHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "PrefControllerMixin"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PrefControllerMixin"

    invoke-static {v5, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    throw v2

    :catch_2
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    const-string v4, "PrefControllerMixin"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mRilHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController$1;-><init>(Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mRilHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mSvcModeMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mRilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mSvcModeMessenger:Landroid/os/Messenger;

    :cond_1
    return-void
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string v1, "PrefControllerMixin"

    const-string v2, "mServiceMessenger is null. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mUserName:Landroid/support/v7/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "user_name"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    const-string v0, "SPR"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->isLTEOnly:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->connectToRilService()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/UserNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNai()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrefControllerMixin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v2, "<Not set>"

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
