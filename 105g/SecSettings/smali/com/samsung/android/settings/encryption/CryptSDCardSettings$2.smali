.class Lcom/samsung/android/settings/encryption/CryptSDCardSettings$2;
.super Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public secGetVariableRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-direct {v3, p1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "device_policy"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    new-instance v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;

    invoke-direct {v5, p1}, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;-><init>(Landroid/content/Context;)V

    const-string v6, "sdcard_encrypt_status"

    iput-object v6, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportBiometricsFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f1202ba

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->screenTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const v6, 0x7f121755

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->screenTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v6

    invoke-virtual {v3}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f121343    # 1.941673E38f

    if-nez v7, :cond_2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->title:Ljava/lang/String;

    const v0, 0x7f121346

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->summary:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v9

    const v10, 0x7f121344

    if-eqz v9, :cond_7

    const v9, 0x7f121334

    const v11, 0x7f121333

    if-nez v6, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/security/SemSdCardEncryption;->isSdCardEncryped()Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->title:Ljava/lang/String;

    const v0, 0x7f121349

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->summary:Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->title:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->summary:Ljava/lang/String;

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->title:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->summary:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->title:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->summary:Ljava/lang/String;

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->title:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->summary:Ljava/lang/String;

    :goto_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v1

    :cond_9
    :goto_3
    return-object v0
.end method
