.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
.super Lcom/android/internal/util/StateMachine;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassiveSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassiveListener;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;
    }
.end annotation


# instance fields
.field private lastLoc:Landroid/location/Location;

.field private mListening:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

.field private mLocationMgr:Landroid/location/LocationManager;

.field private mPassGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

.field private final mPassLnr:Landroid/location/LocationListener;

.field private mPause:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;

.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassiveListener;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassiveListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassLnr:Landroid/location/LocationListener;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->lastLoc:Landroid/location/Location;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mListening:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPause:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mListening:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mListening:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->addState(Lcom/android/internal/util/State;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPause:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPause:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->addState(Lcom/android/internal/util/State;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mListening:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->setInitialState(Lcom/android/internal/util/State;)V

    invoke-static {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->exit()V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassLnr:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPause:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->lastLoc:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->lastLoc:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mListening:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/Location;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->getLastLoc()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method private exit()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mLocationMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->mPassLnr:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->quit()V

    return-void
.end method

.method private getLastLoc()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->lastLoc:Landroid/location/Location;

    return-object v0
.end method
