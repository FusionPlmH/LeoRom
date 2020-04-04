.class public Landroid/content/pm/aasa/AASATokenParser;
.super Ljava/lang/Object;
.source "AASATokenParser.java"


# static fields
.field private static ASKS_MODE:I

.field private static mADPPackagesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/aasa/ADPContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static mADPTokenFileSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mASKSRestrictList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final AASA_CASE:I

.field private final AASA_TOKEN:I

.field private final ADP_CASE:I

.field private final ADP_EFS:I

.field private final ADP_SYSTEM_ETC:I

.field private final ADP_VERSION:Ljava/lang/String;

.field private final ASKS_BLACK:I

.field private final ASKS_CASE:I

.field private final ASKS_CERTSTORE:I

.field private final ASKS_CRL:I

.field private final ASKS_INSTALLED:I

.field private final ASKS_KNOWN:I

.field private final ASKS_SETMODE:I

.field private final ASKS_TRUSTEDSTORE:I

.field private final ASKS_VERSION:Ljava/lang/String;

.field private final ASKS_WHITE:I

.field private CA_CERT_PATH:Ljava/lang/String;

.field private CA_CERT_SYSTEM_PATH:Ljava/lang/String;

.field private EE_CERT_FILE:Ljava/lang/String;

.field private final POLICY_VERSION_FILE:Ljava/lang/String;

.field private final RESTRICT_PACKAGE_FILE:Ljava/lang/String;

.field private ROOT_CERT:Ljava/lang/String;

.field private final SAMSUNG_ANALYTICS_LOG_FILE:Ljava/lang/String;

.field private final SECURE_TIME_FILE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mADPContainer:Landroid/content/pm/aasa/ADPContainer;

.field private mADPPolicyVersion:Ljava/lang/String;

.field private mArchiveSourcePath:Ljava/lang/String;

.field private mCAKeyIndex:Ljava/lang/String;

.field private mCertName:Ljava/lang/String;

.field private mCertPath:Ljava/lang/String;

.field private mHasRestrictList:Z

.field private mIsAppSystem:Z

.field private mIsDebug:Z

.field private mPkgHashCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRootKeyIndex:Ljava/lang/String;

