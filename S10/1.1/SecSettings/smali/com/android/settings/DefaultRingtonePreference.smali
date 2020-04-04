.class public Lcom/android/settings/DefaultRingtonePreference;
.super Lcom/android/settings/RingtonePreference;
.source "DefaultRingtonePreference.java"


# instance fields
.field private mNotificationDual:Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;

.field private mResultListener:Lcom/samsung/android/settings/notification/SecRingtoneRecommender$OnHighlightResultListener;

.field private mRingtoneDual:Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;

.field private mRingtoneNotificationSettings:Lcom/samsung/android/settings/notification/SecSoundRingtoneController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/DefaultRingtonePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DefaultRingtonePreference$1;-><init>(Lcom/android/settings/DefaultRingtonePreference;)V

    iput-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mResultListener:Lcom/samsung/android/settings/notification/SecRingtoneRecommender$OnHighlightResultListener;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneDual:Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mNotificationDual:Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationSettings:Lcom/samsung/android/settings/notification/SecSoundRingtoneController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationSettings:Lcom/samsung/android/settings/notification/SecSoundRingtoneController;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/SecSoundRingtoneController;->onMusicPickerChosen(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mNotificationDual:Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;->onMusicPickerChosen(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneDual:Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->onMusicPickerChosen(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationSettings:Lcom/samsung/android/settings/notification/SecSoundRingtoneController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationSettings:Lcom/samsung/android/settings/notification/SecSoundRingtoneController;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/SecSoundRingtoneController;->onMusicPickerChosen(I)Landroid/content/Intent;

    :cond_3
    :goto_0
    const/16 v1, 0xfab

    const/16 v2, 0x1c20

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_3

    :cond_1
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121598

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "neutral_button"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "neutral_button_text"

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12050c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120b7a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_1
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "DefaultRingtonePreference"

    const-string v3, "onSaveRingtone"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "_data"

    const-string/jumbo v4, "title"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/notification/SecRingtoneRecommender;

    invoke-direct {v3}, Lcom/samsung/android/settings/notification/SecRingtoneRecommender;-><init>()V

    iget-object v4, p0, Lcom/android/settings/DefaultRingtonePreference;->mResultListener:Lcom/samsung/android/settings/notification/SecRingtoneRecommender$OnHighlightResultListener;

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/settings/notification/SecRingtoneRecommender;->doExtract(Ljava/lang/String;Lcom/samsung/android/settings/notification/SecRingtoneRecommender$OnHighlightResultListener;)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/SecRingtoneRecommender;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/samsung/android/settings/notification/SecRingtoneRecommender;->mIsOpen:Z

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/SecRingtoneRecommender;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    :cond_3
    :goto_0
    return-void
.end method

.method public setObject(Lcom/samsung/android/settings/notification/SecSoundRingtoneController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationSettings:Lcom/samsung/android/settings/notification/SecSoundRingtoneController;

    return-void
.end method

.method public setObjectDual(Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mNotificationDual:Lcom/samsung/android/settings/notification/SecDualNotificationSoundSettings;

    const/4 v0, 0x2

    invoke-static {v0, p2}, Landroid/media/RingtoneManager;->convertSettingForType(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneType(I)V

    return-void
.end method

.method public setObjectDual(Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneDual:Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;

    const/4 v0, 0x1

    invoke-static {v0, p2}, Landroid/media/RingtoneManager;->convertSettingForType(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneType(I)V

    return-void
.end method
