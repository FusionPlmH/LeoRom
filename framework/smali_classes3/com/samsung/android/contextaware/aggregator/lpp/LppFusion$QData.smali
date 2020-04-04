.class Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;
.super Ljava/lang/Object;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QData"
.end annotation


# instance fields
.field private listAPDR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field private listLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private loc:Landroid/location/Location;

.field private msgid:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;",
            "TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->msgid:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;

    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v3, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_BATCH_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_LIST_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LOCATION_LIST_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v0, :cond_5

    :cond_3
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/location/Location;

    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/location/Location;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;

    new-instance v5, Landroid/location/Location;

    invoke-direct {v5, v3}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move-object v0, p2

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;

    :cond_5
    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->msgid:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;

    return-object v0
.end method
