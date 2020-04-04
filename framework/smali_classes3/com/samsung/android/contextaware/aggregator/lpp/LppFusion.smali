.class public Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
.super Ljava/lang/Thread;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;
    }
.end annotation


# static fields
.field private static final PASSIVE_LOC_COLL_FREQ:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "LppFusion"

.field private static final locReqType:J

.field static final vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;


# instance fields
.field LogFromAPDR:Ljava/lang/String;

.field LogFromLocM:Ljava/lang/String;

.field private apdrStepNumber:J

.field flagGPSAlwaysOn:Z

.field private locRequestInterval:J

.field private final lppQ:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;",
            ">;"
        }
    .end annotation
.end field

.field private final mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

.field private final mLMLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

.field private final mLPPAloLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

.field private final mListGPSPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mListLPPPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

.field private final mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

.field private final mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

.field private final mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

.field private mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

.field private sendBrFlag:Z

.field strAlgo:Ljava/lang/String;

.field strLM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->values()[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->flagGPSAlwaysOn:Z

    const-string v2, "\n<<LPosition>>\n\n"

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->strAlgo:Ljava/lang/String;

    const-string v2, "\n<<LoManager>>\n\n"

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->strLM:Ljava/lang/String;

    const-string v2, "0   0   0   0   0   0"

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->LogFromAPDR:Ljava/lang/String;

    const-string v2, "0   0   0   0"

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->LogFromLocM:Ljava/lang/String;

    const-wide/16 v2, 0x64

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    const-wide/16 v2, 0x2d

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->locRequestInterval:J

    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLMLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLPPAloLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sendBrFlag:Z

    const-string v0, "LppFusion"

    const-string v2, "LppFusion"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->init(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLPPAloLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->init(Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;)V

    iget v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    iget v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->locRequestInterval:J

    iget-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->locRequestInterval:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->flagGPSAlwaysOn:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->flagGPSAlwaysOn:Z

    :goto_0
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    return-void
.end method

.method private LocationInfoString(Landroid/location/Location;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLMLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Landroid/location/Location;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->LocationInfoString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->updateLppFusionStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    return-object v0
.end method

.method private addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method private addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;",
            "TE;)V"
        }
    .end annotation

    const-string v0, "LppFusion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addQ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "LppFusion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addQ, array size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_SLEEP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->interrupt()V

    :cond_1
    return-void
.end method

.method private threadSleep()V
    .locals 3

    :try_start_0
    const-string v0, "LppFusion"

    const-string v1, "Sleep!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sleep(J)V

    const-string v0, "LppFusion"

    const-string v1, "Out of Sleep!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LppFusion"

    const-string v2, "Out of Sleep! 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateLppFusionStatus(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sendBrFlag:Z

    if-eqz v0, :cond_2

    const-string v0, "LppFusion"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.contextaware.aggregator.lpp.LppFusion"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "LppFusion"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "LppFusion"

    const-string v3, "Intent sent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "LppFusion"

    const-string v3, "Intent creation failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "LppFusion"

    const-string v2, "Context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_2
    const-string v0, "LppFusion"

    const-string v1, "Config is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private waitOnQ()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_3

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;

    move-object v1, v2

    const-string v2, "LppFusion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in Q:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;->$SwitchMap$com$samsung$android$contextaware$aggregator$lpp$LppFusion$QMsg:[I

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "LppFusion"

    goto/16 :goto_3

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_IN_BATCH_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v3

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$1700(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v3

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$1700(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v3

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$1700(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_LIST_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v3

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$1600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v3

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$1600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_5
    const-string v2, "LppFusion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size of APDR data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$1500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$1500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Location request MovingStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$1500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v4, v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->updateLppFusionStatus(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    add-int/lit8 v3, v2, 0x1

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$1500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v3, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const-string v3, "LppFusion"

    const-string v4, "Location request"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_REQUEST:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v4

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$1500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v5, v5, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(II)V

    nop

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$1500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverAPDRData(Ljava/util/ArrayList;)V

    goto :goto_4

    :pswitch_6
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(I)V

    goto :goto_4

    :pswitch_7
    goto :goto_4

    :pswitch_8
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->threadSleep()V

    goto :goto_4

    :goto_3
    const-string/jumbo v3, "unspecified msg id"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    const-string v3, "LppFusion"

    const-string v4, "IE in q"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    nop

    :cond_3
    const-string v2, "LppFusion"

    const-string/jumbo v3, "polling stopped"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public Debug_LogString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    return-void
.end method

.method public getLogHandle()Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    return-object v0
.end method

.method public notifyApdrData(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LppFusion"

    const-string/jumbo v1, "notifyApdrData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APDR data from sensor Hub - moving status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v4, v4, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyStayArea(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setStayingAreaFlag(I)V

    :cond_0
    return-void
.end method

.method public pauseLPP()V
    .locals 3

    const-string v0, "LppFusion"

    const-string/jumbo v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const-string v1, "LppFusion, pause()"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->setILppDataProviderListener(Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;)V

    return-void
.end method

.method public resumeLPP()V
    .locals 3

    const-string v0, "LppFusion"

    const-string/jumbo v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const-string v1, "LppFusion, resume()"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 2

    const-string v0, "LppFusion"

    const-string/jumbo v1, "run"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LPPThread"

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->setName(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    const-string v1, "LppFusion"

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->start()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->START:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(I)V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->waitOnQ()V

    return-void
.end method

.method public sendStatusDisable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sendBrFlag:Z

    return-void
.end method

.method public sendStatusEnable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sendBrFlag:Z

    return-void
.end method

.method public setLppResolution(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->setLppResolution(I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set property command from APP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->Debug_LogString(Ljava/lang/String;)V

    return-void
.end method

.method public stopLpp()V
    .locals 2

    const-string v0, "LppFusion"

    const-string v1, "LPP stop!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LPPA_STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V

    return-void
.end method
