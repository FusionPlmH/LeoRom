.class public Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;
.super Ljava/lang/Object;
.source "FontSettingsInEasyMode.java"


# instance fields
.field private EASY_FONT_SCALE:F

.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private objValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f8ccccd    # 1.1f

    iput v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EASY_FONT_SCALE:F

    iput-object p1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mConfig:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public readFontSizePreference()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FontSettingsInEasyMode"

    const-string v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setEasyFont()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FontSettingsInEasyMode"

    const-string v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EASY_FONT_SCALE:F

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontIndex(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "STANDARD_FONT_SIZE"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v2, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->EASY_FONT_SCALE:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->writeFontSizePreference(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->readFontSizePreference()V

    return-void
.end method

.method public setStandardFont()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FontSettingsInEasyMode"

    const-string v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "STANDARD_FONT_SIZE"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->objValue:Ljava/lang/Object;

    const-string v1, "FontSettingsInEasyMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStandardFont fontIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " objValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->objValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "font_size"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->objValue:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->writeFontSizePreference(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->readFontSizePreference()V

    return-void
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mConfig:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    const-string v1, "FontSettingsInEasyMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeFontSizePreference : fontScale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FontSettingsInEasyMode"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "FontSettingsInEasyMode"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method
