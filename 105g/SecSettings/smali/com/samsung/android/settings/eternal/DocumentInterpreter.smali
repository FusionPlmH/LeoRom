.class public Lcom/samsung/android/settings/eternal/DocumentInterpreter;
.super Ljava/lang/Object;
.source "DocumentInterpreter.java"


# instance fields
.field private final BACKUP_DATA:Ljava/lang/String;

.field private final BACKUP_DATA_SET:Ljava/lang/String;

.field private final BUILD_NUMBER:Ljava/lang/String;

.field private final CREATE_TIME:Ljava/lang/String;

.field private final DEVICE_CONFIGURATION:Ljava/lang/String;

.field private final DEVICE_TYPE:Ljava/lang/String;

.field private final INITIAL_OS_VERSION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDefaultValues:Landroid/os/Bundle;

.field private mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

.field private mIsSupportDefaultValueConcept:Z

.field private mSkipDefaultCheck:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/eternal/manager/EternalManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Eternal/DocumentInterpreter"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->TAG:Ljava/lang/String;

    const-string v0, "/GeneralInfo/Version"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->VERSION:Ljava/lang/String;

    const-string v0, "/GeneralInfo/BuildNum"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->BUILD_NUMBER:Ljava/lang/String;

    const-string v0, "/GeneralInfo/DeviceType"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->DEVICE_TYPE:Ljava/lang/String;

    const-string v0, "/GeneralInfo/CreatedTime"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->CREATE_TIME:Ljava/lang/String;

    const-string v0, "/GeneralInfo/InitialOsVersion"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->INITIAL_OS_VERSION:Ljava/lang/String;

    const-string v0, "DeviceConfiguration"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->DEVICE_CONFIGURATION:Ljava/lang/String;

    const-string v0, "BackupDataSet"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->BACKUP_DATA_SET:Ljava/lang/String;

    const-string v0, "BackupData"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->BACKUP_DATA:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mIsSupportDefaultValueConcept:Z

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    return-void
.end method

