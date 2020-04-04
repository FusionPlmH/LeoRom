.class public Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ucm/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ODEProperties"
.end annotation


# instance fields
.field public AID:[B

.field public CertAdminID:I

.field public CertAlias:[B

.field public CertLocation:[B

.field public CertUserID:I

.field public authMaxCnt:I

.field public authMode:I

.field public cofiguratorPkg:[B

.field public cofiguratorSign:[B

.field public csName:[B

.field public defaultLanguage:[B

.field public enabledSCP:I

.field public enabledUCSInODE:I

.field public enabledWrap:I

.field public pinMaxLength:I

.field public pinMinLength:I

.field public pluginSignatureHash:[B

.field public pukMaxLength:I

.field public pukMinLength:I

.field public scpCreationParam:[B

.field public storageType:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->enabledUCSInODE:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->AID:[B

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->storageType:I

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->enabledSCP:I

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->enabledWrap:I

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->pinMinLength:I

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->pinMaxLength:I

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->authMode:I

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->authMaxCnt:I

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->pukMinLength:I

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->pukMaxLength:I

    iput-object v1, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->csName:[B

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->CertAdminID:I

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->CertUserID:I

    iput-object v1, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->CertAlias:[B

    iput-object v1, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->CertLocation:[B

    iput-object v1, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    iput-object v1, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->cofiguratorSign:[B

    iput-object v1, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->scpCreationParam:[B

    iput-object v1, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->version:I

    iput-object v1, p0, Lcom/samsung/android/settings/ucm/EFSProperties$ODEProperties;->defaultLanguage:[B

    return-void
.end method

.method public static getStorageTypeIndex(Ljava/lang/String;)I
    .locals 5

    sget-object v0, Lcom/samsung/android/settings/ucm/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, -0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uicc"

    const-string v4, "sim"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    sget-object v4, Lcom/samsung/android/settings/ucm/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    return v1

    :cond_3
    :goto_1
    return v1
.end method
