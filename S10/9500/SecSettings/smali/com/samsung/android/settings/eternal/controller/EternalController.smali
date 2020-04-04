.class public Lcom/samsung/android/settings/eternal/controller/EternalController;
.super Ljava/lang/Object;
.source "EternalController.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

.field private mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EternalController"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/eternal/controller/EternalController;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getFilePathName(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SettingsValidation.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SettingsInAppBackup.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v0, "/efs/sec_efs/SettingsBackup.xml"

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SettingsBackup.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUidOfKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "/"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    nop

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private removeItemFromFastTrack(Landroid/os/Bundle;)V
    .locals 9

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/settings/eternal/EternalConstants;->FAST_TRACK_BLACK_LIST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/eternal/controller/EternalController;->getUidOfKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_2

    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    move-object v7, v6

    check-cast v7, Ljava/io/Serializable;

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "EternalController"

    const-string v8, "removeItemFromFastTrack() - ClassCastException"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "EternalController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeItemFromFastTrack() - removedItemCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private removeWhiteListItemFromDefault(Landroid/os/Bundle;)V
    .locals 7

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/eternal/EternalConstants;->DEFAULT_VALUE_WHITE_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/eternal/controller/EternalController;->getUidOfKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private saveErrorTypeOfRestore(Landroid/os/Bundle;Landroid/os/Bundle;)I
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v8, "errorType"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    const-string v8, "errorType"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string v10, "errorType"

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    :cond_5
    goto :goto_1

    :cond_6
    goto :goto_0

    :cond_7
    return v0

    :cond_8
    :goto_2
    const-string v1, "EternalController"

    const-string v2, "saveErrorTypeOfRestore() - restoreBundleSet or errorBundleSet is null "

    invoke-static {v1, v2}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private saveRestrictedItemResult(Landroid/os/Bundle;)I
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "EternalController"

    const-string v2, "restoreBundleSet() - restoreBundleSet is null "

    invoke-static {v1, v2}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_RESTORE_EXCLUDED_ITEMS"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/eternal/controller/EternalController;->getUidOfKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "errorType"

    const-string v8, "RESTORE_RESTRICTED"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    :cond_2
    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method public fetchBackup()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchBackup(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fetchBackup(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/eternal/controller/EternalController;->getFilePathName(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "EternalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchBackup() - backupDocumentPathName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->getKeySetOfDTD()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/eternal/manager/EternalManager;->getValues(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->generate(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public fetchConvertData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const-string v0, "EternalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchConvertData() : uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->getKeySetOfDTD()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/samsung/android/settings/eternal/manager/EternalManager;->convertData(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v2, "EternalController"

    const-string v3, "fetchConvertData() - bundle is null"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "convertDataSet"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "EternalController"

    const-string v4, "fetchConvertData() - convertData is null"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/eternal/manager/EternalManager;->setValueAll(Landroid/os/Bundle;)Landroid/os/Bundle;

    const/16 v3, 0x102

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/eternal/controller/EternalController;->getFilePathName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/eternal/manager/EternalManager;->getLabelAll()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->parse(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    nop

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    invoke-virtual {v4, v3, v1, v2}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->generate(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Z

    const-string v4, "convertResultSet"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    return-object v4
.end method

.method public fetchDefaultBackup()I
    .locals 7

    const-string v0, "EternalController"

    const-string v1, "fetchDefaultBackup()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/16 v2, 0x101

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/eternal/controller/EternalController;->getFilePathName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    iget-object v5, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    invoke-virtual {v5}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->getKeySetOfDTD()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/eternal/manager/EternalManager;->getValues(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/eternal/controller/EternalController;->removeWhiteListItemFromDefault(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->setSkipDefaultCheck(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    iget-object v6, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    invoke-virtual {v6}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->getDefaultValues()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v2, v6, v3}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->generate(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v4, 0x0

    nop

    :cond_2
    return v4
.end method

.method public fetchRestore()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchRestore(Z)Z

    move-result v0

    return v0
.end method

.method public fetchRestore(Z)Z
    .locals 10

    const-string v0, "EternalController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchRestore() isFastTrack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "EternalController"

    const-string v2, "fetchRestore - mDocumentInterpreter is null"

    invoke-static {v0, v2}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/manager/EternalManager;->getLabelAll()Landroid/os/Bundle;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/eternal/controller/EternalController;->removeItemFromFastTrack(Landroid/os/Bundle;)V

    :cond_1
    const/16 v2, 0x100

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/eternal/controller/EternalController;->getFilePathName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->parse(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/eternal/controller/EternalController;->ignoreRestoreRestrictedItem(Landroid/os/Bundle;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/eternal/manager/EternalManager;->setValueAll(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gtz v4, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    iget-object v9, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    invoke-virtual {v9}, Lcom/samsung/android/settings/eternal/manager/EternalManager;->getLabelAll()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v2, v9, v7}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->parse(Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    :cond_4
    if-lez v4, :cond_5

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/eternal/controller/EternalController;->saveRestrictedItemResult(Landroid/os/Bundle;)I

    move-result v8

    if-lez v8, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v5, :cond_6

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/settings/eternal/controller/EternalController;->saveErrorTypeOfRestore(Landroid/os/Bundle;Landroid/os/Bundle;)I

    move-result v8

    if-lez v8, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_7

    iget-object v8, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    invoke-virtual {v8, v2, v6}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->generate(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_7
    return v7
.end method

.method public fetchValidation(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/eternal/manager/DocumentValidator$ValidationResult;",
            ">;"
        }
    .end annotation

    const-string v0, "EternalController"

    const-string v1, "fetchValidation()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/eternal/controller/EternalController;->getFilePathName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/eternal/manager/EternalManager;->getLabelAll()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->parse(Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x102

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/eternal/controller/EternalController;->getFilePathName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    iget-object v5, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/eternal/manager/EternalManager;->getLabelAll()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->parse(Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v5, "EternalController"

    const-string v6, "fetchValidation() - inAppBundle is null"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "EternalController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fetchValidation() - settingsBundle has same key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v8, "EternalController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fetchValidation() - merge key : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    goto :goto_0

    :cond_4
    :goto_1
    const/16 v5, 0x103

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/eternal/controller/EternalController;->getFilePathName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchBackup(Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    iget-object v7, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/eternal/manager/EternalManager;->getLabelAll()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v5, v7, v3}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->parse(Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v3

    new-instance v6, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;

    invoke-direct {v6}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;-><init>()V

    invoke-virtual {v6, v1, v3}, Lcom/samsung/android/settings/eternal/manager/DocumentValidator;->getValidationResult(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "SettingsValidation.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->deleteAllFiles(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "SettingsInAppBackup.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->deleteAllFiles(Ljava/lang/String;)V

    return-object v7
.end method

.method public ignoreRestoreRestrictedItem(Landroid/os/Bundle;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "EternalController"

    const-string v2, "ignoreRestoreRestrictedItem : bundle is null"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_RESTORE_EXCLUDED_ITEMS"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/eternal/controller/EternalController;->getUidOfKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    :cond_2
    goto :goto_0

    :cond_3
    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/eternal/manager/EternalManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/eternal/manager/EternalManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/eternal/manager/EternalManager;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDocumentInterpreter:Lcom/samsung/android/settings/eternal/DocumentInterpreter;

    :cond_1
    return-void
.end method