.method private buildBackupDataElement(Landroid/os/Bundle;Lorg/w3c/dom/Element;)V
    .locals 11

    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "Eternal/DocumentInterpreter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildBackupDataElement() keyBundle is null - key : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x50

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    const-string/jumbo v9, "value"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buildBackupDataElement() value is null - key : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buildBackupDataElement() attribute value is null - key : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " / attribute : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->getOrCreateNode(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string/jumbo v9, "value"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v9

    invoke-interface {v9, v8}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v9

    invoke-interface {v5, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_3
    move-object v9, v5

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-interface {v9, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    const-string v7, "Eternal/DocumentInterpreter"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->isDefaultValue(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, v5

    check-cast v7, Lorg/w3c/dom/Element;

    const-string v8, "defaultValue"

    const-string/jumbo v9, "true"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    goto/16 :goto_0

    :cond_8
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    const-string/jumbo v3, "version"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "Eternal/DocumentInterpreter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildBackupDataElement - version is null UID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->getUidOfBackupDataNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object v4, v2

    check-cast v4, Lorg/w3c/dom/Element;

    const-string/jumbo v5, "version"

    invoke-interface {v4, v5, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private buildBackupDataSetElement(Landroid/os/Bundle;Lorg/w3c/dom/Document;)V
    .locals 7

    const-string v0, "DeviceConfiguration"

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->searchNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "BackupDataSet"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_1

    const-string v5, "BackupData"

    invoke-interface {p2, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object v6, v4

    check-cast v6, Landroid/os/Bundle;

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->buildBackupDataElement(Landroid/os/Bundle;Lorg/w3c/dom/Element;)V

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private buildGeneralInfo(Lorg/w3c/dom/Document;Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "DeviceConfiguration"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_7

    const-string v6, "GeneralInfo"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v10, "value"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "/GeneralInfo/Version"

    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v1, v10

    goto :goto_1

    :cond_1
    const-string v11, "/GeneralInfo/DeviceType"

    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v2, v10

    goto :goto_1

    :cond_2
    const-string v11, "/GeneralInfo/BuildNum"

    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v3, v10

    goto :goto_1

    :cond_3
    const-string v11, "/GeneralInfo/CreatedTime"

    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v4, v10

    goto :goto_1

    :cond_4
    const-string v11, "/GeneralInfo/InitialOsVersion"

    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v5, v10

    :cond_5
    :goto_1
    goto :goto_0

    :cond_6
    const-string v7, "GeneralInfo"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_7
    const-string v6, "/GeneralInfo/Version"

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->getOrCreateNode(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "1.17"

    goto :goto_2

    :cond_8
    move-object v7, v1

    :goto_2
    invoke-interface {p1, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "ro.build.characteristics"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_9
    move-object v7, v2

    :goto_3
    move-object v2, v7

    const-string v7, "/GeneralInfo/DeviceType"

    invoke-direct {p0, v0, v7}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->getOrCreateNode(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v2, :cond_a

    const-string/jumbo v7, "tablet"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string/jumbo v7, "tablet"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_4

    :cond_a
    const-string v7, "phone"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_4
    const-string v7, "/GeneralInfo/BuildNum"

    invoke-direct {p0, v0, v7}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->getOrCreateNode(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object v7, v3

    :goto_5
    invoke-interface {p1, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v9, "/GeneralInfo/CreatedTime"

    invoke-direct {p0, v0, v9}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->getOrCreateNode(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_c
    move-object v9, v4

    :goto_6
    invoke-interface {p1, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v9, "/GeneralInfo/InitialOsVersion"

    invoke-direct {p0, v0, v9}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->getOrCreateNode(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v9, "ro.product.first_api_level"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    nop

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_d
    move-object v10, v5

    :goto_7
    invoke-interface {p1, v10}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v10

    invoke-interface {v6, v10}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private buildKeySetOfBackupData(Lorg/w3c/dom/Node;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p3}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->buildKeySetOfBackupData(Lorg/w3c/dom/Node;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, p2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getOrCreateNode(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "/"

    invoke-direct {v0, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->searchFromChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object v1, v4

    goto :goto_1

    :cond_0
    move-object v1, v3

    :goto_1
    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getUidOfBackupDataNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 6

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method private isEqualBundle(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return v3

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private parseAttribute(Lorg/w3c/dom/Node;Z)Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "defaultValue"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->isSupportDefaultValueConcept(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "value"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private parseBackupDataNode(Lorg/w3c/dom/Node;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    if-nez p3, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    :goto_0
    if-nez v1, :cond_1

    return-object v3

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->searchNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v4, p4}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->parseAttribute(Lorg/w3c/dom/Node;Z)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_2

    :cond_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "value"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    return-object v3
.end method

.method private parseGeneralInfo(Lorg/w3c/dom/Node;)Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "/GeneralInfo/Version"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->searchNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "value"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/GeneralInfo/Version"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const-string v2, "/GeneralInfo/BuildNum"

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->searchNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "value"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "/GeneralInfo/BuildNum"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const-string v3, "/GeneralInfo/CreatedTime"

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->searchNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "value"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "/GeneralInfo/CreatedTime"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-object v0
.end method

.method private searchFromChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private searchNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 4

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "/"

    invoke-direct {v0, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->searchFromChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    move-object p1, v2

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public generate(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "Eternal/DocumentInterpreter"

    const-string v2, "generate() - bundle is null"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->loadDefaultValues()V

    const-string v1, "Eternal/DocumentInterpreter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generate - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mSkipDefaultCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mSkipDefaultCheck:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5

    nop

    nop

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->buildGeneralInfo(Lorg/w3c/dom/Document;Landroid/os/Bundle;)V

    invoke-direct {p0, p2, v3}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->buildBackupDataSetElement(Landroid/os/Bundle;Lorg/w3c/dom/Document;)V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    :try_start_1
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v0, v5

    nop

    nop

    const-string v5, "encoding"

    const-string v6, "UTF-8"

    invoke-virtual {v0, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "indent"

    const-string/jumbo v6, "yes"

    invoke-virtual {v0, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v8

    new-instance v8, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v8, v6}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v5, v8}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v8

    goto :goto_2

    :catch_1
    move-exception v8

    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_1

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :goto_1
    return v7

    :goto_2
    if-eqz v6, :cond_2

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    throw v8

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    return v0

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    return v0
.end method

.method public generate(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    const-string v5, "deviceType"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    :cond_1
    goto :goto_1

    :cond_2
    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2
    goto :goto_0

    :cond_3
    goto :goto_3

    :cond_4
    move-object p2, p3

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_6

    const-string v1, "GeneralInfo"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->generate(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    return v2

    :cond_6
    const-string v1, "Eternal/DocumentInterpreter"

    const-string v2, "generate() - Nothing has changed"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public getDefaultValues()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mDefaultValues:Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->loadDefaultValues()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mDefaultValues:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    :goto_0
    move-object v4, v2

    :try_start_1
    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    :goto_2
    if-nez v4, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->normalize()V

    return-object v4
.end method

.method public getKeySetOfDTD()Landroid/os/Bundle;
    .locals 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    :goto_0
    move-object v4, v2

    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "SettingsBackupDTD.xml"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    :goto_2
    if-nez v4, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "BackupDataSet"

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->searchNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v6, 0x0

    :goto_3
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->getUidOfBackupDataNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, ""

    invoke-direct {p0, v7, v10, v9}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->buildKeySetOfBackupData(Lorg/w3c/dom/Node;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    if-lez v10, :cond_2

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method public isDefaultValue(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mSkipDefaultCheck:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mDefaultValues:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, "/"

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mDefaultValues:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->isEqualBundle(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v4

    return v4

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public isSupportDefaultValueConcept(Z)Z
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mIsSupportDefaultValueConcept:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadDefaultValues()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mDefaultValues:Landroid/os/Bundle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/manager/EternalManager;->getLabelAll()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "/efs/sec_efs/SettingsBackup.xml"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->parse(Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mDefaultValues:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public parse(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->parse(Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->getDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v5, "/GeneralInfo/DeviceType"

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->searchNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "value"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    const-string v7, "/GeneralInfo/InitialOsVersion"

    invoke-direct {v0, v6, v7}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->searchNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->setIsSupportDefaultValueConcept(Z)V

    goto :goto_1

    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x1c

    if-lt v10, v11, :cond_3

    move v10, v7

    goto :goto_0

    :cond_3
    move v10, v8

    :goto_0
    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->setIsSupportDefaultValueConcept(Z)V

    :goto_1
    goto :goto_2

    :cond_4
    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->setIsSupportDefaultValueConcept(Z)V

    :goto_2
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    const-string v10, "BackupDataSet"

    invoke-direct {v0, v9, v10}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->searchNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    if-nez v9, :cond_5

    return-object v3

    :cond_5
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    nop

    :goto_3
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v8, v10, :cond_a

    invoke-interface {v3, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    if-ne v11, v7, :cond_9

    invoke-direct {v0, v10}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->getUidOfBackupDataNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p2

    move/from16 v13, p3

    invoke-direct {v0, v10, v11, v12, v13}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->parseBackupDataNode(Lorg/w3c/dom/Node;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-direct {v0, v10, v11}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->searchFromChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-interface {v15}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v17, v3

    invoke-direct {v0, v15, v7}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->parseAttribute(Lorg/w3c/dom/Node;Z)Landroid/os/Bundle;

    move-result-object v3

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    if-eqz v3, :cond_6

    move-object/from16 v18, v4

    const-string/jumbo v4, "version"

    move-object/from16 v19, v6

    const-string/jumbo v6, "version"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    :goto_4
    const-string/jumbo v4, "version"

    invoke-virtual {v14, v4, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_7
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    :goto_5
    const-string v3, "deviceType"

    invoke-virtual {v14, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :cond_8
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    :goto_6
    invoke-virtual {v1, v11, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_7

    :cond_9
    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    :goto_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    const/4 v7, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->parseGeneralInfo(Lorg/w3c/dom/Node;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v4, "GeneralInfo"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_b
    return-object v1
.end method

.method public setIsSupportDefaultValueConcept(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mIsSupportDefaultValueConcept:Z

    return-void
.end method

.method public setSkipDefaultCheck(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mSkipDefaultCheck:Z

    const-string v0, "Eternal/DocumentInterpreter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generate : setSkipDefaultCheck = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/eternal/DocumentInterpreter;->mSkipDefaultCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
