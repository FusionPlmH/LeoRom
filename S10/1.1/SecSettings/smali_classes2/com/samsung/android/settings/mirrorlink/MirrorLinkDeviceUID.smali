.class public Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MirrorLinkDeviceUID.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getDeviceUID()Ljava/lang/String;
    .locals 17

    const/4 v0, 0x0

    const-string v1, " "

    const-string v2, "ril.serialnumber"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "00000000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, v0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v2, "ro.serialno"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_2
    if-eqz v2, :cond_4

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v3, "6ba7b8129dad11d180b400c04fd430c8"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    new-array v4, v4, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_3
    array-length v8, v4

    const/16 v9, 0x10

    if-ge v7, v8, :cond_2

    mul-int v8, v5, v7

    mul-int v10, v5, v7

    add-int/2addr v10, v5

    invoke-virtual {v3, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    const-string v7, "UTF-8"

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v8, v4

    array-length v10, v7

    add-int/2addr v8, v10

    new-array v8, v8, [B

    array-length v10, v4

    invoke-static {v4, v6, v8, v6, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v10, v4

    array-length v11, v7

    invoke-static {v7, v6, v8, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {v0, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v12, 0x8

    aget-byte v13, v10, v12

    and-int/lit8 v14, v13, 0x3f

    int-to-byte v13, v14

    or-int/lit16 v14, v13, 0x80

    int-to-byte v14, v14

    aput-byte v14, v10, v12

    move v14, v6

    :goto_4
    array-length v15, v10

    const/4 v5, 0x1

    if-ge v14, v15, :cond_3

    aget-byte v15, v10, v14

    and-int/lit16 v15, v15, 0xff

    add-int/lit16 v15, v15, 0x100

    invoke-static {v15, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x2

    goto :goto_4

    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xd

    const-string v9, "5"

    const/16 v5, 0xc

    invoke-virtual {v11, v5, v15, v9}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v14, "%s-%s-%s-%s-%s"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v9, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v6

    invoke-virtual {v9, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    aput-object v6, v15, v12

    const/16 v6, 0x10

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    aput-object v5, v15, v12

    const/4 v5, 0x3

    const/16 v12, 0x14

    invoke-virtual {v9, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v5

    const/4 v5, 0x4

    const/16 v6, 0x20

    invoke-virtual {v9, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v5

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    nop

    :cond_4
    :goto_5
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const v0, 0x7f1500db

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    new-instance v0, Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12154b

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setTitle(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->getDeviceUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method
