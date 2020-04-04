.class Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;
.super Ljava/lang/Object;
.source "RawGpsProvider.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mmAz:[F

.field private final mmEl:[F

.field private final mmMask:[I

.field private final mmPrn:[I

.field private final mmSnr:[F

.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$800(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Ljava/util/Iterator;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "gpsSatellites is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/GpsSatellite;

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v7

    aput v7, v6, v4

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v7

    aput v7, v6, v4

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v7

    aput v7, v6, v4

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v7

    aput v7, v6, v4

    invoke-virtual {v5}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    const/4 v6, 0x2

    aput v2, v5, v6

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v7}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1100(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    aget-object v3, v5, v3

    invoke-virtual {v7, v3, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1200(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v7, 0x1

    aget-object v7, v5, v7

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    invoke-virtual {v3, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1300(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v6, v5, v6

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1400(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v6, 0x3

    aget-object v6, v5, v6

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1500(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v0, v5, v0

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    invoke-virtual {v3, v0, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1600(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/4 v3, 0x5

    aget-object v3, v5, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    invoke-virtual {v0, v3, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->notifyObserver()V

    return-void
.end method
