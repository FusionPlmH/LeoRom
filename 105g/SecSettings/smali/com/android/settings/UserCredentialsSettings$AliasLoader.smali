.class Lcom/android/settings/UserCredentialsSettings$AliasLoader;
.super Landroid/os/AsyncTask;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/settings/UserCredentialsSettings$Credential;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UserCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/UserCredentialsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;-><init>(Lcom/android/settings/UserCredentialsSettings;)V

    return-void
.end method

.method private getCCMCertificateForAlias(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2

    const/4 v0, 0x0

    nop

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/tima_keychain/TimaKeychain;->display2KeyChainAlias(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/tima_keychain/TimaKeychain;->getCertificateChainFromTimaKeystore(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method private getCCMCredentials()Ljava/util/SortedMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCCMPrivateKeyAliases()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v3, "UserCredentialsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ccmPkeyAlias: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " [Knox]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/UserCredentialsSettings$Credential;

    if-nez v6, :cond_2

    invoke-direct {p0, v5}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCCMCertificateForAlias(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " [Knox]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/settings/UserCredentialsSettings$Credential;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " [Knox]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential;->access$200()I

    move-result v11

    invoke-direct {v9, v10, v2, v11}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;II)V

    move-object v6, v9

    invoke-interface {v0, v8, v9}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v6, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v9, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v8, v9}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    array-length v8, v7

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v11

    if-lez v11, :cond_0

    iget-object v11, v6, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v12, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v11, v12}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    iget-object v11, v6, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v12, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v11, v12}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCCMWifiAliases()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v3, v1

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_7

    aget-object v5, v1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " [Knox]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/UserCredentialsSettings$Credential;

    if-nez v6, :cond_6

    invoke-direct {p0, v5}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCCMCertificateForAlias(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " [Knox]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/settings/UserCredentialsSettings$Credential;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " [Knox]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential;->access$200()I

    move-result v11

    invoke-direct {v9, v10, v2, v11}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;II)V

    move-object v6, v9

    invoke-interface {v0, v8, v9}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/android/settings/UserCredentialsSettings$Credential;->access$302(Lcom/android/settings/UserCredentialsSettings$Credential;Z)Z

    iget-object v8, v6, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v9, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v8, v9}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    array-length v8, v7

    move v9, v2

    :goto_4
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v11

    if-lez v11, :cond_4

    iget-object v11, v6, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v12, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v11, v12}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    iget-object v11, v6, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v12, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v11, v12}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-object v0
.end method

