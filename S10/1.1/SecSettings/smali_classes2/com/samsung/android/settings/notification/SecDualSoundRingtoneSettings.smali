.class public Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecDualSoundRingtoneSettings.java"


# static fields
.field private static myContext:Landroid/content/Context;


# instance fields
.field private mActivePhone:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtoneNotificationRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

.field private offset:Ljava/lang/String;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings$1;-><init>(Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private UpdateRingtoneNotificationNames()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;ILandroid/support/v7/preference/Preference;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->updateRingtoneName(ILandroid/support/v7/preference/Preference;I)V

    return-void
.end method

.method private canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5

    const-string v0, "DCM"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    const-string v0, "DualSoundRingtoneSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside canSetRingtone ringtone uri is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DualSoundRingtoneSettings"

    const-string v1, "Inside cansetringtone ringtone uri not null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DualSoundRingtoneSettings"

    const-string v1, "ringtoneUri.toString().contains(content:media)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v1}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "DualSoundRingtoneSettings"

    const-string v3, "drmClient.canHandle(ringtoneUri, null)"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v3, "DualSoundRingtoneSettings"

    const-string v4, "PR DRM File Ringtone Rights Invalid !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    const-string v3, "DualSoundRingtoneSettings"

    const-string v4, "RingtoneManager.getRingtone(context, ringtoneUri)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    const-string v3, "DualSoundRingtoneSettings"

    const-string v4, "returning false because rtTemp is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DualSoundRingtoneSettings"

    const-string v4, "getRingtone() null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DualSoundRingtoneSettings"

    const-string v3, "canSetRingtone() exception !!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_2
    const-string v0, "DualSoundRingtoneSettings"

    const-string v1, "inside canSetRingtone ringtone uri is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private configureActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    return-void
.end method

.method private setActivePhone()V
    .locals 9

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "gsm.sim.state"

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/samsung/android/settings/ConnectionsUtils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gsm.sim.state"

    const-string v4, "UNKNOWN"

    const/4 v5, 0x1

    invoke-static {v2, v5, v4}, Lcom/samsung/android/settings/ConnectionsUtils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v4, v3, v6}, Lcom/samsung/android/settings/ConnectionsUtils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "gsm.sim.currentcardstatus"

    const-string v7, "9"

    invoke-static {v6, v5, v7}, Lcom/samsung/android/settings/ConnectionsUtils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "3"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const-string v7, "READY"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "READY"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    iput v5, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mActivePhone:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/ConnectionsUtils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v5, :cond_3

    const/4 v7, 0x5

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v8

    if-ne v7, v8, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_3

    iput v5, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mActivePhone:I

    goto :goto_0

    :cond_3
    iput v3, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mActivePhone:I

    :goto_0
    return-void
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9

    const-string v0, "DualSoundRingtoneSettings"

    const-string v1, "UpdateMediaDB"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualSoundRingtoneSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DualSoundRingtoneSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMediaDB - extension("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), mimeType("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    const-string v4, "3ga"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "DualSoundRingtoneSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMediaDB - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v4, "audio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "DualSoundRingtoneSettings"

    const-string v5, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_2
    :goto_0
    nop

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_data"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "title"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mime_type"

    const-string v6, "audio/*"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_size"

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_data=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "DualSoundRingtoneSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateMediaDB - tempUri("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "), newUri("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_0
    move-exception v3

    const-string v4, "DualSoundRingtoneSettings"

    const-string v5, "updateMediaDB - exception is Occured - return null"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private updateRingtoneData(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->updateRingtoneName(ILandroid/support/v7/preference/Preference;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->updateRingtoneName(ILandroid/support/v7/preference/Preference;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRingtoneName(ILandroid/support/v7/preference/Preference;I)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    const v1, 0x10408f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_1

    const v1, 0x10408f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x0

    move-object v9, v1

    :try_start_0
    const-string v1, "media"

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "title"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_2
    const-string v1, "settings"

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getRingtoneTitleForCached(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_3
    const-string v1, "content"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_display_name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    move-object v1, v8

    :goto_2
    if-eqz v9, :cond_7

    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    :catch_0
    move-exception v1

    move-object v1, v8

    if-eqz v9, :cond_7

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v8

    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfab

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 7

    if-eqz p1, :cond_4

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "DCM"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f12168a

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->myContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DualSoundRingtoneSettings"

    const-string v3, "Inside cansetringtone false"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const-string v0, "DualSoundRingtoneSettings"

    const-string v3, "handleRingtonePicked updating media DB"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    const-string v0, "DualSoundRingtoneSettings"

    const-string v3, "handleRingtonePicked - pickedUri is null"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "is_ringtone"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "DualSoundRingtoneSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRingtonePicked - pickedUri("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "), ringtoneType("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "DualSoundRingtoneSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRingtonePicked(Exception): pickedUri is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "DualSoundRingtoneSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRingtonePicked(IllegalArgumentException): pickedUri is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    nop

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->offset:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/16 v1, 0x80

    if-ne p2, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "recommendation_time_2"

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->offset:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "recommendation_time"

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->offset:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_4
    :goto_2
    const-string v0, "DualSoundRingtoneSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRingtonePicked() : Not changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->updateRingtoneData(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "DualSoundRingtoneSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    if-eq p2, v1, :cond_0

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/settings/DefaultRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/settings/DefaultRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    :goto_0
    if-ne p2, v0, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "highlight_offset"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->offset:Ljava/lang/String;

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->setActivePhone()V

    const v0, 0x7f1500bb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->addPreferencesFromResource(I)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->myContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DualSoundRingtoneSettings"

    const-string v3, "GPS sound settings: error getting activity of create package context"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/media/RingtoneManager;->convertSettingForType(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneType(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/DefaultRingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/DefaultRingtonePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/settings/notification/SoundUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/DefaultRingtonePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/DefaultRingtonePreference;->setObjectDual(Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;I)V

    :cond_0
    const-string v1, "ringtone_2"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-static {v0, v0}, Landroid/media/RingtoneManager;->convertSettingForType(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneType(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/DefaultRingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/DefaultRingtonePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/settings/notification/SoundUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/DefaultRingtonePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/DefaultRingtonePreference;->setObjectDual(Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;I)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->configureActionBar()V

    new-instance v0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings$2;-><init>(Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings$3;-><init>(Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DualSoundRingtoneSettings"

    const-string v2, "The QCOM HOT SWAP receiver is already unregistered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMusicPickerChosen(I)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "enable_ringtone_recommender"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "DocumentsUIPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    const-string v4, "com.samsung.android.app.soundpicker"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-boolean v5, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.app.soundpicker"

    const-string v6, "com.samsung.android.app.soundpicker.SoundPickerActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v5, "DualSoundRingtoneSettings"

    const-string v6, "SoundPickerActivity is enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v4, "DualSoundRingtoneSettings"

    const-string v5, "SoundPickerActivity is disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-ne p1, v2, :cond_2

    :try_start_1
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    :try_start_2
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtone2Preference:Lcom/android/settings/DefaultRingtonePreference;

    if-ne p1, v0, :cond_2

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/DefaultRingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->mRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    nop

    invoke-virtual {v0}, Lcom/android/settings/DefaultRingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/DefaultRingtonePreference;->getUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    nop

    invoke-virtual {v0}, Lcom/android/settings/DefaultRingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/DefaultRingtonePreference;->getUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->updateState(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->UpdateRingtoneNotificationNames()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method