.field private mTokenContents:[B

.field private mTokenName:Ljava/lang/String;

.field private mTokenValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/pm/aasa/AASATokenParser;->mASKSRestrictList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/content/pm/aasa/AASATokenParser;->mADPTokenFileSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string v1, ""

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertPath:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertName:Ljava/lang/String;

    const-string v1, "/data/system/.aasa/AASApolicy/ASKS_INTER_"

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->CA_CERT_PATH:Ljava/lang/String;

    const-string v1, "/system/etc/ASKS_INTER_"

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->CA_CERT_SYSTEM_PATH:Ljava/lang/String;

    const-string v1, "/system/etc/ASKS_ROOT_1.crt"

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->ROOT_CERT:Ljava/lang/String;

    const-string v1, "/system/etc/ASKS_EDGE_1.crt"

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->EE_CERT_FILE:Ljava/lang/String;

    const-string v1, "/data/system/.aasa/RestrictPackages.xml"

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->RESTRICT_PACKAGE_FILE:Ljava/lang/String;

    const-string v1, "/data/system/.aasa/AASApolicy/AASAPolicyVersion.txt"

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->POLICY_VERSION_FILE:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mCAKeyIndex:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mRootKeyIndex:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Landroid/content/pm/aasa/AASATokenParser;->AASA_TOKEN:I

    const/4 v2, 0x1

    iput v2, p0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_SETMODE:I

    const/16 v3, 0x8

    iput v3, p0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_WHITE:I

    const/16 v3, 0x9

    iput v3, p0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_BLACK:I

    const/16 v3, 0xa

    iput v3, p0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_KNOWN:I

    const/16 v3, 0xb

    iput v3, p0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_INSTALLED:I

    const/16 v3, 0xc

    iput v3, p0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_TRUSTEDSTORE:I

    const/16 v3, 0xe

    iput v3, p0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_CRL:I

    const/16 v3, 0xf

    iput v3, p0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_CERTSTORE:I

    const/16 v3, 0x10

    iput v3, p0, Landroid/content/pm/aasa/AASATokenParser;->ADP_SYSTEM_ETC:I

    const/16 v3, 0x11

    iput v3, p0, Landroid/content/pm/aasa/AASATokenParser;->ADP_EFS:I

    iput v1, p0, Landroid/content/pm/aasa/AASATokenParser;->AASA_CASE:I

    iput v2, p0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_CASE:I

    const/4 v2, 0x2

    iput v2, p0, Landroid/content/pm/aasa/AASATokenParser;->ADP_CASE:I

    const-string v2, "2.1.0"

    iput-object v2, p0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_VERSION:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mHasRestrictList:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/content/pm/aasa/AASATokenParser;->mRestrictList:Ljava/util/HashMap;

    const-string v2, "2.0"

    iput-object v2, p0, Landroid/content/pm/aasa/AASATokenParser;->ADP_VERSION:Ljava/lang/String;

    const-string v2, "000000"

    iput-object v2, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPPolicyVersion:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    iput-boolean v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mIsAppSystem:Z

    const-string v0, "/data/system/.aasa/SamsungAnalyticsLog"

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->SAMSUNG_ANALYTICS_LOG_FILE:Ljava/lang/String;

    const-string v0, "/data/system/.aasa/trustedTime"

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->SECURE_TIME_FILE:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mIsDebug:Z

    const-string v0, "AASATokenParser"

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mPkgHashCache:Ljava/util/ArrayList;

    return-void
.end method

.method private addRestrictInfo(Landroid/content/pm/aasa/RestrictList;Ljava/util/HashMap;)Landroid/content/pm/aasa/RestrictList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/aasa/RestrictList;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/aasa/RestrictList;"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xb

    if-nez p1, :cond_0

    const-string v2, "AASATokenParser"

    const-string/jumbo v3, "list is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/pm/aasa/RestrictList;

    const-string v3, "RESTRICT"

    invoke-direct {v2, v3, v0, v1}, Landroid/content/pm/aasa/RestrictList;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object p1, v2

    :cond_0
    const-string v2, "CONDITION"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/pm/aasa/RestrictList;->makeNode(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->setCurrentToHead()V

    invoke-virtual {p1, v3}, Landroid/content/pm/aasa/RestrictList;->addChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/aasa/RestrictList;->moveCurrentToNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    :goto_0
    const-string v3, "DATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "DATELIMIT"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v4

    const-string v5, "DATELIMIT"

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/aasa/RestrictList;->findNodeSet(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v5, "DATELIMIT"

    invoke-virtual {p1, v5, v3, v1}, Landroid/content/pm/aasa/RestrictList;->makeNode(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v6

    const-string v7, "DATE"

    invoke-virtual {p1, v6, v7}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/pm/aasa/RestrictList;->moveCurrentToNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    invoke-virtual {p1, v5}, Landroid/content/pm/aasa/RestrictList;->addChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v5

    invoke-virtual {p1, v5, v3}, Landroid/content/pm/aasa/RestrictList;->findNodeByTypeInChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, "DATELIMIT"

    invoke-virtual {p1, v5, v3, v1}, Landroid/content/pm/aasa/RestrictList;->makeNode(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v6

    const-string v7, "DATE"

    invoke-virtual {p1, v6, v7}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/pm/aasa/RestrictList;->moveCurrentToNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    invoke-virtual {p1, v5}, Landroid/content/pm/aasa/RestrictList;->addChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v5

    invoke-virtual {p1, v5, v3}, Landroid/content/pm/aasa/RestrictList;->findNodeByTypeInChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/pm/aasa/RestrictList;->moveCurrentToNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    :cond_4
    :goto_1
    const-string v3, "RESTRICT"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {p1, v3, v0, v1}, Landroid/content/pm/aasa/RestrictList;->makeNode(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/aasa/RestrictList;->addChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/aasa/RestrictList;->moveCurrentToNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    :goto_2
    const-string v0, "PKG"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Landroid/content/pm/aasa/RestrictList;->findNodeByTypeInChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v4, "PKG"

    invoke-virtual {p1, v4, v0, v1}, Landroid/content/pm/aasa/RestrictList;->makeNode(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/aasa/RestrictList;->addChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/aasa/RestrictList;->moveCurrentToNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    :goto_3
    return-object p1
.end method

.method private addRestrictInfoToXML(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/data/system/.aasa/RestrictPackages.xml"

    invoke-virtual {p0, v1}, Landroid/content/pm/aasa/AASATokenParser;->getRestrictInfoFromXML(Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :goto_1
    invoke-direct {p0, v0, p1}, Landroid/content/pm/aasa/AASATokenParser;->addRestrictInfo(Landroid/content/pm/aasa/RestrictList;Ljava/util/HashMap;)Landroid/content/pm/aasa/RestrictList;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/pm/aasa/AASATokenParser;->setRestrictInfoToXML(Landroid/content/pm/aasa/RestrictList;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_2

    :cond_0
    :goto_3
    return-void
.end method

.method private byteListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private calHashValueFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v0, 0x2000

    move v3, v0

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    move-object/from16 v5, p1

    invoke-direct {v0, v5, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string/jumbo v4, "showmethemoney"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    new-array v4, v3, [B

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    :goto_0
    cmp-long v11, v7, v9

    const/4 v12, 0x0

    if-gez v11, :cond_1

    sub-long v13, v9, v7

    move-object v15, v6

    int-to-long v5, v3

    cmp-long v5, v13, v5

    if-ltz v5, :cond_0

    int-to-long v5, v3

    goto :goto_1

    :cond_0
    sub-long v5, v9, v7

    :goto_1
    long-to-int v5, v5

    invoke-virtual {v2, v4, v12, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-virtual {v0, v4, v12, v5}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v11, v5

    add-long/2addr v7, v11

    move-object v6, v15

    move-object/from16 v5, p1

    goto :goto_0

    :cond_1
    move-object v15, v6

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v5

    new-array v5, v5, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    move-object v5, v6

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    nop

    :goto_2
    move v11, v12

    array-length v12, v5

    if-ge v11, v12, :cond_2

    aget-byte v12, v5, v11

    and-int/lit16 v12, v12, 0xff

    add-int/lit16 v12, v12, 0x100

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v12, v11, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v11

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v4, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_3
    :goto_3
    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, v0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :goto_4
    if-nez v1, :cond_4

    const-string v0, ""

    goto :goto_5

    :cond_4
    move-object v0, v1

    :goto_5
    return-object v0

    :goto_6
    nop

    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v5, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_5
    :goto_7
    throw v2
.end method

.method private checkADPTarget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const-string/jumbo v1, "model"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "product"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "sep"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ADP"

    const-string v3, "NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return v0
.end method

.method private checkAdvancedHash()Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    move-object v4, v2

    :try_start_1
    new-instance v0, Ljava/util/jar/JarFile;

    iget-object v5, v1, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    nop

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v6, v0

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    move-object v9, v0

    const/4 v0, 0x0

    :goto_1
    move v10, v0

    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, v10, 0x1

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/jar/JarEntry;

    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "META-INF/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    const-string v12, "SEC-INF/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v12, "token/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {v1, v4, v10, v3}, Landroid/content/pm/aasa/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/content/pm/aasa/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v12, 0xc350

    if-lt v0, v12, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/LinkedHashMap;

    move-object v9, v12

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    :cond_3
    goto :goto_1

    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    move-object v9, v0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    :cond_5
    nop

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v2

    :try_start_2
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_2
    const/4 v0, 0x0

    :goto_3
    move v12, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_7

    new-instance v0, Ljava/util/TreeMap;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-direct {v0, v13}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    move-object v14, v0

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v13, v15}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v16, v0

    :try_start_4
    const-string v0, "ISO-8859-1"
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v2, v16

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v17, v2

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {v11, v0, v2, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v17, v2

    const/4 v2, 0x0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v17, v16

    const/4 v2, 0x0

    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_6
    nop

    move-object v0, v14

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    add-int/lit8 v0, v12, 0x1

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/pm/aasa/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    const-string v0, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " advanced hash::"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    nop

    nop

    :try_start_8
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v8, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :goto_7
    nop

    :goto_8
    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_b

    :catch_6
    move-exception v0

    :try_start_9
    const-string v2, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ERROR: AASA_VerifyToken check hash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v4, :cond_8

    :try_start_a
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :cond_8
    :goto_9
    nop

    :goto_a
    const/4 v2, 0x0

    return-object v2

    :goto_b
    nop

    if-eqz v4, :cond_9

    :try_start_b
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v5, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_9
    :goto_c
    throw v2
.end method

.method private checkCertificateChaining([BLjava/security/cert/X509Certificate;)[B
    .locals 9

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    const-string/jumbo v4, "x.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->CA_CERT_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mCAKeyIndex:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".crt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    invoke-virtual {v4, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v5

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Look at system File. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/content/pm/aasa/AASATokenParser;->CA_CERT_SYSTEM_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/content/pm/aasa/AASATokenParser;->mCAKeyIndex:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".crt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    invoke-virtual {v4, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v3, v6

    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string v5, "AASATokenParser"

    const-string/jumbo v6, "signerCert is verificated!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    nop

    nop

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->ROOT_CERT:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v1, v5

    nop

    :try_start_5
    invoke-virtual {v4, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    move-object v2, v5

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string v5, "AASATokenParser"

    const-string v6, "CAcert is verificated!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    nop

    :try_start_6
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string v5, "AASATokenParser"

    const-string/jumbo v6, "rootCert is verificated!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    return-object p1

    :catch_1
    move-exception v5

    :try_start_7
    const-string v6, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: rootCert is not verified "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "11"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    return-object v6

    :catch_2
    move-exception v5

    const-string v6, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: CACert is not verified by RootCert "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "10"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    return-object v6

    :catch_3
    move-exception v2

    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR: SignerCert is not verified by CACert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "9"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    return-object v5

    :catch_4
    move-exception v2

    const-string v4, "AASATokenParser"

    const-string v5, "Token is NOT verificated in CheckCRL!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "12"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4
.end method

.method private checkIntegrityNew(I[B)[B
    .locals 11

    const/16 v0, 0x200

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, p2

    if-ge v3, v0, :cond_0

    const-string v3, "1"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    return-object v3

    :cond_0
    :try_start_0
    new-array v3, v0, [B

    const/4 v4, 0x0

    invoke-static {p2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, p2, v0}, Landroid/content/pm/aasa/AASATokenParser;->getTokenContents([BI)[B

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    iget-object v5, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    if-eqz v5, :cond_16

    iget-object v5, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto/16 :goto_23

    :cond_1
    const-string v5, "SHA256WithRSAEncryption"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    const-string/jumbo v6, "x.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_11

    :pswitch_0
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Landroid/content/pm/aasa/AASATokenParser;->EE_CERT_FILE:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Landroid/content/pm/aasa/AASATokenParser;->EE_CERT_FILE:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v8

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {p0, v8}, Landroid/content/pm/aasa/AASATokenParser;->findCertificateIndex([B)[B

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_a

    nop

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_2
    :goto_0
    nop

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    goto :goto_3

    :goto_2
    nop

    :goto_3
    return-object v8

    :cond_3
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_4

    :catch_1
    move-exception v8

    goto :goto_5

    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :goto_5
    goto :goto_7

    :cond_5
    :goto_6
    nop

    :goto_7
    return-object v4

    :pswitch_1
    const/4 v8, 0x0

    :try_start_3
    new-instance v9, Ljava/util/jar/JarFile;

    iget-object v10, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v1, v9

    nop

    iget-object v9, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v9

    move-object v8, v9

    if-eqz v8, :cond_6

    invoke-virtual {v1, v8}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    move-object v2, v9

    goto :goto_c

    :cond_6
    const-string v4, "AASATokenParser"

    const-string v9, "Token Cert does not exist!"

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    const-string v4, "3"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :try_start_4
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_8

    :catch_2
    move-exception v9

    goto :goto_9

    :goto_8
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :goto_9
    goto :goto_b

    :cond_7
    :goto_a
    nop

    :goto_b
    return-object v4

    :goto_c
    :try_start_5
    iget-object v9, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {p0, v9}, Landroid/content/pm/aasa/AASATokenParser;->findCertificateIndex([B)[B

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v9, :cond_9

    nop

    nop

    :try_start_6
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_d

    :catch_3
    move-exception v4

    goto :goto_e

    :goto_d
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_f

    :goto_e
    goto :goto_10

    :cond_8
    :goto_f
    nop

    :goto_10
    return-object v9

    :cond_9
    goto :goto_11

    :pswitch_2
    :try_start_7
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    nop

    :cond_a
    :goto_11
    invoke-virtual {v6, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    move-object v7, v8

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_c
    invoke-virtual {v5, v7}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    iget-object v9, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    array-length v9, v9

    invoke-virtual {v5, v8, v4, v9}, Ljava/security/Signature;->update([BII)V

    invoke-virtual {v5, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v4

    if-eqz v4, :cond_13

    packed-switch p1, :pswitch_data_1

    goto :goto_1a

    :pswitch_3
    iget-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {p0, v4, v7}, Landroid/content/pm/aasa/AASATokenParser;->checkCertificateChaining([BLjava/security/cert/X509Certificate;)[B

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_d

    :try_start_8
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_12

    :catch_4
    move-exception v8

    goto :goto_13

    :cond_d
    :goto_12
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_14

    :goto_13
    goto :goto_15

    :cond_e
    :goto_14
    nop

    :goto_15
    return-object v4

    :pswitch_4
    :try_start_9
    iget-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v1, :cond_f

    :try_start_a
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_16

    :catch_5
    move-exception v8

    goto :goto_17

    :cond_f
    :goto_16
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_18

    :goto_17
    goto :goto_19

    :cond_10
    :goto_18
    nop

    :goto_19
    return-object v4

    :goto_1a
    if-eqz v1, :cond_11

    :try_start_b
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_1b

    :catch_6
    move-exception v3

    goto :goto_1c

    :cond_11
    :goto_1b
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_1d

    :goto_1c
    nop

    goto :goto_1e

    :cond_12
    :goto_1d
    nop

    :goto_1e
    const-string v3, "AASATokenParser"

    const-string/jumbo v4, "this is not on the way to check integrity"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "14"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    return-object v3

    :cond_13
    :try_start_c
    const-string v4, "AASATokenParser"

    const-string v8, "Token is NOT verificated in checkIntegrity!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "12"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v1, :cond_14

    :try_start_d
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_1f

    :catch_7
    move-exception v8

    goto :goto_20

    :cond_14
    :goto_1f
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_21

    :goto_20
    goto :goto_22

    :cond_15
    :goto_21
    nop

    :goto_22
    return-object v4

    :cond_16
    :goto_23
    :try_start_e
    iget-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v1, :cond_17

    :try_start_f
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_24

    :catch_8
    move-exception v5

    goto :goto_25

    :cond_17
    :goto_24
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_26

    :goto_25
    goto :goto_27

    :cond_18
    :goto_26
    nop

    :goto_27
    return-object v4

    :catchall_0
    move-exception v3

    goto :goto_2c

    :catch_9
    move-exception v3

    :try_start_10
    const-string v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR: checkIntegrity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "13"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v1, :cond_19

    :try_start_11
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_28

    :catch_a
    move-exception v5

    goto :goto_29

    :cond_19
    :goto_28
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    goto :goto_2a

    :goto_29
    goto :goto_2b

    :cond_1a
    :goto_2a
    nop

    :goto_2b
    return-object v4

    :goto_2c
    nop

    if-eqz v1, :cond_1b

    :try_start_12
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_2d

    :catch_b
    move-exception v4

    goto :goto_2e

    :cond_1b
    :goto_2d
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    goto :goto_2f

    :goto_2e
    nop

    :cond_1c
    :goto_2f
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private checkRestrictIntegrity()Z
    .locals 3

    const-string v0, "/data/system/.aasa/RestrictPackages.xml"

    invoke-direct {p0, v0}, Landroid/content/pm/aasa/AASATokenParser;->calHashValueFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/system/.aasa/rTicket"

    invoke-direct {p0, v1}, Landroid/content/pm/aasa/AASATokenParser;->readFirstLineFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method private checkTokenTarget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    if-nez p2, :cond_0

    goto/16 :goto_d

    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ro.product.model"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "ALL"

    aget-object v7, v1, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_d

    array-length v6, v1

    if-ne v6, v7, :cond_6

    const-string v6, "ALL"

    aget-object v8, v2, v0

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    array-length v0, v2

    if-ne v0, v7, :cond_1

    const/4 v5, 0x1

    goto/16 :goto_c

    :cond_1
    const/4 v0, 0x1

    nop

    :goto_0
    move v5, v7

    array-length v6, v2

    if-ge v5, v6, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v5, v0

    goto/16 :goto_c

    :cond_4
    const-string v6, "ALL"

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    nop

    :goto_2
    array-length v6, v2

    if-ge v0, v6, :cond_15

    aget-object v6, v2, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    goto/16 :goto_c

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x1

    move v6, v7

    :goto_3
    array-length v8, v1

    if-ge v6, v8, :cond_8

    aget-object v8, v1, v6

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-ne v5, v7, :cond_15

    const-string v6, "ALL"

    aget-object v8, v2, v0

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    array-length v0, v2

    if-ne v0, v7, :cond_9

    const/4 v5, 0x1

    goto/16 :goto_c

    :cond_9
    nop

    :goto_5
    move v0, v7

    array-length v6, v2

    if-ge v0, v6, :cond_15

    aget-object v6, v2, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v5, 0x0

    goto/16 :goto_c

    :cond_a
    add-int/lit8 v7, v0, 0x1

    goto :goto_5

    :cond_b
    const-string v6, "ALL"

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const/4 v5, 0x0

    nop

    :goto_6
    array-length v6, v2

    if-ge v0, v6, :cond_15

    aget-object v6, v2, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v5, 0x1

    goto/16 :goto_c

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    const-string v6, "ALL"

    aget-object v8, v1, v0

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    move v6, v0

    :goto_7
    array-length v8, v1

    if-ge v6, v8, :cond_f

    aget-object v8, v1, v6

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v5, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    if-ne v5, v7, :cond_15

    const-string v6, "ALL"

    aget-object v8, v2, v0

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    array-length v6, v2

    if-ne v6, v7, :cond_11

    const/4 v5, 0x0

    nop

    :goto_9
    array-length v6, v1

    if-ge v0, v6, :cond_15

    aget-object v6, v1, v0

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v5, 0x1

    goto :goto_c

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_11
    nop

    :goto_a
    move v0, v7

    array-length v6, v2

    if-ge v0, v6, :cond_15

    aget-object v6, v2, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v5, 0x0

    goto :goto_c

    :cond_12
    add-int/lit8 v7, v0, 0x1

    goto :goto_a

    :cond_13
    const-string v6, "ALL"

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const/4 v5, 0x0

    nop

    :goto_b
    array-length v6, v2

    if-ge v0, v6, :cond_15

    aget-object v6, v2, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v5, 0x1

    goto :goto_c

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_15
    :goto_c
    return v5

    :cond_16
    :goto_d
    const-string v1, "AASATokenParser"

    const-string v2, "ERROR: checkTokenTarget input is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static clearASKSRestrictList()V
    .locals 1

    sget-object v0, Landroid/content/pm/aasa/AASATokenParser;->mASKSRestrictList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private convertMillsToString(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertStringToMills(Ljava/lang/String;)J
    .locals 6

    iget-boolean v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mIsDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AASATokenParser"

    const-string v1, "convertStringToMills : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v4

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1
.end method

.method private convertToHex([B)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-byte v4, p1, v3

    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    move v6, v5

    move v5, v2

    :goto_1
    if-ltz v6, :cond_0

    const/16 v7, 0x9

    if-gt v6, v7, :cond_0

    const/16 v7, 0x30

    add-int/2addr v7, v6

    goto :goto_2

    :cond_0
    const/16 v7, 0x61

    add-int/lit8 v8, v6, -0xa

    add-int/2addr v7, v8

    :goto_2
    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v6, v4, 0xf

    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x1

    if-lt v5, v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private copyASKSpolicyFromSystem()V
    .locals 26

    move-object/from16 v1, p0

    const-string v2, "/system/etc/"

    const-string v3, "/data/system/.aasa/AASApolicy/"

    const-string v4, "/data/system/.aasa/"

    const-string v5, "/data/system/.aasa/AASApolicy/AASAPolicyVersion.txt"

    const/4 v6, 0x1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    new-instance v0, Landroid/content/pm/aasa/AASATokenParser$1;

    invoke-direct {v0, v1}, Landroid/content/pm/aasa/AASATokenParser$1;-><init>(Landroid/content/pm/aasa/AASATokenParser;)V

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v0, "AASAASKS_copyXMLFromSystem_getCurrentZipVersion()"

    const-string/jumbo v10, "there are no target file in /system/etc/"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "AASAASKS_getCurrentZipVersion()"

    const-string v12, "ZipVersion File exists."

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->getCurrentPolicyVersion()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    :try_start_0
    const-string v0, "AASAASKS_copyXMLFromSystem"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "zipVersion : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    array-length v13, v9

    move v14, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v13, :cond_4

    aget-object v15, v9, v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/content/pm/aasa/AASATokenParser;->getASKSVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v11, :cond_2

    nop

    move-object/from16 v16, v4

    move/from16 v17, v6

    move-object/from16 v18, v7

    goto :goto_1

    :cond_2
    move-object/from16 v16, v4

    :try_start_1
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge v14, v4, :cond_3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v14, "AASAASKS_getCurrentZipVersion()"
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v17, v6

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v18, v7

    :try_start_3
    const-string/jumbo v7, "max : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", filename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v4

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v18, v7

    goto :goto_3

    :cond_3
    move/from16 v17, v6

    move-object/from16 v18, v7

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v16

    move/from16 v6, v17

    move-object/from16 v7, v18

    goto :goto_0

    :catch_1
    move-exception v0

    move/from16 v17, v6

    move-object/from16 v18, v7

    goto :goto_3

    :cond_4
    move-object/from16 v16, v4

    move/from16 v17, v6

    move-object/from16 v18, v7

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v14, :cond_5

    const-string/jumbo v0, "security.ASKS.policy_version"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v0, 0x0

    move v6, v0

    goto :goto_2

    :cond_5
    move/from16 v6, v17

    :goto_2
    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v17, v6

    move-object/from16 v18, v7

    :goto_3
    const/4 v6, 0x0

    const-string v4, "AASAASKS_getCurrentZipVersion()"

    const-string v7, "NumberFormatException"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    move-object/from16 v16, v4

    move/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v6, v17

    :goto_4
    if-nez v6, :cond_7

    const-string v0, "AASAASKS_copyXMLFromSystem"

    const-string v4, "current version is higher //No change//"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    array-length v4, v9

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v4, :cond_10

    aget-object v11, v9, v7

    new-instance v0, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    const-string v0, ""

    move-object v13, v3

    new-instance v0, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "AASAASKS_copyXMLFromSystem"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    const-string/jumbo v3, "there are already xml files in /.aasa/"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_8
    move-object/from16 v19, v3

    :goto_6
    const/16 v0, 0x800

    new-array v3, v0, [B

    const/4 v15, 0x0

    const/4 v0, 0x0

    move-object/from16 v17, v0

    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v15, v0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v20, v0

    const/4 v0, 0x0

    :goto_7
    move/from16 v21, v0

    :try_start_6
    array-length v0, v3
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v22, v4

    const/4 v4, 0x0

    :try_start_7
    invoke-virtual {v15, v3, v4, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move/from16 v23, v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_9

    move/from16 v24, v6

    move-object/from16 v4, v20

    move/from16 v0, v23

    const/4 v6, 0x0

    :try_start_8
    invoke-virtual {v4, v3, v6, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v20, v4

    move/from16 v4, v22

    move/from16 v6, v24

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v25, v3

    goto/16 :goto_14

    :catch_4
    move-exception v0

    goto/16 :goto_e

    :catch_5
    move-exception v0

    move-object/from16 v25, v3

    goto/16 :goto_12

    :cond_9
    move/from16 v24, v6

    move-object/from16 v4, v20

    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_9

    :goto_8
    nop

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    :goto_9
    nop

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :goto_a
    nop

    :goto_b
    move-object/from16 v25, v3

    goto/16 :goto_13

    :catch_7
    move-exception v0

    goto :goto_c

    :catch_8
    move-exception v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move/from16 v24, v6

    move-object/from16 v4, v20

    move-object/from16 v25, v3

    move-object v3, v0

    goto/16 :goto_15

    :catch_9
    move-exception v0

    move/from16 v22, v4

    :goto_c
    move/from16 v24, v6

    move-object/from16 v4, v20

    goto :goto_e

    :catch_a
    move-exception v0

    move/from16 v22, v4

    :goto_d
    move/from16 v24, v6

    move-object/from16 v4, v20

    move-object/from16 v25, v3

    goto :goto_12

    :catch_b
    move-exception v0

    move/from16 v22, v4

    move/from16 v24, v6

    move-object/from16 v25, v3

    move-object/from16 v4, v17

    goto :goto_12

    :catchall_2
    move-exception v0

    move/from16 v24, v6

    move-object/from16 v25, v3

    move-object/from16 v4, v17

    move-object v3, v0

    goto/16 :goto_15

    :catch_c
    move-exception v0

    move/from16 v22, v4

    move/from16 v24, v6

    move-object/from16 v4, v17

    :goto_e
    :try_start_a
    const-string v6, "AASAASKS_copyXMLFromSystem"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v25, v3

    :try_start_b
    const-string v3, "IOException"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v15, :cond_a

    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    goto :goto_f

    :catch_d
    move-exception v0

    goto :goto_10

    :cond_a
    :goto_f
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_11

    :goto_10
    nop

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    :cond_b
    :goto_11
    goto :goto_13

    :catchall_3
    move-exception v0

    move-object/from16 v25, v3

    move-object v3, v0

    goto :goto_15

    :catch_e
    move-exception v0

    move-object/from16 v25, v3

    move/from16 v22, v4

    move/from16 v24, v6

    move-object/from16 v4, v17

    :goto_12
    :try_start_d
    const-string v3, "AASAASKS_copyXMLFromSystem"

    const-string v6, "FileNotFoundException"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v15, :cond_c

    :try_start_e
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    :cond_c
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_11

    :goto_13
    const-string v0, "AASAASKS_copyXMLFromSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "there is xml file /system/etc/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catchall_4
    move-exception v0

    :goto_14
    move-object v3, v0

    :goto_15
    if-eqz v15, :cond_d

    :try_start_f
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    goto :goto_16

    :catch_f
    move-exception v0

    goto :goto_17

    :cond_d
    :goto_16
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_18

    :goto_17
    nop

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_e
    :goto_18
    throw v3

    :cond_f
    move-object/from16 v19, v3

    move/from16 v22, v4

    move/from16 v24, v6

    const-string v0, "AASAASKS_copyXMLFromSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "there is no xml file /system/etc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v19

    move/from16 v4, v22

    move/from16 v6, v24

    goto/16 :goto_5

    :cond_10
    move-object/from16 v19, v3

    move/from16 v24, v6

    const/4 v0, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    array-length v4, v9

    move v7, v0

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v4, :cond_1b

    aget-object v11, v9, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/pm/aasa/AASATokenParser;->getASKSVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_11

    goto/16 :goto_1c

    :cond_11
    :try_start_10
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v7, v0, :cond_12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    const-string v0, "ASKS_getCurrentZipVersion()"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "max : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", filename : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_10

    :cond_12
    goto :goto_1b

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_1b
    const-string v0, "ASKSM"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "ASKSM"

    invoke-virtual {v3, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    :cond_13
    const-string v0, "AASA"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "AASA"

    invoke-virtual {v3, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_14
    const-string v0, "ASKSB"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "ASKSB"

    invoke-virtual {v3, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_15
    const-string v0, "ASKSW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "ASKSW"

    invoke-virtual {v3, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_16
    const-string v0, "ASKSTS"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "ASKSTS"

    invoke-virtual {v3, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_17
    const-string v0, "ASKSK"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "ASKSK"

    invoke-virtual {v3, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_18
    const-string v0, "ASKSP"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "ASKSP"

    invoke-virtual {v3, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_19
    const-string v0, "ASKSC"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "ASKSC"

    invoke-virtual {v3, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_1a
    const-string v0, "ASKS_getCurrentZipVersion()"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1a

    :cond_1b
    :try_start_11
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v6, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v6, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    const-string v11, ""

    if-lez v7, :cond_1c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ZIP,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v12, "security.ASKS.policy_version"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_1c
    const-string v12, "ZIP,000000"

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v12, "security.ASKS.policy_version"

    const-string v13, "000000"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AASA,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "AASA"

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v11, v13

    if-nez v13, :cond_1d

    const-string v13, "000000"

    goto :goto_1e

    :cond_1d
    move-object v13, v11

    :goto_1e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ASKSB,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "ASKSB"

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v11, v13

    if-nez v13, :cond_1e

    const-string v13, "000000"

    goto :goto_1f

    :cond_1e
    move-object v13, v11

    :goto_1f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ASKSM,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "ASKSM"

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v11, v13

    if-nez v13, :cond_1f

    const-string v13, "000000"

    goto :goto_20

    :cond_1f
    move-object v13, v11

    :goto_20
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ASKSW,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "ASKSW"

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v11, v13

    if-nez v13, :cond_20

    const-string v13, "000000"

    goto :goto_21

    :cond_20
    move-object v13, v11

    :goto_21
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ASKSTS,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "ASKSTS"

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v11, v13

    if-nez v13, :cond_21

    const-string v13, "000000"

    goto :goto_22

    :cond_21
    move-object v13, v11

    :goto_22
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ASKSK,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "ASKSK"

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v11, v13

    if-nez v13, :cond_22

    const-string v13, "000000"

    goto :goto_23

    :cond_22
    move-object v13, v11

    :goto_23
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ASKSP,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "ASKSP"

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v11, v13

    if-nez v13, :cond_23

    const-string v13, "000000"

    goto :goto_24

    :cond_23
    move-object v13, v11

    :goto_24
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ASKSC,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "ASKSC"

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v11, v13

    if-nez v13, :cond_24

    const-string v13, "000000"

    goto :goto_25

    :cond_24
    move-object v13, v11

    :goto_25
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_26

    :catch_11
    move-exception v0

    const-string v4, "AASAASKS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method

.method private copyFileFromApk(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->getBasePathForEFS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p3}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    nop

    iget-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :goto_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    if-eqz v2, :cond_3

    const/high16 v5, 0x10000

    new-array v5, v5, [B

    :goto_2
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_4
    :goto_3
    nop

    :goto_4
    nop

    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :goto_5
    nop

    :goto_6
    nop

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :cond_5
    :goto_7
    goto :goto_c

    :catchall_0
    move-exception v4

    goto :goto_d

    :catch_3
    move-exception v4

    :try_start_4
    const-string v5, "AASATokenParser"

    const-string v6, "IOException occurrede"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :cond_6
    :goto_8
    nop

    :goto_9
    if-eqz v1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_a

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :cond_7
    :goto_a
    nop

    :goto_b
    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    :goto_c
    return-void

    :goto_d
    nop

    if-eqz v2, :cond_8

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_e

    :catch_6
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :cond_8
    :goto_e
    nop

    :goto_f
    if-eqz v1, :cond_9

    :try_start_9
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_10

    :catch_7
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    :cond_9
    :goto_10
    nop

    :goto_11
    if-eqz v3, :cond_a

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_12

    :catch_8
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_a
    :goto_12
    throw v4
.end method

.method private findCertificateIndex([B)[B
    .locals 11

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, ""
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "INDEX"

    invoke-direct {p0, v1, v5}, Landroid/content/pm/aasa/AASATokenParser;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    nop

    :try_start_2
    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "0.0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "AASATokenParser"

    const-string v6, "ENG Cert Index"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    const-string v7, "[^0-9]"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v8, v5, v7

    iput-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mCAKeyIndex:Ljava/lang/String;

    const-string v8, "AASATokenParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mTokenName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " SignerVersion : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ""

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "1"

    move-object v6, v8

    :cond_1
    const/4 v8, 0x1

    aget-object v9, v5, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v3, "AASATokenParser"

    const-string v7, "Signer Cert File is not matched with index!"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "5"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    return-object v3

    :cond_2
    const-string v9, "SIGNER"

    aget-object v8, v5, v8

    const/16 v10, 0xe

    invoke-virtual {p0, v10, v9, v8}, Landroid/content/pm/aasa/AASATokenParser;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    const-string v3, "AASATokenParser"

    const-string v7, "SIGNER is in CRL"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    return-object v3

    :cond_3
    const-string v8, "INTER"

    aget-object v7, v5, v7

    invoke-virtual {p0, v10, v8, v7}, Landroid/content/pm/aasa/AASATokenParser;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_4

    const-string v3, "AASATokenParser"

    const-string v7, "INTER is in CRL"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "7"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    return-object v3

    :cond_4
    :goto_0
    nop

    return-object v3

    :catch_0
    move-exception v3

    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "4"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v5

    :catch_1
    move-exception v0

    const-string v1, "AASATokenParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "8"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private getADPDataFromXML(ILjava/util/HashMap;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/aasa/ADPContainer;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    const-string v0, ""

    packed-switch v2, :pswitch_data_0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->getBasePathForEFS()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "adp_rules.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "/system/etc/adp_rules.xml"

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ADP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file does not exist - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    move-object v9, v0

    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9

    move-object v9, v10

    nop

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    invoke-interface {v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    :goto_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v12, v11

    const/4 v13, 0x2

    if-eq v11, v13, :cond_2

    if-eq v12, v7, :cond_2

    goto :goto_2

    :cond_2
    const/16 v11, 0x10

    if-ne v2, v11, :cond_3

    const-string/jumbo v11, "value"

    invoke-interface {v10, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mADPPolicyVersion:Ljava/lang/String;

    :cond_3
    new-instance v0, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;

    invoke-direct {v0}, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;-><init>()V

    move-object v11, v0

    new-instance v0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    invoke-direct {v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;-><init>()V

    :goto_3
    move-object v13, v0

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v12, v0

    if-eq v0, v7, :cond_1b

    const/4 v0, 0x3

    if-eq v12, v0, :cond_10

    const/4 v0, 0x4

    if-ne v12, v0, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    const-string v0, "HASHVALUE"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;->set_pkgName(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;

    goto/16 :goto_5

    :cond_5
    const-string/jumbo v0, "versionType"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_6

    :try_start_2
    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_versionType(I)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_4
    goto/16 :goto_5

    :catch_0
    move-exception v0

    :try_start_3
    const-string v15, "ADP"

    const-string v7, "ERROR: does not match versionType"

    invoke-static {v15, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const-string/jumbo v0, "pattern"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_pattern(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    goto/16 :goto_5

    :cond_7
    const-string v0, "hashCode"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_hashCode(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    goto/16 :goto_5

    :cond_8
    const-string/jumbo v0, "product"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_product(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    goto :goto_5

    :cond_9
    const-string/jumbo v0, "model"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_model(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    goto :goto_5

    :cond_a
    const-string v0, "carrier"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_carrier(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    goto :goto_5

    :cond_b
    const-string/jumbo v0, "sep"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_sep_ver(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    goto :goto_5

    :cond_c
    const-string v0, "format"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_format(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    goto :goto_5

    :cond_d
    const-string/jumbo v0, "wipe"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_wipe(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    goto :goto_5

    :cond_e
    const-string/jumbo v0, "rp"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_rp(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    :cond_f
    :goto_5
    goto/16 :goto_c

    :cond_10
    :goto_6
    const-string v0, "HASHVALUE"

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    invoke-virtual {v11}, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;->createADPContainer()Landroid/content/pm/aasa/ADPContainer;

    move-result-object v7

    move-object v0, v7

    if-nez v0, :cond_11

    const-string v7, "ADP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " does not make ADP object"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_11
    const/16 v7, 0x11

    if-ne v2, v7, :cond_16

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v15, v8}, Landroid/content/pm/aasa/AASATokenParser;->verifyADPToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v8, :cond_13

    const/4 v4, 0x1

    :try_start_4
    new-instance v15, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v16, v4

    :try_start_5
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->getBasePathForEFS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v15

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_12
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v4, v16

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v0

    move/from16 v4, v16

    goto/16 :goto_10

    :catch_1
    move-exception v0

    move/from16 v4, v16

    goto/16 :goto_e

    :catch_2
    move-exception v0

    move/from16 v4, v16

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    move/from16 v16, v4

    move-object v2, v0

    goto/16 :goto_10

    :catch_3
    move-exception v0

    move/from16 v16, v4

    goto/16 :goto_e

    :catch_4
    move-exception v0

    move/from16 v16, v4

    goto/16 :goto_f

    :cond_13
    :goto_8
    nop

    move/from16 v2, p1

    const/4 v8, 0x0

    goto :goto_7

    :cond_14
    :try_start_6
    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    goto :goto_9

    :cond_16
    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    invoke-virtual {v11}, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;->flush()V

    :goto_a
    goto :goto_c

    :cond_17
    const-string/jumbo v0, "pattern"

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v13}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->createADPPolicy()Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v2, "ADP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " does not make ADPPolicy object"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_18
    invoke-virtual {v11}, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;->get_ADPPolicy()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_19

    invoke-virtual {v11}, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;->set_ADPPolicy()Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;

    :cond_19
    invoke-virtual {v11, v0}, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;->add_ADPPolicy(Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;

    invoke-virtual {v13}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->flush()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_b
    nop

    :cond_1a
    :goto_c
    move-object v0, v13

    move/from16 v2, p1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_1b
    nop

    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    :goto_d
    goto :goto_12

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_10

    :catch_6
    move-exception v0

    :goto_e
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v4, 0x0

    nop

    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_d

    :catch_7
    move-exception v0

    :goto_f
    :try_start_a
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/4 v4, 0x0

    nop

    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_d

    :goto_10
    nop

    nop

    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_11

    :catch_8
    move-exception v0

    move-object v7, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    :goto_11
    throw v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    return v2

    :cond_1c
    :goto_12
    return v4

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getADPHashCode()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    return-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method private getASKSDataFromXML(ILjava/util/HashMap;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, ""

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    return v4

    :pswitch_0
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSK.xml"

    const-string v6, "STORE"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "DUMMY"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSC.xml"

    const-string v6, "CERT"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "NUM"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSTS.xml"

    const-string v6, "STORE"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "DUMMY"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_installedlist.xml"

    const-string v6, "PACKAGE"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "DUMMY"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSP.xml"

    const-string v6, "HASHVALUE"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "UID"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_5
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSB.xml"

    const-string v6, "HASHVALUE"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "HASH"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_6
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSW.xml"

    const-string v6, "HASHVALUE"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "HASH"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSM.xml"

    const-string v6, "SETMODE"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "MODE"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_0
    move-object v6, v0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v5, v8}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    return v4

    :cond_2
    const/4 v0, 0x0

    move-object v9, v0

    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v9, v10

    nop

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    invoke-interface {v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const/4 v11, 0x1

    const-string v12, ""

    const/4 v13, 0x0

    const-string v14, ""

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    :goto_1
    if-eq v15, v5, :cond_c

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    packed-switch v15, :pswitch_data_2

    move-object/from16 v5, p0

    move v0, v8

    move-object/from16 v8, v17

    goto/16 :goto_6

    :pswitch_7
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    move-object/from16 v8, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    if-ne v5, v1, :cond_3

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "MODE"

    invoke-virtual {v2, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_3
    invoke-virtual {v2, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :pswitch_8
    move-object/from16 v8, v17

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne v1, v5, :cond_4

    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_5

    invoke-interface {v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v12, v16

    :cond_5
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, p0

    move-object v13, v0

    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne v1, v5, :cond_9

    if-eqz v13, :cond_8

    const-string/jumbo v0, "set"

    const/4 v5, 0x0

    invoke-interface {v10, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v12, :cond_7

    move-object v12, v0

    goto :goto_4

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    :goto_4
    nop

    :cond_8
    :goto_5
    move-object/from16 v5, p0

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    if-eqz v13, :cond_b

    invoke-interface {v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "model"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "product"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "sep"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_a
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v5, p0

    :try_start_2
    invoke-direct {v5, v8, v1}, Landroid/content/pm/aasa/AASATokenParser;->checkADPTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v11, v1

    goto :goto_6

    :cond_b
    move-object/from16 v5, p0

    :goto_6
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v15, v1

    nop

    move v8, v0

    const/4 v0, 0x0

    move/from16 v1, p1

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_c
    move-object/from16 v5, p0

    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    return v4

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v5, p0

    :goto_7
    move-object v1, v0

    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    :goto_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v4

    :catch_4
    move-exception v0

    move-object/from16 v5, p0

    :goto_9
    move-object v1, v0

    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    :goto_a
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return v4

    :catch_6
    move-exception v0

    move-object/from16 v5, p0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static getASKSMode()I
    .locals 1

    sget v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    return v0
.end method

.method public static getASKSRestrictList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/content/pm/aasa/AASATokenParser;->mASKSRestrictList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private getASKSVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    return-object v4

    :cond_1
    move-object v1, v4

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v1, v5

    nop

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v6, ""

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x5

    :goto_0
    if-eq v7, v2, :cond_5

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    if-eq v7, v10, :cond_2

    goto :goto_3

    :cond_2
    const-string v10, "VERSION"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    nop

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :goto_1
    nop

    :goto_2
    return-object v2

    :cond_3
    :goto_3
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v7, v10

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_5
    :goto_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catchall_0
    move-exception v2

    goto :goto_7

    :catch_1
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_6

    :goto_5
    goto :goto_6

    :catch_3
    move-exception v2

    :try_start_7
    const-string v3, "AASAASKS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skip xml parsing for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    nop

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :goto_6
    return-object v4

    :goto_7
    nop

    nop

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    :catch_4
    move-exception v3

    nop

    :goto_8
    throw v2

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v4
.end method

.method private getBasePathForEFS()Ljava/lang/String;
    .locals 2

    const-string v0, "/efs/sec_efs/"

    const-string v1, "/efs/adp_token/"

    return-object v1
.end method

.method private getCurrentPolicyVersion()Ljava/lang/String;
    .locals 9

    const-string v0, "/data/system/.aasa/AASApolicy/AASAPolicyVersion.txt"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    nop

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    if-eqz v5, :cond_0

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    aget-object v7, v5, v8

    move-object v3, v7

    :cond_0
    nop

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    return-object v3

    :cond_1
    return-object v4

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return-object v4
.end method

.method private getTokenContents([BI)[B
    .locals 8

    const/4 v0, 0x7

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v1, p2

    :goto_0
    aget-byte v4, p1, v1

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    aget-byte v4, p1, v1

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    if-ne v2, v1, :cond_2

    const-string v1, "2"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    :cond_2
    new-array v1, v3, [B

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    move v5, v4

    :try_start_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    goto :goto_2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_2
    new-array v6, v5, [B

    iput-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    add-int v6, p2, v3

    const-string v7, ","

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-static {p1, v6, v7, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    return-object v4
.end method

.method private getTrustedFile()[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x3

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/data/system/.aasa/trustedTime"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    nop

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    nop

    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    if-eqz v5, :cond_1

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    if-eqz v0, :cond_0

    array-length v5, v0

    if-ne v5, v4, :cond_0

    nop

    :cond_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_2
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_3

    array-length v5, v0

    if-ne v5, v4, :cond_3

    return-object v0

    :cond_3
    return-object v2

    :goto_2
    nop

    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    nop

    :cond_4
    :goto_3
    throw v2
.end method

.method private getWipeValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getWipe()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasTrustedTime()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/trustedTime"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initADP()V
    .locals 14

    const-string v0, "ADP"

    const-string v1, "initADP"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0x10

    invoke-direct {p0, v3, v2}, Landroid/content/pm/aasa/AASATokenParser;->getADPDataFromXML(ILjava/util/HashMap;)Z

    const/16 v3, 0x11

    invoke-direct {p0, v3, v1}, Landroid/content/pm/aasa/AASATokenParser;->getADPDataFromXML(ILjava/util/HashMap;)Z

    move-result v4

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    sget-object v6, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v9}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v11}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    sget-object v9, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    goto :goto_0

    :cond_1
    sget-object v8, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v9}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v10}, Landroid/content/pm/aasa/ADPOperation;->removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/pm/aasa/ADPContainer;->setADPPolicy(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v9}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v10}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    invoke-static {v9, v12}, Landroid/content/pm/aasa/ADPOperation;->checkContainsList(Ljava/util/ArrayList;Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)Z

    move-result v13

    if-nez v13, :cond_3

    const/4 v0, 0x1

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    :cond_3
    goto :goto_4

    :cond_4
    goto :goto_5

    :cond_5
    const/4 v0, 0x1

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    :goto_5
    goto :goto_3

    :cond_6
    new-instance v8, Ljava/io/File;

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->getBasePathForEFS()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v9, Landroid/content/pm/aasa/AASATokenParser$2;

    invoke-direct {v9, p0}, Landroid/content/pm/aasa/AASATokenParser$2;-><init>(Landroid/content/pm/aasa/AASATokenParser;)V

    invoke-virtual {v8, v9}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_7

    aget-object v12, v9, v11

    sget-object v13, Landroid/content/pm/aasa/AASATokenParser;->mADPTokenFileSet:Ljava/util/Set;

    invoke-interface {v13, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_7
    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->sweepDanglingADPTokenFiles()V

    goto :goto_7

    :cond_8
    const-string v9, "ADP"

    const-string v10, "does not exist EFS base path"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    if-nez v0, :cond_9

    if-eqz v4, :cond_a

    :cond_9
    const-string v9, "ADP"

    const-string/jumbo v10, "need to update efs list"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, v5}, Landroid/content/pm/aasa/AASATokenParser;->setADPDataToXml(ILjava/util/HashMap;)V

    :cond_a
    const-string/jumbo v3, "security.ADP.version"

    const-string v9, "2.0"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "security.ADP.policy_version"

    iget-object v9, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPPolicyVersion:Ljava/lang/String;

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initASKS()V
    .locals 6

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->getCurrentPolicyVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "security.ASKS.time_value"

    const-string v2, "00000000"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "security.ASKS.policy_version"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "security.ASKS.version"

    const-string v2, "2.1.0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->copyASKSpolicyFromSystem()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroid/content/pm/aasa/AASATokenParser;->getASKSDataFromXML(ILjava/util/HashMap;)Z

    nop

    const-string v2, "MODE"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x107090e

    if-eqz v2, :cond_2

    const-string v2, "MODE"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/content/pm/aasa/AASATokenParser;->isASKSMode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "AASA"

    const-string v5, "Need To check Mode File-1"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput v3, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    :cond_1
    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v2

    if-nez v2, :cond_3

    sput v3, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    const-string v2, "AASA"

    const-string v3, "Need To check Mode File-2"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const v2, 0x3050f0e

    sput v2, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    const-string v2, "AASA"

    const-string v3, "Need To check Mode File-3"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isADPtarget()Z
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v1}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    invoke-virtual {v1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getProduct()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getModel()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getCarrier()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getSepVer()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getProduct()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getProduct()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_a

    aget-object v5, v3, v2

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getModel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getModel()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_a

    aget-object v5, v3, v2

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getCarrier()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "ro.csc.sales_code"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getCarrier()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_2
    if-ge v2, v5, :cond_7

    aget-object v6, v4, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v0, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getSepVer()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getSepVer()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_3
    if-ge v2, v4, :cond_a

    aget-object v5, v3, v2

    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v6, v7, :cond_9

    const/4 v0, 0x1

    :cond_9
    goto :goto_4

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    const-string v2, "ADP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTarget result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isASKSToken(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    nop

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SEC-INF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "buildinfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object p1, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEC-INF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "buildConfirm.crt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertName:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const-string v5, "META-INF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "SEC-INF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "buildinfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object p1, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "META-INF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "SEC-INF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "buildConfirm.crt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    goto/16 :goto_0

    :cond_2
    :goto_1
    nop

    :goto_2
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "AASATokenParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ERROR: AASA_ASKSIsToken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    return v0

    :goto_4
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    :cond_4
    throw v2
.end method

.method private isExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private isInteger(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    const/4 v2, 0x0

    const/16 v3, 0x1000

    new-array v4, v3, [B

    if-eqz v0, :cond_2

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v2, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    invoke-virtual {p3, v4, v5, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    nop

    :cond_3
    return-object v1

    :catch_0
    move-exception v2

    const-string v3, "AASAASKS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TinyAASA + No RUN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v2

    const-string v3, "AASAASKS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TinyAASA + No IO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_3
    move-exception v3

    :cond_4
    :goto_1
    nop

    :cond_5
    :goto_2
    return-object v1
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)[Ljava/security/cert/Certificate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/jar/JarEntry;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)[",
            "Ljava/security/cert/Certificate;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    const/4 v2, 0x0

    const/16 v3, 0x400

    new-array v4, v3, [B

    if-eqz v1, :cond_2

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v2, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    nop

    :goto_0
    if-ge v5, v2, :cond_0

    aget-byte v6, v4, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    const-string v3, "AASATokenParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No RUN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v2

    const-string v3, "AASATokenParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No IO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_3
    move-exception v3

    :cond_3
    :goto_1
    nop

    :cond_4
    :goto_2
    return-object v0
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_1

    :goto_0
    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "AASATokenParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No RUN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v2

    const-string v3, "AASATokenParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No IO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_3
    move-exception v3

    :cond_2
    :goto_1
    nop

    :cond_3
    :goto_2
    return-object v0
.end method

.method private parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "NONE"

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/content/pm/aasa/AASATokenParser;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/aasa/AASATokenParser;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method private parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-eq v3, v1, :cond_1

    const-string v1, "AASATokenParser"

    const-string/jumbo v3, "this is an exceptional case"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_4

    const-string v3, "PERMISSION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-eq v3, v1, :cond_3

    const-string v1, "AASATokenParser"

    const-string/jumbo v3, "this is an exceptional case for permission"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method private readFirstLineFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_2
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :goto_1
    if-nez v0, :cond_1

    const-string v3, ""

    goto :goto_2

    :cond_1
    move-object v3, v0

    :goto_2
    return-object v3

    :goto_3
    nop

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_2
    :goto_4
    throw v3
.end method

.method private removeRestrictFile()V
    .locals 7

    const-string v0, "/data/system/.aasa/"

    const-string v1, "RestrictPackages.xml"

    const-string/jumbo v2, "rTicket"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setADPDataToXml(ILjava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/aasa/ADPContainer;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    const/16 v1, 0x11

    move/from16 v2, p1

    if-eq v2, v1, :cond_0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->getBasePathForEFS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "adp_rules.xml"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_11

    const/4 v3, 0x0

    monitor-enter p2

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v3, v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    new-instance v0, Lcom/android/internal/util/JournaledFile;

    invoke-direct {v0, v4, v5}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object v8, v0

    const/4 v9, 0x1

    :try_start_3
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v7, v10

    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v10

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v10, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v11, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v10, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v11, "ADP"

    invoke-interface {v10, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/aasa/ADPContainer;

    const-string v9, "HASHVALUE"

    invoke-interface {v10, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "value"

    invoke-interface {v10, v0, v9, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v14}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    move-object/from16 v16, v15

    const-string/jumbo v0, "pattern"

    const/4 v2, 0x0

    invoke-interface {v10, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v17, v3

    move-object/from16 v2, v16

    :try_start_4
    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v18, v4

    const/4 v4, 0x0

    :try_start_5
    invoke-interface {v10, v4, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "hashCode"

    invoke-interface {v10, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v4, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "hashCode"

    invoke-interface {v10, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "versionType"

    invoke-interface {v10, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v10, v4, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "versionType"

    invoke-interface {v10, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "format"

    invoke-interface {v10, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v4, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "format"

    invoke-interface {v10, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getWipe()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "wipe"

    const/4 v3, 0x0

    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getWipe()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "wipe"

    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getRP()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "rp"

    const/4 v3, 0x0

    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getRP()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "rp"

    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getModel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "model"

    const/4 v3, 0x0

    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "model"

    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getProduct()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "product"

    const/4 v3, 0x0

    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getProduct()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "product"

    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getCarrier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "carrier"

    const/4 v3, 0x0

    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getCarrier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "carrier"

    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getSepVer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "sep"

    const/4 v3, 0x0

    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    invoke-virtual {v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getSepVer()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "sep"

    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    const-string/jumbo v0, "pattern"

    const/4 v3, 0x0

    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    const/4 v0, 0x0

    move/from16 v2, p1

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v18, v4

    move-object v2, v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_9

    :cond_a
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    const-string v0, "HASHVALUE"

    const/4 v2, 0x0

    invoke-interface {v10, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    const/4 v0, 0x0

    move/from16 v2, p1

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_b
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    const-string v0, "ADP"

    const/4 v2, 0x0

    invoke-interface {v10, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    nop

    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :goto_5
    nop

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :goto_6
    nop

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :cond_c
    :goto_7
    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object v2, v0

    goto :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :goto_8
    :try_start_7
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v8, :cond_d

    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    :cond_d
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :goto_9
    :try_start_9
    const-string v2, "ADP"

    const-string v3, "Failed to write state, restoring backup."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v8, :cond_e

    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    :cond_e
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_7

    :goto_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v2, v0

    :goto_b
    if-eqz v8, :cond_f

    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_c

    :catch_8
    move-exception v0

    goto :goto_d

    :cond_f
    :goto_c
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_e

    :goto_d
    nop

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_10
    :goto_e
    throw v2

    :catchall_3
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_f

    :catchall_4
    move-exception v0

    :goto_f
    :try_start_c
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :cond_11
    :goto_10
    return-void
.end method

.method public static setASKSMode(I)V
    .locals 0

    sput p0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    return-void
.end method

.method private setIntegrityValueToFile(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "/data/system/.aasa/RestrictPackages.xml"

    invoke-direct {p0, v0}, Landroid/content/pm/aasa/AASATokenParser;->calHashValueFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    move-object v2, v3

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "AASATokenParser"

    const-string v5, "fail to set integrity value"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Landroid/content/pm/aasa/AASATokenParser;->readFirstLineFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_2
    throw v3
.end method

.method private setTrustTimeByToken(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/content/pm/aasa/AASATokenParser;->convertStringToMills(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/aasa/AASATokenParser;->setTrustedFile(IJJ)V

    return-void
.end method

.method private setTrustedFile(IJJ)V
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "security.ASKS.time_value"

    invoke-direct {p0, p2, p3}, Landroid/content/pm/aasa/AASATokenParser;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    const-string v2, "/data/system/.aasa/trustedTime"

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_1
    iget-boolean v2, p0, Landroid/content/pm/aasa/AASATokenParser;->mIsDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "AASATokenParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTrustedTime() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const-string/jumbo v1, "security.ASKS.time_value"

    const-string v2, "00000000"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "00000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "AASATokenParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getElapsedToday : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/content/pm/aasa/AASATokenParser;->getTrustedToday()Ljava/lang/String;

    :goto_3
    return-void

    :goto_4
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_4
    throw v1
.end method

.method private sweepDanglingADPTokenFiles()V
    .locals 8

    sget-object v0, Landroid/content/pm/aasa/AASATokenParser;->mADPTokenFileSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const-string v3, "ADP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token file info length is not 2 - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    sget-object v4, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v6, v2, v5

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v4}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    invoke-virtual {v5}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    :cond_1
    goto :goto_1

    :cond_2
    if-nez v3, :cond_4

    const-string v4, "ADP"

    const-string/jumbo v5, "token file should be removed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->getBasePathForEFS()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_4
    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private toChars([B)[C
    .locals 12

    move-object v0, p1

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    new-array v3, v2, [C

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-byte v5, v0, v4

    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    mul-int/lit8 v7, v4, 0x2

    const/16 v8, 0x30

    const/16 v9, 0x61

    const/16 v10, 0xa

    if-lt v6, v10, :cond_0

    add-int v11, v9, v6

    sub-int/2addr v11, v10

    goto :goto_1

    :cond_0
    add-int v11, v8, v6

    :goto_1
    int-to-char v11, v11

    aput-char v11, v3, v7

    and-int/lit8 v6, v5, 0xf

    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v7, v7, 0x1

    if-lt v6, v10, :cond_1

    add-int/2addr v9, v6

    sub-int/2addr v9, v10

    goto :goto_2

    :cond_1
    add-int v9, v8, v6

    :goto_2
    int-to-char v8, v9

    aput-char v8, v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private verifyAASAToken(Ljava/lang/String;Ljava/lang/String;ZII)I
    .locals 54
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    const-string v0, "AASATokenParser"

    const-string v6, " AASA_VerifyToken START"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v9

    :try_start_0
    new-instance v0, Ljava/util/jar/JarFile;

    iget-object v11, v1, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    if-nez p3, :cond_0

    iget-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    const-string v12, "/data/"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    :cond_0
    nop

    iget-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v12

    long-to-int v0, v12

    new-array v0, v0, [B

    invoke-direct {v1, v7, v8, v0}, Landroid/content/pm/aasa/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v12

    move-object v10, v12

    invoke-direct {v1, v4, v0}, Landroid/content/pm/aasa/AASATokenParser;->checkIntegrityNew(I[B)[B

    move-result-object v12

    iput-object v12, v1, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    :goto_0
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_28

    :catch_0
    move-exception v0

    :try_start_1
    const-string v12, "AASATokenParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " ERROR: AASA_VerifyToken "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    if-nez v0, :cond_3

    const-string v0, "AASATokenParser"

    const-string v9, " ERROR: plz check certification in the device - Fail to check integrity"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x66

    return v0

    :cond_3
    iget-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    array-length v0, v0

    const/16 v12, 0x70

    const/4 v14, 0x1

    if-eq v0, v14, :cond_40

    iget-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    array-length v0, v0

    const/4 v15, 0x2

    if-ne v0, v15, :cond_4

    move/from16 v40, v6

    goto/16 :goto_26

    :cond_4
    if-nez v10, :cond_5

    const-string v0, "AASATokenParser"

    const-string v9, " ERROR: plz check certification in the device - Fail to read Token"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    move-object v12, v0

    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object/from16 v16, v0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v13, v1, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v0, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v13, v16

    invoke-interface {v13, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1f

    :try_start_3
    const-string v0, "MODE"

    invoke-direct {v1, v13, v0}, Landroid/content/pm/aasa/AASATokenParser;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    move-object/from16 v15, v17

    invoke-direct {v1, v15}, Landroid/content/pm/aasa/AASATokenParser;->isInteger(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x6f

    return v0

    :cond_6
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1f

    move-object/from16 v18, v0

    packed-switch v16, :pswitch_data_0

    move/from16 v40, v6

    move-object/from16 v41, v7

    move-object/from16 v43, v8

    move-object/from16 v46, v15

    move-object/from16 v44, v18

    const/16 v0, 0x83

    return v0

    :pswitch_0
    if-ne v4, v14, :cond_7

    :try_start_4
    const-string v19, "PACKAGE"

    const-string v20, "DIGEST"

    const-string v21, "CREATE"

    const-string v22, "MODELS"

    const-string v23, "CARRIERS"

    const-string v24, "EXPIRED"

    const-string v25, "RESTRICT"

    const-string v26, "CONDITION"

    const-string v27, "DATELIMIT"

    const-string v28, "CROSSDOWN"

    const-string v29, "ADP"

    const-string/jumbo v30, "pattern"

    const-string/jumbo v31, "versionType"

    const-string v32, "hashCode"

    const-string v33, "format"

    const-string/jumbo v34, "wipe"

    const-string/jumbo v35, "rp"

    const-string/jumbo v36, "product"

    const-string v37, "carrier"

    const-string/jumbo v38, "model"

    const-string/jumbo v39, "sep"

    filled-new-array/range {v19 .. v39}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v9, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :catch_1
    move-exception v0

    move/from16 v40, v6

    :goto_2
    move-object/from16 v41, v7

    :goto_3
    move-object/from16 v43, v8

    goto/16 :goto_25

    :catch_2
    move-exception v0

    move/from16 v40, v6

    :goto_4
    move-object/from16 v41, v7

    :goto_5
    move-object/from16 v43, v8

    move-object/from16 v42, v13

    goto/16 :goto_23

    :catch_3
    move-exception v0

    move/from16 v40, v6

    :goto_6
    move-object/from16 v41, v7

    :goto_7
    move-object/from16 v43, v8

    move-object/from16 v42, v13

    goto/16 :goto_24

    :cond_7
    move-object/from16 v9, v18

    const-string v0, "PACKAGE"

    const-string v14, "CERT"

    filled-new-array {v0, v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mIsAppSystem:Z

    if-nez v0, :cond_8

    const-string v0, "ADVANCEDDIGEST"

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "MODELS"

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "CARRIERS"

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_8
    :goto_8
    move/from16 v40, v6

    move-object/from16 v41, v7

    goto/16 :goto_9

    :pswitch_1
    move-object/from16 v9, v18

    const/4 v0, 0x1

    if-ne v4, v0, :cond_a

    if-eqz v6, :cond_9

    :try_start_5
    const-string v0, "AASATokenParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7

    move/from16 v40, v6

    :try_start_6
    const-string v6, "Violate security policy of MSTG. Package("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") is blocked. "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Landroid/content/pm/aasa/AASATokenParser;->writeBlockApkList(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4

    const/16 v0, 0xf

    return v0

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    move/from16 v40, v6

    move-object/from16 v41, v7

    move-object/from16 v43, v8

    goto/16 :goto_25

    :catch_8
    move-exception v0

    move/from16 v40, v6

    move-object/from16 v41, v7

    move-object/from16 v43, v8

    move-object/from16 v42, v13

    goto/16 :goto_23

    :catch_9
    move-exception v0

    move/from16 v40, v6

    move-object/from16 v41, v7

    move-object/from16 v43, v8

    move-object/from16 v42, v13

    goto/16 :goto_24

    :cond_9
    move/from16 v40, v6

    :try_start_7
    const-string v0, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Token 0:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PACKAGE"

    const-string v6, "CREATE"

    const-string v14, "ADVANCEDDIGEST"
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_a

    move-object/from16 v41, v7

    :try_start_8
    const-string v7, "DIGEST"

    filled-new-array {v0, v6, v14, v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_d

    goto :goto_9

    :catch_a
    move-exception v0

    move-object/from16 v41, v7

    move-object/from16 v43, v8

    goto/16 :goto_25

    :catch_b
    move-exception v0

    move-object/from16 v41, v7

    move-object/from16 v43, v8

    move-object/from16 v42, v13

    goto/16 :goto_23

    :catch_c
    move-exception v0

    move-object/from16 v41, v7

    move-object/from16 v43, v8

    move-object/from16 v42, v13

    goto/16 :goto_24

    :cond_a
    move/from16 v40, v6

    move-object/from16 v41, v7

    :try_start_9
    const-string v0, "PACKAGE"

    const-string v6, "CERT"

    const-string v7, "MODELS"

    const-string v14, "CARRIERS"

    filled-new-array {v0, v6, v7, v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mIsAppSystem:Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_19

    if-nez v0, :cond_b

    :try_start_a
    const-string v0, "ADVANCEDDIGEST"

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_9

    :catch_d
    move-exception v0

    goto/16 :goto_3

    :catch_e
    move-exception v0

    goto/16 :goto_5

    :catch_f
    move-exception v0

    goto/16 :goto_7

    :cond_b
    :goto_9
    :try_start_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_19

    if-eqz v7, :cond_c

    :try_start_c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v14, "NONE"

    invoke-virtual {v6, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_a

    :cond_c
    :try_start_d
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    move-object v12, v0

    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_19

    move-object v7, v0

    :try_start_e
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v13, v1, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v0, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v13, 0x0

    invoke-interface {v7, v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v7, v6}, Landroid/content/pm/aasa/AASATokenParser;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_18
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_19

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v42, v7

    const/4 v7, 0x0

    move-object/from16 v43, v8

    :try_start_f
    const-string/jumbo v8, "security.ASKS.time_value"

    move-object/from16 v44, v9

    const-string v9, "00000000"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    const-string v9, "00000000"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->getTrustedToday()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    :cond_e
    const-string v9, "PACKAGE"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "NONE"

    const-string v11, "PACKAGE"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "PACKAGE"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_f

    const-string v9, "AASATokenParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v45, v14

    const-string v14, "OK:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_f
    move/from16 v45, v14

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_10
    move/from16 v45, v14

    add-int/lit8 v0, v0, -0x1

    :goto_b
    const-string v9, "CERT"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    const-string v9, "NONE"

    const-string v11, "CERT"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    move v9, v0

    const/4 v0, 0x0

    :goto_c
    array-length v11, v10

    if-ge v0, v11, :cond_12

    const-string v11, "CERT"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-instance v14, Ljava/lang/String;

    move-object/from16 v46, v15

    aget-object v15, v10, v0

    invoke-virtual {v15}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    invoke-interface {v15}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v15

    invoke-direct {v1, v15}, Landroid/content/pm/aasa/AASATokenParser;->toChars([B)[C

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_11

    const-string v11, "AASATokenParser"

    const-string v14, "OK:CERT"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_11
    add-int/lit8 v9, v9, -0x1

    :goto_d
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v15, v46

    goto :goto_c

    :cond_12
    move-object/from16 v46, v15

    move v0, v9

    goto :goto_e

    :cond_13
    move-object/from16 v46, v15

    if-nez v4, :cond_14

    add-int/lit8 v0, v0, -0x1

    :cond_14
    :goto_e
    const-string v9, "DIGEST"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    const-string v9, "NONE"

    const-string v11, "DIGEST"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    const/4 v9, 0x1

    if-ne v4, v9, :cond_17

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->checkAdvancedHash()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15

    const-string v11, "DIGEST"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    const-string v11, "AASATokenParser"

    const-string v14, "OK:AdvancedHASH"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_15
    const-string v11, "AASATokenParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NOT OK:AdvancedHASH : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " comp : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "DIGEST"

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    :goto_f
    goto :goto_10

    :cond_16
    const/4 v9, 0x1

    if-ne v4, v9, :cond_17

    add-int/lit8 v0, v0, -0x1

    :cond_17
    :goto_10
    const-string v9, "ADVANCEDDIGEST"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    const-string v9, "NONE"

    const-string v11, "ADVANCEDDIGEST"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    if-nez v4, :cond_1a

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->checkAdvancedHash()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_18

    const-string v11, "ADVANCEDDIGEST"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    const-string v11, "AASATokenParser"

    const-string v14, "OK:AdvancedHASH"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_18
    const-string v11, "AASATokenParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NOT OK:AdvancedHASH : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " comp : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "ADVANCEDDIGEST"

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    :goto_11
    goto :goto_12

    :cond_19
    if-nez v4, :cond_1a

    add-int/lit8 v0, v0, -0x1

    :cond_1a
    :goto_12
    const-string v9, "CROSSDOWN"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    const-string v9, "NONE"

    const-string v11, "CROSSDOWN"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    const-string v9, "CROSSDOWN"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_1b

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_1b
    const-string/jumbo v14, "ro.build.2ndbrand"

    const-string v15, "false"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v11, :cond_1c

    const-string v15, "AASATokenParser"

    move-object/from16 v47, v9

    const-string v9, "OK:CROSSDOWN"

    invoke-static {v15, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_1c
    move-object/from16 v47, v9

    const-string/jumbo v9, "true"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    and-int/lit8 v9, v11, 0x2

    if-nez v9, :cond_1d

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_1d
    const-string v9, "false"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    and-int/lit8 v9, v11, 0x1

    if-nez v9, :cond_1e

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_1e
    const-string v9, "AASATokenParser"

    const-string v15, "OK:CROSSDOWN"

    invoke-static {v9, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    goto :goto_14

    :cond_1f
    const-string/jumbo v9, "true"

    const-string/jumbo v11, "ro.build.2ndbrand"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    const/4 v9, 0x1

    if-eq v5, v9, :cond_21

    const/4 v9, 0x2

    if-eq v5, v9, :cond_21

    const/4 v9, 0x4

    if-ne v5, v9, :cond_20

    goto :goto_14

    :cond_20
    add-int/lit8 v0, v0, -0x1

    :cond_21
    :goto_14
    const-string v9, "MODELS"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    const-string v9, "NONE"

    const-string v11, "MODELS"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    if-nez v13, :cond_22

    const/4 v13, 0x1

    const-string v9, "MODELS"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v20, v9

    goto :goto_15

    :cond_22
    const-string v9, "MODELS"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v1, v9, v7}, Landroid/content/pm/aasa/AASATokenParser;->checkTokenTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_24

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_23
    move-object/from16 v9, v20

    :cond_24
    :goto_15
    const-string v11, "CARRIERS"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    const-string v11, "NONE"

    const-string v14, "CARRIERS"

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_26

    const/4 v11, 0x1

    if-ne v13, v11, :cond_25

    const-string v11, "CARRIERS"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object v7, v11

    invoke-direct {v1, v9, v7}, Landroid/content/pm/aasa/AASATokenParser;->checkTokenTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_26

    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_25
    const/4 v13, 0x1

    const-string v11, "CARRIERS"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object v7, v11

    :cond_26
    :goto_16
    move v11, v0

    const-string v0, "CREATE"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "NONE"

    const-string v14, "CREATE"

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "AASATokenParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CREATE : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "CREATE"

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_1e

    const/4 v14, 0x1

    :try_start_10
    const-string v0, "CREATE"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1e

    move-object v15, v0

    :try_start_11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v48, v0

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v5, v0, :cond_27

    const-string v0, "AASATokenParser"

    const-string v5, "createDate is bigger than today."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v15}, Landroid/content/pm/aasa/AASATokenParser;->setTrustTimeByToken(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_1e

    :cond_27
    nop

    move/from16 v45, v14

    goto :goto_18

    :catch_10
    move-exception v0

    goto :goto_17

    :catch_11
    move-exception v0

    move-object/from16 v15, v17

    :goto_17
    :try_start_12
    const-string v5, "AASATokenParser"

    move-object/from16 v49, v0

    const-string v0, "CREATE : NumberFormatException"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa1

    return v0

    :cond_28
    const/4 v0, 0x1

    if-ne v4, v0, :cond_29

    add-int/lit8 v11, v11, -0x1

    :cond_29
    move-object/from16 v15, v17

    :goto_18
    const-string v0, "EXPIRED"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "NONE"

    const-string v5, "EXPIRED"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EXPIRED : "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "EXPIRED"

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_1e

    :try_start_13
    const-string v0, "EXPIRED"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_1e

    move-object v5, v0

    :try_start_14
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/16 v17, 0xe

    if-le v0, v14, :cond_2a

    const-string v0, "AASATokenParser"

    const-string v14, "createDate is bigger than expiredDate."

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v17

    :cond_2a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v50, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v14, v0, :cond_2b

    const-string v0, "AASATokenParser"

    const-string/jumbo v14, "today Date is bigger than expiredDate."

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_12
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_1e

    return v17

    :cond_2b
    nop

    move-object/from16 v18, v5

    goto :goto_1a

    :catch_12
    move-exception v0

    goto :goto_19

    :catch_13
    move-exception v0

    move-object/from16 v5, v18

    :goto_19
    :try_start_15
    const-string v14, "AASATokenParser"

    move-object/from16 v51, v0

    const-string v0, "EXPIRED : NumberFormatException"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xab

    return v0

    :cond_2c
    :goto_1a
    const-string v0, "RESTRICT"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "NONE"

    const-string v5, "RESTRICT"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mHasRestrictList:Z

    iget-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mRestrictList:Ljava/util/HashMap;

    const-string v5, "PKG"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RESTRICT"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "NONE"

    const-string v5, "RESTRICT"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mRestrictList:Ljava/util/HashMap;

    const-string v5, "RESTRICT"

    const-string v14, "RESTRICT"

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_2d
    add-int/lit8 v11, v11, -0x1

    :goto_1b
    const-string v0, "CONDITION"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "NONE"

    const-string v5, "CONDITION"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mRestrictList:Ljava/util/HashMap;

    const-string v5, "CONDITION"

    const-string v14, "CONDITION"

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_2e
    add-int/lit8 v11, v11, -0x1

    :goto_1c
    const-string v0, "DATELIMIT"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "NONE"

    const-string v5, "DATELIMIT"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mRestrictList:Ljava/util/HashMap;

    const-string v5, "DATELIMIT"

    const-string v14, "DATELIMIT"

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    const-string v0, "ADP"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "NONE"

    const-string v5, "ADP"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    if-eqz v3, :cond_30

    const-string v0, "com.sec.android.preloadinstaller"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    :cond_30
    new-instance v0, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;

    invoke-direct {v0}, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;-><init>()V

    move-object v5, v0

    if-eqz v2, :cond_31

    invoke-virtual {v5, v2}, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;->set_pkgName(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;

    goto :goto_1d

    :cond_31
    const-string v0, "AASATokenParser"

    const-string v14, "cannot get packageName in ADP rule"

    invoke-static {v0, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, -0x1

    :goto_1d
    new-instance v0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    invoke-direct {v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;-><init>()V

    move-object v14, v0

    const-string/jumbo v0, "pattern"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "NONE"

    const-string/jumbo v2, "pattern"

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string/jumbo v0, "pattern"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_pattern(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    goto :goto_1e

    :cond_32
    const-string v0, "AASATokenParser"

    const-string v2, "cannot get pattern in ADP rule"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, -0x1

    :goto_1e
    const-string v0, "hashCode"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "NONE"

    const-string v2, "hashCode"

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "hashCode"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_hashCode(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    goto :goto_1f

    :cond_33
    const-string v0, "AASATokenParser"

    const-string v2, "cannot get hashCode in ADP rule"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, -0x1

    :goto_1f
    const-string/jumbo v0, "versionType"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "NONE"

    const-string/jumbo v2, "versionType"

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_1e

    if-nez v0, :cond_34

    :try_start_16
    const-string/jumbo v0, "versionType"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_versionType(I)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_14
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_1e

    goto :goto_20

    :catch_14
    move-exception v0

    :try_start_17
    const-string v2, "ADP"

    move-object/from16 v52, v0

    const-string/jumbo v0, "versionType cannot be converted to int"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, -0x1

    :goto_20
    goto :goto_21

    :cond_34
    const-string v0, "AASATokenParser"

    const-string v2, "cannot get versionType in ADP rule"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, -0x1

    :goto_21
    const-string/jumbo v0, "rp"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "NONE"

    const-string/jumbo v2, "rp"

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "rp"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_rp(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    goto :goto_22

    :cond_35
    const-string v0, "AASATokenParser"

    const-string v2, "cannot get rp value in ADP rule"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, -0x1

    :goto_22
    const-string v0, "format"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "NONE"

    const-string v2, "format"

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "format"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_format(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    :cond_36
    const-string/jumbo v0, "wipe"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "NONE"

    const-string/jumbo v2, "wipe"

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string/jumbo v0, "wipe"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_wipe(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    :cond_37
    const-string/jumbo v0, "product"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "NONE"

    const-string/jumbo v2, "product"

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string/jumbo v0, "product"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_product(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    :cond_38
    const-string v0, "carrier"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "NONE"

    const-string v2, "carrier"

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "carrier"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_carrier(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    :cond_39
    const-string/jumbo v0, "model"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "NONE"

    const-string/jumbo v2, "model"

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string/jumbo v0, "model"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_model(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    :cond_3a
    const-string/jumbo v0, "sep"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "NONE"

    const-string/jumbo v2, "sep"

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string/jumbo v0, "sep"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_sep_ver(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    :cond_3b
    invoke-virtual {v14}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->createADPPolicy()Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    move-result-object v0

    if-nez v0, :cond_3c

    const-string v2, "AASATokenParser"

    const-string v3, "cannot make ADPPolicy object"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, -0x1

    :cond_3c
    invoke-virtual {v5}, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;->get_ADPPolicy()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_3d

    invoke-virtual {v5}, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;->set_ADPPolicy()Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;

    :cond_3d
    invoke-virtual {v5, v0}, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;->add_ADPPolicy(Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;

    invoke-virtual {v5}, Landroid/content/pm/aasa/ADPContainer$ADPContainerBuilder;->createADPContainer()Landroid/content/pm/aasa/ADPContainer;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    iget-object v2, v1, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    if-nez v2, :cond_3e

    const-string v2, "AASATokenParser"

    const-string v3, "cannot make ADPContainer object"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, -0x1

    :cond_3e
    if-nez v11, :cond_3f

    const-string v0, "AASATokenParser"

    const-string v2, " Pass ALL"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_3f
    const-string v0, "AASATokenParser"

    const-string v2, " Fail: auth"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_1e

    nop

    nop

    move-object v0, v12

    const/16 v2, 0xdd

    return v2

    :catch_15
    move-exception v0

    goto :goto_23

    :catch_16
    move-exception v0

    goto :goto_24

    :catch_17
    move-exception v0

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    goto :goto_23

    :catch_18
    move-exception v0

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    goto :goto_24

    :catch_19
    move-exception v0

    move-object/from16 v43, v8

    goto :goto_25

    :catch_1a
    move-exception v0

    move-object/from16 v43, v8

    move-object/from16 v42, v13

    goto :goto_23

    :catch_1b
    move-exception v0

    move-object/from16 v43, v8

    move-object/from16 v42, v13

    goto :goto_24

    :catch_1c
    move-exception v0

    move/from16 v40, v6

    move-object/from16 v41, v7

    move-object/from16 v43, v8

    move-object/from16 v42, v13

    :goto_23
    :try_start_18
    const-string v2, "AASATokenParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/16 v2, 0xe7

    return v2

    :catch_1d
    move-exception v0

    move/from16 v40, v6

    move-object/from16 v41, v7

    move-object/from16 v43, v8

    move-object/from16 v42, v13

    :goto_24
    const-string v2, "AASATokenParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_1e

    const/16 v2, 0xc9

    return v2

    :catch_1e
    move-exception v0

    goto :goto_25

    :catch_1f
    move-exception v0

    move/from16 v40, v6

    move-object/from16 v41, v7

    move-object/from16 v43, v8

    :goto_25
    const-string v2, "AASATokenParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xd3

    return v2

    :cond_40
    move/from16 v40, v6

    :goto_26
    const-string v0, "AASATokenParser"

    const-string v2, " ERROR: plz check certification in the device - Fail to check integrity"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    move-object v2, v0

    const/4 v3, 0x0

    :try_start_19
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_20

    move v3, v0

    goto :goto_27

    :catch_20
    move-exception v0

    :goto_27
    mul-int/lit8 v0, v3, 0xa

    add-int/2addr v0, v12

    return v0

    :goto_28
    if-eqz v7, :cond_41

    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    :cond_41
    throw v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private verifyADPToken(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->getBasePathForEFS()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v8, 0x2

    if-nez v0, :cond_1

    const-string v0, "AASATokenParser"

    const-string/jumbo v6, "token file does not exists"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v0, v9

    new-array v9, v0, [B

    const/4 v10, 0x0

    move-object v11, v10

    const/4 v12, -0x1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v11, v0

    nop

    :goto_0
    array-length v0, v9

    invoke-virtual {v11, v9, v6, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v12, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {v1, v8, v9}, Landroid/content/pm/aasa/AASATokenParser;->checkIntegrityNew(I[B)[B

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_1
    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v0

    if-eqz v11, :cond_4

    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    nop

    :cond_4
    :goto_2
    throw v6

    :catch_2
    move-exception v0

    if-eqz v11, :cond_3

    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :goto_3
    iget-object v0, v1, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    if-nez v0, :cond_5

    const-string v0, "AASATokenParser"

    const-string v6, " ERROR: plz check certification in the adp token"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_5
    :try_start_4
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    move-object v13, v0

    invoke-virtual {v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v14, v0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v15, v1, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v0, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v14, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const-string v10, "ADP"

    const-string v15, "PACKAGE"

    const-string v12, "hashCode"

    filled-new-array {v10, v15, v12}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v10, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v12, v0

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v6, "NONE"

    invoke-virtual {v12, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    invoke-direct {v1, v14, v12}, Landroid/content/pm/aasa/AASATokenParser;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v7, -0x54f3fda

    if-eq v0, v7, :cond_9

    const v7, 0xfc8d

    if-eq v0, v7, :cond_8

    const v7, 0x8cdac1b

    if-eq v0, v7, :cond_7

    goto :goto_6

    :cond_7
    const-string v0, "hashCode"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v8

    goto :goto_7

    :cond_8
    const-string v0, "ADP"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    const-string v0, "PACKAGE"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v0, -0x1

    :goto_7
    packed-switch v0, :pswitch_data_0

    :goto_8
    move v7, v8

    goto :goto_9

    :pswitch_0
    :try_start_5
    const-string v0, "hashCode"

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "AASATokenParser"

    const-string v7, "cannot match hashCode"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_4

    return v8

    :cond_b
    goto :goto_8

    :catch_3
    move-exception v0

    :try_start_6
    const-string v7, "ADP"

    const-string v8, "NumberFormatException is occurred in AASATokenParserr"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    return v7

    :pswitch_1
    const-string v0, "PACKAGE"

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/aasa/AASATokenParser;->getSHA256ForPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "AASATokenParser"

    const-string v8, "cannot match packageName"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    return v7

    :cond_c
    const/4 v7, 0x2

    goto :goto_9

    :pswitch_2
    move v7, v8

    const-string v0, "NONE"

    const-string v8, "ADP"

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v0, :cond_d

    const/4 v7, 0x1

    return v7

    :cond_d
    :goto_9
    nop

    move-object v0, v6

    move v8, v7

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_e
    nop

    move-object v0, v13

    const/4 v6, 0x0

    return v6

    :catch_4
    move-exception v0

    const-string v6, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    return v6

    :catch_5
    move-exception v0

    const-string v6, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    return v6

    :catch_6
    move-exception v0

    const-string v6, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeBlockApkList(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/.aasa/blockedList.log"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v3

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    const-string v3, "AASAASKS"

    const-string/jumbo v4, "writeBlockApkList() Success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "AASAASKS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeBlockApkList() Fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_1
    throw v1
.end method


# virtual methods
.method public addAASAInfoToXML(ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/aasa/AASATokenParser;->getAASAInfoFromXML(ILjava/util/HashMap;)V

    if-eqz p3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v5, p2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v5, "addAASAInfoToXML"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "addAASAInfoToXML"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  after: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/aasa/AASATokenParser;->setAASAInfoToXML(ILjava/util/HashMap;)V

    :cond_2
    return-void
.end method

.method public addParsedRestrictInfoToXML()V
    .locals 2

    iget-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mRestrictList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mRestrictList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mRestrictList:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Landroid/content/pm/aasa/AASATokenParser;->addRestrictInfoToXML(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_0
    const-string v0, "AASATokenParser"

    const-string/jumbo v1, "restrict list is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public addRestrictInfo(Landroid/content/pm/aasa/RestrictList;Landroid/content/pm/aasa/RestrictList$RestrictNode;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object p2, v1

    check-cast p2, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/content/pm/aasa/AASATokenParser;->addRestrictInfo(Landroid/content/pm/aasa/RestrictList;Ljava/util/HashMap;)Landroid/content/pm/aasa/RestrictList;

    return-void
.end method

.method public checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v1}, Landroid/content/pm/aasa/AASATokenParser;->getASKSDataFromXML(ILjava/util/HashMap;)Z

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_1
    const/16 v3, 0x9

    if-ne p1, v3, :cond_2

    if-eqz v2, :cond_2

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public checkRestrictList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_b

    :cond_0
    :try_start_0
    const-string v0, "/data/system/.aasa/RestrictPackages.xml"
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v5, p0

    :try_start_1
    invoke-virtual {v5, v0}, Landroid/content/pm/aasa/AASATokenParser;->getRestrictInfoFromXML(Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList;

    move-result-object v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    :goto_0
    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v5, p0

    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v5, p0

    :goto_2
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :goto_3
    if-nez v2, :cond_1

    return-object v4

    :cond_1
    const-string v0, "DATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "DATE"

    invoke-virtual {v2, v4, v0}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v0

    const-string v4, "DATELIMIT"

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/aasa/RestrictList;->findNodeSet(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v4, "AASAASKS"

    const-string/jumbo v6, "no restrict set matched to DATE"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-virtual {v6}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v8, v9, :cond_8

    invoke-virtual {v6}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    const-string v11, "DELETE"

    invoke-virtual {v10}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    const-string v13, "AASAASKS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    const-string v0, "\tdelete restrict target is "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    move-object v0, v15

    goto :goto_6

    :cond_3
    move-object v15, v0

    goto/16 :goto_9

    :cond_4
    move-object v15, v0

    const-string v0, "DENY"

    invoke-virtual {v10}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v10}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    const-string v12, "AASAASKS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\tdeny restrict target is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Landroid/content/pm/aasa/AASATokenParser;->mASKSRestrictList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_5

    sget-object v12, Landroid/content/pm/aasa/AASATokenParser;->mASKSRestrictList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    goto :goto_7

    :cond_6
    const-string v0, "REVOCATE"

    invoke-virtual {v10}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v10}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    const-string v12, "AASAASKS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\trevocate restrict target is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_7
    :goto_9
    nop

    move-object v0, v15

    goto/16 :goto_5

    :cond_8
    move-object v15, v0

    move-object v0, v15

    goto/16 :goto_4

    :cond_9
    :goto_a
    return-object v3

    :cond_a
    :goto_b
    move-object/from16 v5, p0

    const-string v0, "AASAASKS"

    const-string/jumbo v6, "type or value can be null"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public getAASAInfoFromXML(ILjava/util/HashMap;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    move-object/from16 v1, p2

    const-string v0, ""

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_0

    :goto_0
    move-object v10, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    :cond_0
    const-string v5, "/data/system/.aasa/AASApackages.xml"

    const-string v0, "AASA"

    const-string v2, "VERSION"

    const-string v3, "3"

    const/4 v6, 0x7

    new-array v4, v6, [Ljava/lang/String;

    const-string v10, "PKG"

    aput-object v10, v4, v7

    const-string v10, "DATE"

    aput-object v10, v4, v8

    const/4 v10, 0x2

    const-string v11, "VERSION"

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-string v11, "SEINFO"

    aput-object v11, v4, v10

    const/4 v10, 0x4

    const-string v11, "APPTYPE"

    aput-object v11, v4, v10

    const/4 v10, 0x5

    const-string v11, "PM"

    aput-object v11, v4, v10

    const/4 v10, 0x6

    const-string v11, "AASA"

    aput-object v11, v4, v10

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    move-object v7, v0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9

    move-object v7, v0

    nop

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v13, v0

    const-string v0, "UTF-8"

    invoke-interface {v13, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const-string v14, ""

    const-string v15, ""

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object v15, v14

    move v14, v12

    move v12, v0

    :goto_2
    move-object/from16 v21, v5

    const/4 v5, 0x1

    if-eq v12, v5, :cond_d

    :try_start_2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    packed-switch v12, :pswitch_data_0

    move-object/from16 v22, v2

    const/16 v16, 0x1

    goto/16 :goto_c

    :pswitch_0
    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_3

    aget-object v9, v10, v0

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    array-length v9, v10

    const/16 v16, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ne v0, v9, :cond_5

    nop

    :cond_4
    :goto_5
    move-object/from16 v22, v2

    const/16 v16, 0x1

    goto/16 :goto_c

    :cond_5
    if-eqz v4, :cond_4

    if-eqz v8, :cond_4

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :pswitch_1
    const/4 v0, 0x0

    const/4 v0, 0x0

    move v9, v0

    :goto_6
    if-ge v9, v6, :cond_7

    aget-object v0, v10, v9

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    array-length v0, v10

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    if-ne v9, v0, :cond_8

    nop

    move-object/from16 v22, v2

    goto :goto_c

    :cond_8
    array-length v0, v10

    if-ne v9, v0, :cond_9

    move-object v0, v5

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v15

    const/4 v3, 0x0

    nop

    move-object v15, v0

    goto :goto_d

    :cond_9
    :try_start_3
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v9, :cond_b

    if-eqz v3, :cond_a

    :try_start_4
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v22, v2

    goto :goto_a

    :cond_a
    :goto_8
    move-object/from16 v22, v2

    :try_start_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    move-object/from16 v23, v3

    move-object v3, v2

    move-object/from16 v2, v23

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_a

    :cond_b
    move-object/from16 v22, v2

    if-eqz v3, :cond_c

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_c
    move-object/from16 v2, v22

    :goto_9
    goto :goto_b

    :catch_2
    move-exception v0

    move-object/from16 v22, v2

    :goto_a
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v14, 0x0

    move-object/from16 v2, v22

    :goto_b
    goto :goto_d

    :goto_c
    move-object/from16 v2, v22

    :goto_d
    :try_start_7
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    nop

    move v12, v0

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v9, v0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_e
    nop

    move-object/from16 v5, v21

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_15

    :catch_4
    move-exception v0

    move v12, v14

    goto :goto_12

    :cond_d
    move-object/from16 v22, v2

    if-eqz v14, :cond_e

    if-eqz v1, :cond_e

    monitor-enter p2
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit p2

    goto :goto_f

    :catchall_1
    move-exception v0

    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_e
    :goto_f
    nop

    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :goto_10
    goto :goto_11

    :catch_5
    move-exception v0

    goto :goto_10

    :goto_11
    move v12, v14

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object v2, v0

    move v14, v12

    goto :goto_15

    :catch_6
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    :goto_12
    :try_start_c
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    nop

    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :goto_13
    goto :goto_14

    :catch_7
    move-exception v0

    goto :goto_13

    :goto_14
    goto :goto_17

    :catchall_3
    move-exception v0

    move-object v2, v0

    move v14, v12

    :goto_15
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_16

    :catch_8
    move-exception v0

    :goto_16
    throw v2

    :catch_9
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void

    :cond_f
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    const-string v0, "AASAinstall"

    const-string/jumbo v2, "there is not AASApackages.xml file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAASATokenContent()Z
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "UTF-8"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "PACKAGE"

    const-string v5, "DATE"

    const-string v6, "VERSION"

    const-string v7, "SEINFO"

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "NONE"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, v4, v5}, Landroid/content/pm/aasa/AASATokenParser;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    const-string v6, "PACKAGE"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "NONE"

    const-string v7, "PACKAGE"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string v7, "PACKAGE"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "DATE"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "NONE"

    const-string v7, "DATE"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string v7, "DATE"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "VERSION"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "NONE"

    const-string v7, "VERSION"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string v7, "VERSION"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string v6, "aasa_platform"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "NONE"

    const-string v7, "SEINFO"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string v7, "SEINFO"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string v7, "aasa_platform"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3

    return v0

    :cond_3
    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_4
    nop

    move-object v0, v1

    const/4 v1, 0x1

    return v1

    :cond_5
    return v0

    :cond_6
    return v0

    :catch_0
    move-exception v1

    const-string v2, "AASATokenParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "er"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    move-exception v1

    const-string v2, "AASATokenParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "er"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getASKSDataFromBlackList(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/content/pm/aasa/AASATokenParser;->getASKSDataFromXML(ILjava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public getASKSInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    iput-object p1, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->checkAdvancedHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v1, ""

    iput-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    const/4 v1, 0x0

    return-object v1
.end method

.method public getHasRestrict()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mHasRestrictList:Z

    return v0
.end method

.method public getRestrictInfoFromXML(Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string v2, "AASATokenParser"

    const-string/jumbo v5, "set xml file does not exist"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/pm/aasa/RestrictList;

    const-string v5, "RESTRICT"

    invoke-direct {v2, v5, v4, v3}, Landroid/content/pm/aasa/RestrictList;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->checkRestrictIntegrity()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "AASATokenParser"

    const-string v3, "fail to check integrity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/aasa/AASATokenParser;->removeRestrictFile()V

    return-object v4

    :cond_1
    new-instance v2, Landroid/content/pm/aasa/RestrictList;

    const-string/jumbo v5, "root"

    invoke-direct {v2, v5, v4, v3}, Landroid/content/pm/aasa/RestrictList;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v5, 0x0

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v6

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    :goto_0
    const/4 v8, 0x1

    if-eq v7, v8, :cond_8

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    const/4 v9, 0x2

    if-eq v7, v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    :cond_3
    invoke-virtual {v2, v8, v10, v9}, Landroid/content/pm/aasa/RestrictList;->makeNode(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v12

    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getDepth()I

    move-result v14

    if-le v9, v14, :cond_4

    invoke-virtual {v2, v12}, Landroid/content/pm/aasa/RestrictList;->addChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto :goto_2

    :cond_4
    if-ne v9, v14, :cond_5

    invoke-virtual {v2, v12}, Landroid/content/pm/aasa/RestrictList;->addSibling(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v13}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getDepth()I

    move-result v15

    if-le v15, v9, :cond_6

    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList;->moveParent()V

    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList;->getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v13

    goto :goto_1

    :cond_6
    invoke-virtual {v2, v12}, Landroid/content/pm/aasa/RestrictList;->addSibling(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    nop

    :cond_7
    :goto_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_0

    :cond_8
    nop

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList;->pruneDummyHead()I

    move-result v3

    if-nez v3, :cond_9

    move-object v4, v2

    nop

    :cond_9
    return-object v4
.end method

.method public getSHA(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/pm/aasa/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/pm/aasa/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSHA256ForPkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, ""

    iget-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mPkgHashCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mPkgHashCache:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mPkgHashCache:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mPkgHashCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mPkgHashCache:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AASAASKS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/aasa/AASATokenParser;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/aasa/AASATokenParser;->mPkgHashCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public getTrustedToday()Ljava/lang/String;
    .locals 11

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->hasTrustedTime()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/aasa/AASATokenParser;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->getTrustedFile()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-direct {p0, v5, v6}, Landroid/content/pm/aasa/AASATokenParser;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "AASATokenParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getElapsedToday : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/content/pm/aasa/AASATokenParser;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getValue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasPermissionForASKS(Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    const-string v1, "AASATokenParser"

    const-string v2, " hasPermissionForASKS START"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/content/pm/aasa/AASATokenParser;->isASKSToken(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :try_start_0
    new-instance v5, Ljava/util/jar/JarFile;

    iget-object v6, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    nop

    iget-object v5, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    move-object v4, v5

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v5, v5, [B

    invoke-direct {p0, v1, v4, v5}, Landroid/content/pm/aasa/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    array-length v6, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v6, v0, :cond_0

    nop

    nop

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    return v2

    :cond_0
    :try_start_1
    new-array v6, v0, [B

    invoke-static {v5, v2, v6, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v5, v0}, Landroid/content/pm/aasa/AASATokenParser;->getTokenContents([BI)[B

    move-result-object v7

    iput-object v7, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    nop

    :goto_0
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto/16 :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR: hasPermissionForASKS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    :cond_2
    return v2

    :catch_1
    move-exception v5

    :try_start_3
    const-string v6, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ERROR: hasPermissionForASKS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v5, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_4
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayInputStream;

    iget-object v9, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenContents:[B

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v7, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    const-string v3, "DEFAULTRP"

    invoke-direct {p0, v7, v3}, Landroid/content/pm/aasa/AASATokenParser;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "NONE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    return v2

    :cond_5
    const-string/jumbo v8, "true"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "AASATokenParser"

    const-string v9, " DEFAULTRP true"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_6
    const-string v6, "AASATokenParser"

    const-string v8, " DEFAULTRP false ?"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3

    nop

    goto :goto_4

    :catch_2
    move-exception v3

    :try_start_6
    const-string v6, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " hasPermissionForASKS"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3

    return v2

    :catch_3
    move-exception v3

    const-string v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " hasPermissionForASKS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    :goto_2
    const-string v3, "AASATokenParser"

    const-string v5, " hasPermissionForASKS ERROR: plz check certification in the device"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :goto_3
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    :cond_8
    throw v2

    :cond_9
    :goto_4
    return v2
.end method

.method public init()V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->initASKS()V

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->initADP()V

    return-void
.end method

.method public isAASAToken(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    nop

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "token"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Token.xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    iput-object v5, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertName:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/aasa/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->mTokenName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    nop

    :goto_2
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "AASATokenParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ERROR: AASA_IsToken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "AASATokenParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ERROR: AASA_IsToken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_3
    return v0

    :goto_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    :cond_3
    throw v2
.end method

.method public isASKSMode(Ljava/lang/String;)Z
    .locals 27

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/16 v7, 0x100

    const/16 v8, 0x200

    const/16 v9, 0x400

    const/16 v10, 0x800

    const/high16 v11, 0x10000

    const/high16 v12, 0x20000

    const/high16 v13, 0x40000

    const/high16 v14, 0x80000

    const/high16 v15, 0x1000000

    const/high16 v16, 0x2000000

    const/high16 v17, 0x4000000

    const/4 v0, 0x0

    move/from16 v18, v0

    const-string v0, "AASA"

    move/from16 v19, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v14

    const-string v14, "ASKS mode: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v21, 0x0

    if-eqz v14, :cond_5

    const-string v0, ""

    array-length v15, v14

    move-object/from16 v22, v0

    const/16 v0, 0x10

    if-ne v15, v0, :cond_4

    move/from16 v15, v18

    move/from16 v0, v21

    move-object/from16 v1, v22

    :goto_0
    move/from16 v23, v13

    const/16 v13, 0xf

    if-ge v0, v13, :cond_1

    aget-object v13, v14, v0

    move/from16 v24, v12

    const-string v12, "1"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    aget-object v12, v14, v0

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, -0x1

    const-string v13, "AASA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v12

    const-string v12, " ERROR: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v14, v0

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v15, v25

    goto :goto_1

    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v14, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move/from16 v13, v23

    move/from16 v12, v24

    goto :goto_0

    :cond_1
    move/from16 v24, v12

    const/4 v12, -0x1

    if-eq v15, v12, :cond_3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "MJMKDWSY"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v12, p0

    :try_start_1
    invoke-virtual {v12, v0}, Landroid/content/pm/aasa/AASATokenParser;->getSHA256ForPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aget-object v13, v14, v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v26, v1

    const/4 v1, 0x1

    if-ne v13, v1, :cond_2

    :try_start_2
    const-string v1, "AASAASKS"

    const-string v13, "MODE\'s auth ok!"

    invoke-static {v1, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_2
    const-string v1, "AASAASKS"

    const-string v13, "MODE\'s auth Fail!"

    invoke-static {v1, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v15, -0x1

    :goto_2
    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v12, p0

    :goto_3
    move-object/from16 v26, v1

    :goto_4
    const/4 v15, -0x1

    :goto_5
    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v12, p0

    :goto_6
    move-object/from16 v26, v1

    :goto_7
    const/4 v0, -0x1

    move v15, v0

    goto :goto_5

    :cond_3
    move-object/from16 v12, p0

    goto :goto_8

    :cond_4
    move/from16 v24, v12

    move/from16 v23, v13

    move-object/from16 v12, p0

    const/4 v15, -0x1

    const-string v0, "AASA"

    const-string v1, " ERROR: lengh"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    goto :goto_9

    :cond_5
    move/from16 v24, v12

    move/from16 v23, v13

    move-object/from16 v12, p0

    const/4 v15, -0x1

    const-string v0, "AASA"

    const-string v1, " ERROR: null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    const/4 v1, -0x1

    if-eq v15, v1, :cond_24

    aget-object v0, v14, v21

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    or-int/2addr v2, v3

    :cond_6
    const/4 v1, 0x1

    aget-object v0, v14, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    or-int/2addr v2, v4

    :cond_7
    const/4 v0, 0x2

    aget-object v0, v14, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    or-int/2addr v2, v5

    :cond_8
    const/4 v0, 0x3

    aget-object v0, v14, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    or-int/2addr v2, v6

    :cond_9
    const/4 v0, 0x4

    aget-object v0, v14, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    or-int/2addr v2, v7

    :cond_a
    const/4 v0, 0x5

    aget-object v0, v14, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    or-int/2addr v2, v8

    :cond_b
    const/4 v0, 0x6

    aget-object v0, v14, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    or-int/2addr v2, v9

    :cond_c
    const/4 v0, 0x7

    aget-object v0, v14, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    or-int/2addr v2, v10

    :cond_d
    const/16 v0, 0x8

    aget-object v0, v14, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    or-int/2addr v2, v11

    :cond_e
    const/16 v0, 0x9

    aget-object v0, v14, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    or-int v2, v2, v24

    :cond_f
    const/16 v0, 0xa

    aget-object v0, v14, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    or-int v2, v2, v23

    :cond_10
    const/16 v0, 0xb

    aget-object v0, v14, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    or-int v2, v2, v20

    :cond_11
    const/16 v0, 0xc

    aget-object v0, v14, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    or-int v2, v2, v19

    :cond_12
    const/16 v0, 0xd

    aget-object v0, v14, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    or-int v2, v2, v16

    :cond_13
    const/16 v0, 0xe

    aget-object v0, v14, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    or-int v2, v2, v17

    :cond_14
    and-int v0, v2, v3

    if-eqz v0, :cond_15

    const-string v0, "AASAASKS"

    const-string v1, "ASKS_MODE_0_REINSTALL is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    and-int v0, v2, v4

    if-eqz v0, :cond_16

    const-string v0, "AASAASKS"

    const-string v1, "ASKS_MODE_1_BLACKLIST is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    and-int v0, v2, v5

    if-eqz v0, :cond_17

    const-string v0, "AASAASKS"

    const-string v1, "ASKS_MODE_2_UPDATE_WITHOUT_TOKEN is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    and-int v0, v2, v6

    if-eqz v0, :cond_18

    const-string v0, "AASAASKS"

    const-string v1, "ASKS_MODE_3_BLOCK_KNOWN_UNCHECKED_UNTRUSTED is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    and-int v0, v2, v7

    if-eqz v0, :cond_19

    const-string v0, "AASAASKS"

    const-string v1, "ASKS_MODE_4_UNKNOWN is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    and-int v0, v2, v8

    if-eqz v0, :cond_1a

    const-string v0, "AASAASKS"

    const-string v1, "ASKS_MODE_5_ALLOW_KNOWN_UNCHKECKED_TRUSTED is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    and-int v0, v2, v9

    if-eqz v0, :cond_1b

    const-string v0, "AASAASKS"

    const-string v1, "ASKS_MODE_6_KNOWN_CHECKED is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    and-int v0, v2, v10

    if-eqz v0, :cond_1c

    const-string v0, "AASAASKS"

    const-string v1, "ASKS_MODE_7_TOKEN is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    and-int v0, v2, v11

    if-eqz v0, :cond_1d

    const-string v0, "AASAASKS"

    const-string v1, "ASKS_MODE_8_WHITELIST is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    and-int v0, v2, v24

    if-eqz v0, :cond_1e

    const-string v0, "AASAASKS"

    const-string v1, "ASKS_MODE_9_BLOCK_ALL_ADB_SHELL is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    and-int v0, v2, v23

    if-eqz v0, :cond_1f

    const-string v0, "AASAASKS"

    const-string v1, "ASKS_MODE_10_BLOCK_6MODE_ADB_SHELL is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    and-int v0, v2, v20

    if-eqz v0, :cond_20

    const-string v0, "AASAASKS"

    const-string v1, "ASKS_MODE_11_ALLDISABLE is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    and-int v0, v2, v19

    if-eqz v0, :cond_21

    const-string v0, "AASAASKS"

    const-string v1, "ASKS_MODE_12_REPORT is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    and-int v0, v2, v16

    if-eqz v0, :cond_22

    const-string v0, "AASAASKS"

    const-string v1, " ASKS_MODE_13_LOG  is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    and-int v0, v2, v17

    if-eqz v0, :cond_23

    const-string v0, "AASAASKS"

    const-string v1, "ASKS_MODE_14_FORCE_ENABLE is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    sput v2, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    const/4 v1, 0x1

    return v1

    :cond_24
    return v21
.end method

.method public isSignatureMatched(Landroid/content/pm/PackageParser$Package;)I
    .locals 8

    const/4 v0, -0x1

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "308204d4308203bca003020102020900f3a752a8cbb7ac6a300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303732373132323632335a170d3338313231323132323632335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bd20d27f5127981cf0855e43e64d8018b92401ff0b4b241eeb54c4fb0e84dcf94cf8da888e34c1c370bc437f77880819f3a9894019f05d5514bc3d20d17e968167d85990fa1a44b9e79aa1da9681dc8d2c39b98b3b257918748c6f5bb9126330d72fdc26065e717f1a5c27c8b075f1a8d7325f7eb2d57ee34d93d76a5c529d2e0789392793c68c8f5090c4d2d093190b3279943550e2f5c864118e84d6c6c6bc67815148db8752e4bf69a9ca729ca4704d966e8dd591506dfc9dd9c8c33bdc7bf58660df6be3b45753983a092c3a4ae899d1f2253017ba606a5b1dda2f5511fcf530ea43c7dc05ff1621d305f12a37148e72078aaf644dadc98f3b6789cb6655020103a382010b30820107301d0603551d0e041604142fa3167aab7de1f13b4edef062fa715c0609f0bf3081d70603551d230481cf3081cc80142fa3167aab7de1f13b4edef062fa715c0609f0bfa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900f3a752a8cbb7ac6a300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100498ed96cbc503fb1b72402dcb8ba364d8aa11dc5b9a7e191d200af4051272519b3099eba16e538044f086a1e36710abf2980efb437b6a9bebfab93417c068ea18cbfdeb8570fca73951684c674eb33c4240e236928ba1197d6b385c40454c3980f6f764131149dbba80756b7b18c5951a8630a6692fdb30227b431175f793a6e39479e8ad8b4b4beca6faabf9fc243b9be47447229524487f5f04cf6661ec818a3756221360bfeee3ccaec9a6dc67694b791a80957b28f11f15fd81eaeb361e4c9f907d3ceb4176f9947b513f8cd89d77044adae7c7f631f27a2e40a8d655a9c73515c796b17a39d0e9de675d62bf785c1e0d65a937c65aadacf788b2dfc14e2"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "308204d4308203bca003020102020900b830e7f5ede090a8300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009a280ff8cebd5954fbac141d450be91a980a6597b379cb64a19bc4ab39aecb5f06fe2599d3767bb0c27e3e8ac3846cf0b80c09817f8d22be8a55418a068c6983958ffc233a99cd793bc468b0bda139b87ff1550e5ce184647214a1fa4fe2121a0ecdbb1cd33c644c06e7b70455ff097a4f8c51eca2ebefb4602b5d8bb6ed811ec959c1e99e8f353667703563c3c3277bbbd872fe7fa84bd8041efa98d32bb35c44d9c55aa8e766da065176722103fdb63677392c94bd20f5a5ac5c780046bc729a2eec3575a05ddb39836235c8c939f95493aa8f32dd7e7016392716219f0c5fe48874f283af0c217b4c08536b5df7bc302c9e2af08db61ecb49a198c7c4bd2b020103a382010b30820107301d0603551d0e041604144d2270829d5cf4a65bf55a756224bea659c2dfda3081d70603551d230481cf3081cc80144d2270829d5cf4a65bf55a756224bea659c2dfdaa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b830e7f5ede090a8300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100751ea54edeb751de01436db8009352bee64209020fe40641ac09d0016c807fd89258aca374299520e30bc79e77a161c98ddb8ccfc9c8184969114e4478d1b1b374a97e52e07e056dd6b6de5b063c12203e55e284d1de58af2fc6e43c198857b87ac9a472633b8a1cd7e6ebc4e2d675b680d1844d86ab7569129d24e2bcf10cddb2e66c85c1335a3d6479749152058a27135440b795bf509d78009fbda18a6c0cb31b741f79a4ac189d44fd04f65887bb9d950cc2b6f43275e71900fba03b06a9ab9ecd58af0f8c2e0b3569197b043da0601563b0af26a0f52c4b7e834c7ccf5dec4d330d8fd0a049360cd3d9ef0bff09b9812c9ba406c8a6650688b0919a040b"

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-string v2, "30820411308202f9a003020102020900fd222d6fc87acde0300d06092a864886f70d010105050030819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d3020170d3133303132343035323231305a180f32313132313233313035323231305a30819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100a2c51f56a1c8bf64ada0af152ced2344ac070b447efc85f1b69ce90fbc2b7a71257240c215eedbf7445c474fe34d62bc3035d79ba110859118f1200ecc9ae48b56400e187591272d59734e456d9dfd5a1f3227a30b9448bda84c2901b501295445e204ddb6f9f9e36b2560998f1764e446176fe5d83987220f8ed15106dc7c8ecb6798de45f5fbae54efe2b35a379631f545f84c98243aa4d92ef339330f954ad32e4e97aff69cbf68928484b03a8fa8eafdc8ff2a9801f249302d467b05f99a1680e4fb5b11624d5e53d67f09e86b82dd7305e3e483b12e3720fcccc2bc8857f13b6e1d60512074004f67d86241940eaba34afda2af3904b04913fa50f499f7020103a350304e301d0603551d0e04160414eef0f8211dccf6e442f3388889c9a3ea3ce0236c301f0603551d23041830168014eef0f8211dccf6e442f3388889c9a3ea3ce0236c300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100395c7e7900c471e03fa9850905c6ab1edc5a8b7d43a16689d9bb1ec1a06513c4ea8f7471c6e474244174261cc151ae8d1a61019e0ed81fffee8afa1d01d85a32de796f4b46d0d5ddfcca7d1f90d523b54751f505a4e3b059569f24ba2564d72fbc4081533840f618c2993d935134d3c987605e032f6a12889af3190af1714a90f2a3476b8e0016ab45564bf10e611899babd86af33149ca6838b0a885c752ffe879f37997f262e819c62cf59caa794cfaaf8e3c462f5092a34264f0634316b13a67a644e104dc4070e8b6628a46f41da7e3c741f6edc21152f9f947dde6fe14b58f34e4d9e7abd103cb1ca9e09eb4fa5b553baa413329bd3919caca2d52e6d4b"

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const-string v2, "308204d4308203bca003020102020900b161f3869153be27300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e93d8694c493d50a6224a473d70ddcecd84a2f40ac48bb8206c83a09a94f2db98aaa34f9fcc343b91a87c61254c3a43b0caed03cd839a63037253ea77d949a284dd0b44ebfbabbc2cea838213609d9a5813e88863210ee62c0c0e415611aa7f938ad2bc627c147ac6cf558002028d2e38b1d31aba794867717ddcfcadbeeac6bd345a7bf6433e52cfc93a2157cb048298bd33bf30c143b777e3f074897bcf3b5b181316b678256fd3accf64e88160b0781efd90711ef4acae86848d87e1c10a1747e780c48bcb378a7b437e0405ec54ed7e22c4dbc39f8b03ab1d5eeb7cf4804455fbcab35afb775d79e8f4c4fa4da00b2ce48c991fd94020f7ad089fba13003020103a382010b30820107301d0603551d0e04160414b58d96dcf0127466098625e3ffb03a4f8d0654743081d70603551d230481cf3081cc8014b58d96dcf0127466098625e3ffb03a4f8d065474a181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b161f3869153be27300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010091327721aa614451a785e200349ce2f402049371943001266827c29abdf975dc7b3e6eaa02c41a07b445bb9de0bc43ce25c3c98928a94ff67ad81eec822cbd083ae686cd7126860655adb8d6a6228cf1f7a4a196699669c05b506efa1fca2cad1a150cabd01380e56bb1842651b4ff33bcb619b3c6e65a10cfd99350ea777c3866135523c1bece17f59fba76a2eb429453f7a2a9e6a6cc9e62e5f4b56706ba4c74cb86975aa865bead2209787b33261b9fa222a7117b1724ea3217ad680fd0408c5634278fbdfca0e32b16dc1a6cc245e931cbe84fc7cccdaa7778459e3003a082662ac6d84d485dd368e0eb4c2c9019420c82d1cd0fbd6fcc097353b059baea"

    const/4 v4, 0x5

    aput-object v2, v1, v4

    const-string v2, "308204d4308203bca003020102020900e49d6da353f759af300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3039303630393135353934365a170d3336313032353135353934365a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009ba004179d8018ab0fa3ab3c804899c2ecb6d66784225ae99936b71fd7f059969bb2076b8f2b9d7a5c20d0622e0a766de9602e3e8d60d9d335bdeab78100188f734b4678c7369c2e764913c8f43eede582827b8d1dc679c8fd0f0d0605fc6b87d331e2544bf11790b2a55c3a13463ec4cd35a931ad40dc687f116f1d6ba79eb63a01f96d107b1b166ddacb6d2fe8ac618217dabe6b69d4d9e692ab1970bb4346fd4860586e8387ef7682b07a428bc8036db143079bc37c8830e5a8c3d690f6b0cef5596ed80a9830f2e61c055894be1c2a7b3048602ef6df0e51073e06f0d55177f6aeb96b91b3b4c66b8b6e5b32bbe2afe46f45b0f48300a6ac9f9de1c500b7020103a382010b30820107301d0603551d0e041604149b6890fb4274c2e32d6c5daea2fac4dd0756529a3081d70603551d230481cf3081cc80149b6890fb4274c2e32d6c5daea2fac4dd0756529aa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e49d6da353f759af300c0603551d13040530030101ff300d06092a864886f70d010105050003820101001a76d67e729785f9f22015d9eb9d1998f2d8ce5bc147f65060d58f2f29004a592dd065b651e8d746cf050f3389b1632970d1334e9bce20b43a77a18b6226be0da0a4ab4420dd734dcdd0e049c4f07cf45f3faee8ac90332c14b1f7c4e4f55866a8e3aa71ad1814b5c591e07085dadbe15544ef9bc9591b2c75b373ca9214f8a49acd18ccf061b484c3cd1448bb2af149694d58a53d4c6878b8e06c12e214e2847117ef95348eca3acaa3fffecd7924cb1dd67251eaee14b01870cae92a4238cecac4cda5ba2a2640055303e98e62121a9e49ac0dfcde32b28606f3fc613709fe5ab8aefea4ed53a310c4c9dac7f90242d55697b5690ade195f5253da947f2eaa"

    const/4 v4, 0x6

    aput-object v2, v1, v4

    const-string v2, "3082041e30820306a003020102020601670c2687f3300d06092a864886f70d01010505003081c4310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313430320603550403132b53616d73756e6720506c6174666f726d204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038313833315a180f32313138313131323135303030305a3081c4310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313430320603550403132b53616d73756e6720506c6174666f726d204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100f7049ae9aa6c64c27ebcf799f32bd9118c2870a54b4c9cd200aa33d2f332903b2a6430c608aac3038b65f644d7a82127ec187099beb680c71d3593d2522f94c894c018fb8fb08d3282bea8feafe902ce1a11da806d63366f514b97c6e286221537f758ece2bcb0b2278c4ae9217ff1c078ddb9401ce490f07557b50f6ddbbe43aacae52849a5e465010af4bdf13eae532771f6c8dc370fe715988d615e67dff7870bd4393490d17ab71584dbe7eb549df5b402fb7f0b4db5cc86e4a818601a183fe94a4a2bafd29367507f131490ac3e4e38c61f9f86c82cf2b583656b95139ce4e46c3ce04d9a9587316a47062ced72e186d546bcc39896491ad3242bb658b70203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101003347014ea4d8c43a387b28331fd3ba02a4aee7b9ecd340bce8e517c21ee6cc0e295d999ac5e68352ca59f30b82aa2c0736715cc20710338c34beacec99ba7a153cead3ec03640f6b764dcfa0fabfa4df5972b7abbecf532238ae1a1e2b404379f065c4ea8d148f60eb6f51c783b82b28bc97cc4486bfb08f9bba956323044b67d4fefb560c44fa18aeb397c0d87841295de021be9599396a0e734d2ec69dde9b70545db7aa106901437f07dc6d26f99d97b83380bad7b42536a47742935fe143684d8f31f07df44a7c274eaa33ba51863dbe57a1bc66cb988a97ed17f0f86e596c03a511391ec72dc4c79c039657d8b4b4ddd8a2910fa4872a3935d93a6947ad"

    const/4 v4, 0x7

    aput-object v2, v1, v4

    const-string v2, "3082041830820300a003020102020601670c27ef2d300d06092a864886f70d01010505003081c1310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e6573733131302f0603550403132853616d73756e67204d65646961204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038323030325a180f32313138313131323135303030305a3081c1310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e6573733131302f0603550403132853616d73756e67204d65646961204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100bb60b4487c7c006073d54adf1e85ee3352f323e7ed751880b7ff99313fa6e4d94236cbc474aad528bfdc5a1a2ba33bdbd17996439ab3746b8bfd243852429c2c036a0d634e2ee2774ae92dede65430698e77368be3fbe640d842a445fe57118111e479ed018142157095b17dd146e689e049e5182931347113c38391c3cec258ca6b675f5bdb4158de58a64c0f37fb86e0f4517d879eb265fc44ee33aca2f1185b74f23e4a48c8a7eb8941055d374c485ca0ae5adb04607e9aedf43d3ae7e15f3e0ef6f05a922c3925fa11488371f94a3847f7cefbbf5fbcf18416f21171b946c6be5acbbe9e55bf610fa333b4d1e6d0c0278bba1817cd70aa1beefb73756fb90203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d0101050500038201010057f1b2b239f9551f4de9fb5afd88b0b7bc67d37bf9bfe8748583d35d14c9291355322e896bbb66d0d56c9708215fad9c40e9398620ea3b1e4641a5883a88472f852cc36afa88b695d5a7af408d5eb583bd4cec9452d0f901b6c38e1f97b55325b596e742fade940391b44d8f19352e8a543fe1c89ad600a8ba32373b1d84fb1b8d34e7541337254fdc9716b2adcfed7105f713ec4fc98c4eee56f7ffa2d2355e16161e2f276a075eda15cc2cdba93c6a49907ad01463cc752708051b8d87001028a6869187589425d3a8992cb9044a7c4d5e3e74a270f6bd1ebf57fd3afb82ab74399a40db820103ea361f7e87b172302ce14b29527bde67c01f4b71832c8665"

    const/16 v4, 0x8

    aput-object v2, v1, v4

    const-string v2, "3082041a30820302a003020102020601670c278709300d06092a864886f70d01010505003081c2310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313230300603550403132953616d73756e6720536861726564204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038313933365a180f32313138313131323135303030305a3081c2310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313230300603550403132953616d73756e6720536861726564204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a02820101009fce256105db13cb1ec14f133d799cf889bf7c29cb8a1a8e8ba1d618a03e01b6705901e7fe2d012b3ad2cfdcad80a2718b4fb09f2d0ef0142cea5fd17afbddb4a1e7d2c99f2a1650ca17faedae9cbc5c13561e723b9ae120f55109aa992d57d2ba7e3c495620e5957c7c75c2ade6d03c5b204ceb460754ccdcd5791267f46283f37923ce3d828ee78a8702770a6356824086c956e403048059d8d07797b1b3d2671f8134b97bcdc009ce0fde7f9fda53d9175440309920838bb7dd129189322cd47851f2be587d288a38af2c32bf1024d9b7e265009db694d6d24d40576eb777b0b3713ac24cbbf1cf0534e565ce5030503c842e43438ca27557b209f475337d0203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101009bddfa8de87f1d9e7467e0251ca54441f6a68f4f3fc84b0fe273ffd7f01598df91b61b5bd61b14d1ecaa633d20c96b950797432e85f144d2cc04b59770e7ec912ffd59573dcc79d438ef04ed81ea98f09c8b4a2f1e7701dcac789ab33c2a2b39d026b72f3bcff9c29bdfbe34edd6be30ac6b050c10e259d4ed99b6efb4c9d0c32020f842e74984fd00bc59bb32e28ca5f32e052e19fa30859da473a402539bf58d87140edc935792f5e2da4a017e71304fbc3a20f25129a19f7f3ff3e6e1c75a6c1cf489d13e80d8a86fc8b6dd879088c4272d4bbd069b4a43bb61210b066c5280293aa580751337b24fda13553d7294b5916433e730a021520330236639e89c"

    const/16 v4, 0x9

    aput-object v2, v1, v4

    if-eqz p1, :cond_5

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_5

    move v2, v0

    move v0, v3

    :goto_0
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v4, v4, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v4, v4, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    move v4, v3

    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_3

    aget-object v5, v1, v4

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v6, v6, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    const/high16 v6, 0x2000000

    if-nez v5, :cond_1

    sget v5, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    const-string v5, "AASAASKS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  is same with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "   //0:pi 1:R 2:A 3:SH 4:N 5:M 6:oLdSH"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, v4

    goto :goto_2

    :cond_1
    sget v5, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    const-string v5, "AASAASKS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  is not same with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    move v0, v2

    :cond_5
    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/.aasa/AASApolicy/ASKSK.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz p1, :cond_7

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v5, v5, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_7

    nop

    :goto_3
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v5, v5, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v5, v5, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    if-eqz v5, :cond_6

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v5, v5, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v5, v7}, Landroid/content/pm/aasa/AASATokenParser;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eq v6, v2, :cond_6

    const-string v2, "AASAASKS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " signValue is same with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return v0
.end method

.method public parsePackageForASKS(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;I)I
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v11, -0x1

    if-nez v8, :cond_0

    const-string v0, "AASAASKS"

    const-string/jumbo v3, "pkg has a null value"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_0
    sget v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    const/high16 v3, 0x80000

    and-int/2addr v0, v3

    const/high16 v13, 0x2000000

    if-nez v0, :cond_22

    :try_start_0
    const-string/jumbo v0, "true"

    const-string/jumbo v3, "ro.build.official.release"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v1, v0

    sget v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    const/high16 v3, 0x4000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "AASAASKS"

    const-string v3, "SCA Forced enable for debug"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    move v14, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v14, v1

    goto/16 :goto_a

    :cond_1
    move v14, v1

    :goto_0
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-object v1, v0

    :try_start_3
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/pm/aasa/AASATokenParser;->getSHA256ForPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    sget v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v0, v13

    if-eqz v0, :cond_2

    const-string v0, "AASAASKS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    :try_start_4
    const-string v3, ""

    move-object v1, v3

    sget v3, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    and-int/2addr v3, v13

    if-eqz v3, :cond_3

    :try_start_5
    const-string v3, "AASAASKS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " : NoSuchAlgorithmException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_1
    move-object v15, v1

    :try_start_6
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/pm/aasa/AASATokenParser;->getASKSInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    move-object v6, v0

    const/4 v5, -0x1

    if-eqz v6, :cond_7

    :try_start_7
    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v0, v13

    if-eqz v0, :cond_4

    const-string v0, "AASAASKS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkHash : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    invoke-virtual {v7, v0, v15, v6}, Landroid/content/pm/aasa/AASATokenParser;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_7

    if-eqz v14, :cond_6

    sget v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v0, v13

    if-eqz v0, :cond_5

    const-string v0, "AASAASKS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is in BlackList, so fail to install"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, -0x7

    return v0

    :cond_6
    sget v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v0, v13

    if-eqz v0, :cond_7

    const-string v0, "AASAASKS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is in BlackList, so fail to install"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AASAASKS"

    const-string v1, "anyway continue to install since this binary is not official"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_7
    :try_start_8
    const-string v0, "0x1"

    const-string/jumbo v1, "ro.boot.em.status"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move/from16 v16, v0

    sget v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    and-int/lit16 v0, v0, 0x800

    const/16 v4, 0x8

    if-eqz v0, :cond_14

    :try_start_9
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v7, v0}, Landroid/content/pm/aasa/AASATokenParser;->isASKSToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v2, 0x0

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v9, v1}, Landroid/content/pm/aasa/AASATokenParser;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_8

    const/4 v0, 0x1

    :goto_2
    move/from16 v17, v0

    goto :goto_3

    :cond_8
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v7, v3, v0, v1}, Landroid/content/pm/aasa/AASATokenParser;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    if-eq v0, v5, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    move/from16 v17, v2

    :goto_3
    const/4 v0, -0x1

    :try_start_a
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v18, 0x1

    move-object v1, v7

    move-object v3, v9

    move v12, v4

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v18, v6

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/aasa/AASATokenParser;->verifyAASAToken(Ljava/lang/String;Ljava/lang/String;ZII)I

    move-result v1

    move v2, v1

    if-nez v1, :cond_a

    const-string v0, "AASAASKS"

    const-string v1, "AASA OK"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_a
    if-eqz v14, :cond_12

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/pm/aasa/AASATokenParser;->getASKSInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    rem-int/lit8 v0, v2, 0xa

    const/4 v3, 0x3

    if-lt v0, v3, :cond_b

    if-nez v16, :cond_c

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0, v9}, Landroid/content/pm/aasa/AASATokenParser;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v0, ""
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    move-object v3, v0

    :try_start_b
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/pm/aasa/AASATokenParser;->getSHA256ForPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    sget v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v0, v13

    if-eqz v0, :cond_d

    const-string v0, "AASAASKS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_d
    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_c
    const-string v4, ""

    move-object v3, v4

    sget v4, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v4, v13

    if-eqz v4, :cond_e

    const-string v4, "AASAASKS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " : NoSuchAlgorithmException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_4
    invoke-virtual {v7, v12, v3, v1}, Landroid/content/pm/aasa/AASATokenParser;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_10

    sget v4, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v4, v13

    if-eqz v4, :cond_f

    const-string v4, "AASAASKS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " fail to install by token auth~"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    rem-int/lit8 v4, v2, 0xa

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const/4 v4, -0x7

    goto :goto_5

    :pswitch_1
    const/16 v4, -0xbb9

    goto :goto_5

    :pswitch_2
    const/16 v4, -0xbb8

    goto :goto_5

    :pswitch_3
    const/16 v4, -0xbba

    goto :goto_5

    :pswitch_4
    const/16 v4, -0xbbc

    nop

    :goto_5
    return v4

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v4, v9}, Landroid/content/pm/aasa/AASATokenParser;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    sget v4, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v4, v13

    if-eqz v4, :cond_11

    const-string v4, "AASAASKS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  can install by white list, even faild to token auth"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    goto :goto_6

    :cond_12
    sget v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v0, v13

    if-eqz v0, :cond_13

    const-string v0, "AASAASKS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fail to install"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AASAASKS"

    const-string v1, "anyway continue to install since this binary is not official"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :cond_13
    :goto_6
    nop

    move/from16 v19, v17

    goto/16 :goto_9

    :catch_4
    move-exception v0

    move/from16 v2, v17

    goto/16 :goto_a

    :cond_14
    move v12, v4

    move v4, v5

    move-object/from16 v18, v6

    const/high16 v1, 0x10000

    const/high16 v3, 0x1000000

    const/high16 v5, 0x2000000

    const/4 v10, 0x1

    :try_start_d
    sget v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    and-int/2addr v0, v5

    if-eqz v0, :cond_15

    :try_start_e
    const-string v0, "AASAASKS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pkg name without token : "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    :cond_15
    :try_start_f
    const-string v0, ""
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    move-object v6, v0

    :try_start_10
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/pm/aasa/AASATokenParser;->getSHA256ForPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    sget v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_16

    const-string v0, "AASAASKS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " changed to "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    :cond_16
    goto :goto_7

    :catch_5
    move-exception v0

    :try_start_11
    const-string v4, ""

    move-object v6, v4

    sget v4, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    and-int/2addr v4, v5

    if-eqz v4, :cond_17

    :try_start_12
    const-string v4, "AASAASKS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " : NoSuchAlgorithmException"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1

    :cond_17
    :goto_7
    :try_start_13
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/pm/aasa/AASATokenParser;->getASKSInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    sget v4, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    and-int/2addr v4, v5

    if-eqz v4, :cond_18

    :try_start_14
    const-string v4, "AASAASKS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkHash : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1

    :cond_18
    const/16 v4, 0x8

    :try_start_15
    invoke-virtual {v7, v4, v6, v0}, Landroid/content/pm/aasa/AASATokenParser;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v12, -0x1

    if-ne v4, v12, :cond_1c

    if-eqz v14, :cond_1b

    sget v12, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v12, v5

    if-eqz v12, :cond_19

    const-string v12, "AASAASKS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    move/from16 v19, v2

    :try_start_16
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does NOT have ASKSTOKEN"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v12, "AASAASKS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v6

    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'s version is : "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_19
    move/from16 v19, v2

    move-object/from16 v20, v6

    :goto_8
    sget v2, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    if-nez v16, :cond_1a

    const/16 v2, 0x10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v2, v6, v9}, Landroid/content/pm/aasa/AASATokenParser;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const/16 v2, -0xbbb

    return v2

    :cond_1b
    move/from16 v19, v2

    move-object/from16 v20, v6

    sget v2, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_21

    const-string v2, "AASAASKS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " does NOT have ASKSTOKEN, fail to install"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "AASAASKS"

    const-string v6, "anyway continue to install since this binary is not official"

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_1c
    move/from16 v19, v2

    move-object/from16 v20, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v2, v9}, Landroid/content/pm/aasa/AASATokenParser;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1e

    sget v2, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_1d

    const-string v2, "AASAASKS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is in WhiteList"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v10, 0x0

    goto :goto_9

    :cond_1e
    if-eqz v14, :cond_21

    sget v2, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_1f

    const-string v2, "AASAASKS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is in WhiteList but blocked"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6

    :cond_1f
    const/4 v2, -0x7

    return v2

    :catch_6
    move-exception v0

    move/from16 v2, v19

    goto :goto_a

    :cond_20
    move/from16 v19, v2

    :cond_21
    :goto_9
    move v1, v14

    move/from16 v2, v19

    goto :goto_b

    :catch_7
    move-exception v0

    move/from16 v19, v2

    goto :goto_a

    :catch_8
    move-exception v0

    move/from16 v19, v2

    move v14, v1

    :goto_a
    const-string v1, "AASAASKS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v14

    :goto_b
    const-string v0, "MSTG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is installing.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_22
    move/from16 v19, v2

    :goto_c
    :try_start_17
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/pm/aasa/AASATokenParser;->getSHA256ForPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget v3, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ADP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "target ADP - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v4}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v3}, Landroid/content/pm/aasa/ADPOperation;->isSameCategoryByHashCode(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/pm/aasa/ADPOperation;->filterADPPolicy(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_24

    const-string v6, "ADP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "target list has size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    if-eqz v6, :cond_23

    const-string v12, "ADP"

    const-string/jumbo v13, "picked one adp policy"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v12, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v6}, Landroid/content/pm/aasa/ADPOperation;->isGreaterOrEqual(Ljava/lang/String;Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)Z

    move-result v12

    if-nez v12, :cond_24

    const-string v12, "ADP"

    const-string v13, "install fail, cannot back to the previous version"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, -0xbbd

    return v11

    :cond_23
    const-string v12, "ADP"

    const-string v13, "cannot get target policy"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, -0xbbd

    return v11

    :cond_24
    const-string v6, "ADP"

    const-string/jumbo v12, "successs"

    invoke-static {v6, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    :cond_25
    nop

    sget v0, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_29

    if-eqz v10, :cond_29

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_26

    const/4 v0, 0x1

    :cond_26
    if-eqz v0, :cond_29

    if-eqz v1, :cond_28

    sget v3, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_27

    const-string v3, "AASAASKS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sys app:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " can not be updated without Token"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const-string v3, "MSTG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Is installation of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " blocked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0xbbb

    return v3

    :cond_28
    sget v3, Landroid/content/pm/aasa/AASATokenParser;->ASKS_MODE:I

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_29

    const-string v3, "AASAASKS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sys app:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " can not be updated without Token"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "AASAASKS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "anyway allow to install "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " even system update case"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return v11

    :catch_9
    move-exception v0

    const-string v3, "ADP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0xbbd

    return v3

    :catch_a
    move-exception v0

    const-string v3, "ADP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0xbbd

    return v3

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeAASAInfoFromXML(ILjava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/aasa/AASATokenParser;->getAASAInfoFromXML(ILjava/util/HashMap;)V

    nop

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    if-eqz v1, :cond_5

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/aasa/AASATokenParser;->setAASAInfoToXML(ILjava/util/HashMap;)V

    :cond_5
    return-void
.end method

.method public removeAASAInfoFromXML(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/aasa/AASATokenParser;->getAASAInfoFromXML(ILjava/util/HashMap;)V

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/aasa/AASATokenParser;->setAASAInfoToXML(ILjava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public removeRestrictInfoToXML(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    const-string v2, "/data/system/.aasa/RestrictPackages.xml"

    invoke-virtual {p0, v2}, Landroid/content/pm/aasa/AASATokenParser;->getRestrictInfoFromXML(Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList;

    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/aasa/RestrictList;->removeNodeAllByType(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/content/pm/aasa/AASATokenParser;->setRestrictInfoToXML(Landroid/content/pm/aasa/RestrictList;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_2

    :cond_0
    :goto_3
    return-void
.end method

.method public removeRestrictPackage(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Landroid/content/pm/aasa/AASATokenParser;->mASKSRestrictList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/content/pm/aasa/AASATokenParser;->mASKSRestrictList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/aasa/AASATokenParser;->removeRestrictInfoToXML(Ljava/lang/String;)V

    return-void
.end method

.method public setAASAInfoToXML(ILjava/util/HashMap;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    move-object/from16 v1, p2

    if-eqz v1, :cond_6

    const-string v0, ""

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    :goto_0
    move-object v8, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    :cond_0
    const-string v0, "AASA"

    const-string v2, "VERSION"

    const-string v3, "3"

    const/4 v8, 0x6

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "PKG"

    aput-object v8, v4, v6

    const-string v8, "DATE"

    aput-object v8, v4, v7

    const/4 v8, 0x2

    const-string v9, "VERSION"

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const-string v9, "SEINFO"

    aput-object v9, v4, v8

    const/4 v8, 0x4

    const-string v9, "APPTYPE"

    aput-object v9, v4, v8

    const/4 v8, 0x5

    const-string v9, "PM"

    aput-object v9, v4, v8

    const-string v5, "/data/system/.aasa/AASApackages.xml"

    goto :goto_0

    :goto_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v10

    invoke-interface {v10, v7}, Lorg/w3c/dom/Document;->setXmlStandalone(Z)V

    const-string v11, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->setDocumentURI(Ljava/lang/String;)V

    invoke-interface {v10, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    invoke-interface {v11, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    move-object/from16 v16, v15

    invoke-interface {v10, v14}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    move-object/from16 v17, v15

    move-object/from16 v7, v17

    invoke-interface {v11, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v6, v16

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    move-object/from16 v18, v15

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v20, v15

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    move-object/from16 v22, v15

    move-object/from16 v23, v1

    move-object/from16 v1, v22

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_6

    if-lez v15, :cond_2

    move-object/from16 v24, v2

    const/4 v15, 0x0

    :try_start_1
    aget-object v2, v8, v15

    invoke-interface {v10, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v25, v3

    :try_start_2
    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v7, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v3, v15

    :goto_4
    move-object/from16 v26, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    array-length v0, v8

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    aget-object v0, v8, v0

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v27, v2

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-interface {v10, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_5

    :cond_1
    move-object/from16 v27, v2

    array-length v0, v8

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-object v0, v8, v0

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-interface {v10, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v2, v27

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v25, v3

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v25, v3

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v25, v3

    goto/16 :goto_8

    :cond_2
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    const/4 v15, 0x0

    :cond_3
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto/16 :goto_3

    :cond_4
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    const/4 v15, 0x0

    move v6, v15

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_5
    move-object/from16 v19, v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    const-string v3, "encoding"

    const-string v6, "UTF-8"

    invoke-virtual {v2, v3, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "omit-xml-declaration"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "indent"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "{http://xml.apache.org/xslt}indent-amount"

    const-string v6, "4"

    invoke-virtual {v2, v3, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    :goto_6
    const-string v1, "AASATokenParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " 3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_7
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    :goto_7
    const-string v1, "AASATokenParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " 2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_8
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    :goto_8
    const-string v1, "AASATokenParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    nop

    :cond_6
    :goto_a
    return-void
.end method

.method public setCertPath(Z)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "/system/etc/aasa_real_crt2.crt"

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "/system/etc/aasa_test_crt2.crt"

    iput-object v0, p0, Landroid/content/pm/aasa/AASATokenParser;->mCertPath:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setRestrictInfoToXML(Landroid/content/pm/aasa/RestrictList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    const-string v0, "/data/system/.aasa/RestrictPackages.xml"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "AASATokenParser"

    const-string/jumbo v4, "set xml file does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    return-void

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->setXmlStandalone(Z)V

    const-string v6, "RESTRICT"

    invoke-virtual {p1, v1, v6}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v6, "AASATokenParser"

    const-string v7, "error to find RESTRICT tag in xml"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v7, Landroid/content/pm/aasa/RestrictXMLList;

    invoke-direct {v7, v1}, Landroid/content/pm/aasa/RestrictXMLList;-><init>(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    invoke-virtual {v7}, Landroid/content/pm/aasa/RestrictXMLList;->getHead()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v8

    invoke-virtual {v7, v5, v6, v8}, Landroid/content/pm/aasa/RestrictXMLList;->SetRestrictedInfoToDocument(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    new-instance v8, Ljavax/xml/transform/dom/DOMSource;

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v9, Ljavax/xml/transform/stream/StreamResult;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v10

    const-string v11, "encoding"

    const-string v12, "UTF-8"

    invoke-virtual {v10, v11, v12}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "omit-xml-declaration"

    const-string/jumbo v12, "yes"

    invoke-virtual {v10, v11, v12}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "indent"

    const-string/jumbo v12, "yes"

    invoke-virtual {v10, v11, v12}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "{http://xml.apache.org/xslt}indent-amount"

    const-string v12, "4"

    invoke-virtual {v10, v11, v12}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    const-string v11, "/data/system/.aasa/rTicket"

    invoke-direct {p0, v11}, Landroid/content/pm/aasa/AASATokenParser;->setIntegrityValueToFile(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->removeRestrictFile()V

    :cond_3
    return-void
.end method

.method public setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/SamsungAnalyticsLog"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x7a120

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AASAASKS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSamsungAnalyticsLog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSystemApp(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/aasa/AASATokenParser;->mIsAppSystem:Z

    return-void
.end method

.method public updateADPPolicyIfTarget(Landroid/content/pm/PackageParser$Package;)V
    .locals 8

    :try_start_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/pm/aasa/AASATokenParser;->getSHA256ForPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->isADPtarget()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "ADP"

    const-string/jumbo v2, "updateADPPolicyIfTarget"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->getWipeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->getWipeValue()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v3}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    invoke-virtual {v4}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getRP()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v6, v7, :cond_1

    const-string v6, "ADP"

    const-string/jumbo v7, "wipe out adp policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_1
    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->getADPHashCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v3}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v4}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Landroid/content/pm/aasa/ADPOperation;->removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    sget-object v5, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v5, v4}, Landroid/content/pm/aasa/ADPContainer;->setADPPolicy(Ljava/util/ArrayList;)V

    :cond_3
    goto :goto_1

    :cond_4
    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->getADPHashCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    sget-object v1, Landroid/content/pm/aasa/AASATokenParser;->mADPTokenFileSet:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->getADPHashCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->getADPHashCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3}, Landroid/content/pm/aasa/AASATokenParser;->copyFileFromApk(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->sweepDanglingADPTokenFiles()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0x11

    invoke-direct {p0, v3, v1}, Landroid/content/pm/aasa/AASATokenParser;->getADPDataFromXML(ILjava/util/HashMap;)Z

    move-result v4

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->getBasePathForEFS()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/content/pm/aasa/AASATokenParser;->getADPHashCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v4, 0x1

    const-string v6, "ADP"

    const-string v7, "add new rule to efs"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Landroid/content/pm/aasa/AASATokenParser;->mADPPackagesList:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v6}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v7}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Landroid/content/pm/aasa/ADPOperation;->removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v7, v2}, Landroid/content/pm/aasa/ADPContainer;->setADPPolicy(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Landroid/content/pm/aasa/AASATokenParser;->mADPContainer:Landroid/content/pm/aasa/ADPContainer;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    const-string v2, "ADP"

    const-string/jumbo v6, "update efs list to the latest"

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, v1}, Landroid/content/pm/aasa/AASATokenParser;->setADPDataToXml(ILjava/util/HashMap;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "ADP"

    const-string v2, "IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v1, "ADP"

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_8
    :goto_3
    nop

    :goto_4
    return-void
.end method

.method public verifyAASAToken(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/aasa/AASATokenParser;->verifyAASAToken(Ljava/lang/String;Ljava/lang/String;ZII)I

    move-result v0

    return v0
.end method