.method private getCCMPrivateKeyAliases()[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/settings/UserCredentialsSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/tima_keychain/TimaKeychain;->getAliasListFromTimaKeystore(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v2, "UserCredentialsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ccmAliasList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private getCCMWifiAliases()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/tima_keychain/TimaKeychain;->getAliasesForWifi(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getCredentialsForUid(Landroid/security/KeyStore;I)Ljava/util/SortedMap;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "I)",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v3, v0

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->values()[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_8

    aget-object v8, v4, v7

    iget-object v9, v8, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->prefix:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_7

    aget-object v12, v9, v11

    invoke-virtual {v1, v12, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_6

    aget-object v6, v13, v15

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    move-object/from16 v16, v4

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_1

    const-string v0, "profile_key_name_encrypt_"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "profile_key_name_decrypt_"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_5

    :cond_0
    const-string/jumbo v0, "synthetic_password_"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_5

    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    if-ne v8, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p0

    :try_start_1
    invoke-direct {v4, v1, v0, v2}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->isAsymmetric(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v0
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_3

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_2
    move-object/from16 v4, p0

    :cond_3
    invoke-interface {v3, v6}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$Credential;

    if-nez v0, :cond_4

    move-object/from16 v17, v0

    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential;

    invoke-direct {v0, v6, v2}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v6, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move-object/from16 v17, v0

    :goto_3
    iget-object v1, v0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    invoke-virtual {v1, v8}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    :goto_4
    const-string v1, "UserCredentialsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to determine algorithm of key: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_5
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    move-object/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_2

    :cond_6
    move-object/from16 v16, v4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_1

    :cond_7
    move-object/from16 v16, v4

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_0

    :cond_8
    return-object v3
.end method

.method private getFriendlyNameForPlugin(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUCMCertificateForAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.samsung.ucs.ucsservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    invoke-direct {p0, v4}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    :cond_1
    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "UserCredentialsSettings"

    const-string v3, "Failed to getUCMCertificate"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getUCMCredentials()Ljava/util/SortedMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getUCMCredentials(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    array-length v6, v2

    move-object v7, v4

    move-object v4, v3

    move v3, v5

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v8, v2, v3

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v8}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getFriendlyNameForPlugin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/UserCredentialsSettings$Credential;

    if-nez v9, :cond_1

    invoke-direct {p0, v8}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getUCMCertificateForAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/settings/UserCredentialsSettings$Credential;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential;->access$400()I

    move-result v14

    invoke-direct {v12, v13, v5, v14}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;II)V

    move-object v9, v12

    invoke-interface {v0, v11, v12}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v9, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v12, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v11, v12}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v11

    if-lez v11, :cond_0

    iget-object v11, v9, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v12, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v11, v12}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v11, v9, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v12, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v11, v12}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    move-object v3, v4

    move-object v4, v7

    :cond_3
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getUCMCredentials(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    array-length v6, v2

    move-object v7, v4

    move-object v4, v3

    move v3, v5

    :goto_2
    if-ge v3, v6, :cond_6

    aget-object v8, v2, v3

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v8}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getFriendlyNameForPlugin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/UserCredentialsSettings$Credential;

    if-nez v9, :cond_5

    invoke-direct {p0, v8}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getUCMCertificateForAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/settings/UserCredentialsSettings$Credential;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential;->access$400()I

    move-result v14

    invoke-direct {v12, v13, v5, v14}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;II)V

    move-object v9, v12

    invoke-interface {v0, v11, v12}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v1}, Lcom/android/settings/UserCredentialsSettings$Credential;->access$302(Lcom/android/settings/UserCredentialsSettings$Credential;Z)Z

    iget-object v11, v9, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v12, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v11, v12}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v11

    if-lez v11, :cond_4

    iget-object v11, v9, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v12, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v11, v12}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object v11, v9, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v12, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v11, v12}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_6
    move-object v3, v4

    move-object v4, v7

    :cond_7
    return-object v0
.end method

.method private getUCMCredentials(I)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    new-instance v2, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    const-string v3, "KNOX"

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v5, "stringarrayresponse"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private isAsymmetric(Landroid/security/KeyStore;Ljava/lang/String;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const v3, 0x10000002

    invoke-virtual {v0, v3}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    nop

    :cond_1
    :goto_0
    return v2

    :cond_2
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    const-string v4, "Key algorithm unknown"

    invoke-direct {v2, v4}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    const-string v3, "Failed to obtain information about key"

    invoke-direct {v2, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/security/UnrecoverableKeyException;

    throw v2
.end method

.method private toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    const-string v2, "UserCredentialsSettings"

    const-string v3, "Failed to toCertificate"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    const/16 v3, 0x3f2

    invoke-static {v1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCredentialsForUid(Landroid/security/KeyStore;I)Ljava/util/SortedMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCredentialsForUid(Landroid/security/KeyStore;I)Ljava/util/SortedMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCCMCredentials()Ljava/util/SortedMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getUCMCredentials()Ljava/util/SortedMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0805da

    const v1, 0x7f0601bb

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/UserCredentialsSettings;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f121baa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v4}, Lcom/android/settings/UserCredentialsSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010038

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v4, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v4}, Lcom/android/settings/UserCredentialsSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v5, 0xf

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->semSetRoundedCorners(I)V

    iget-object v6, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v6}, Lcom/android/settings/UserCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/TextView;->semSetRoundedCornerColor(II)V

    iget-object v5, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v5}, Lcom/android/settings/UserCredentialsSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v5, v2}, Lcom/android/settings/UserCredentialsSettings;->setEmptyView(Landroid/view/View;)V

    nop

    :goto_1
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/settings/UserCredentialsSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v3}, Lcom/android/settings/UserCredentialsSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    new-instance v4, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;

    iget-object v5, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {v4, p1, v5}, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v3, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v3}, Lcom/android/settings/UserCredentialsSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->semSetRoundedCorners(I)V

    iget-object v3, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v3}, Lcom/android/settings/UserCredentialsSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v5}, Lcom/android/settings/UserCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/support/v7/widget/RecyclerView;->semSetRoundedCornerColor(II)V

    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v1}, Lcom/android/settings/UserCredentialsSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    const-string v0, "UserCredentialsSettings"

    const-string v1, "Context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
