.class public Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;
.super Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.source "QBNRClientHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final backupClient:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

.field private mIsFinished:Z

.field private mIsSuccess:Z

.field private mProcNow:J

.field private mProcTotal:J

.field private final serviceHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->backupClient:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "getClientInfo"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "backup"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "restore"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "get_status"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcNow:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;J)J
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcNow:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;J)J
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z

    return p1
.end method

.method private init()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcNow:J

    iput-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z

    iput-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z

    return-void
.end method


# virtual methods
.method public getClient(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->backupClient:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    return-object v0
.end method

.method public getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    return-object v0
.end method
