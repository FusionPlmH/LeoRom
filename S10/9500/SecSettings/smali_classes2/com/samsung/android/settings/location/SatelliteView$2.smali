.class Lcom/samsung/android/settings/location/SatelliteView$2;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/SatelliteView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/location/SatelliteView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/SatelliteView$2;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView$2;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget-object v1, v1, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    const-string v0, "GPS_SATELLITE_VIEW"

    const-string v1, "onGpsStatusChanged GpsStatus.GPS_EVENT_FIRST_FIX catch error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView$2;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget-object v1, v1, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView$2;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/location/SatelliteView;->access$002(Lcom/samsung/android/settings/location/SatelliteView;I)I

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x4

    if-ne v1, p1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView$2;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget-object v1, v1, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_2

    const-string v0, "GPS_SATELLITE_VIEW"

    const-string v1, "onGpsStatusChanged GpsStatus.GPS_EVENT_SATELLITE_STATUS catch error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView$2;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget-object v1, v1, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView$2;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    const/4 v3, 0x0

    iput v3, v2, Lcom/samsung/android/settings/location/SatelliteView;->sv_list_mask:I

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$100()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "GPS_SATELLITE_VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRN NUM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v4, 0x20

    if-le v3, v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/location/SatelliteView$2;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget-object v4, v4, Lcom/samsung/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    add-int/lit8 v5, v3, -0x1

    aput-object v2, v4, v5

    iget-object v4, p0, Lcom/samsung/android/settings/location/SatelliteView$2;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget v5, v4, Lcom/samsung/android/settings/location/SatelliteView;->sv_list_mask:I

    add-int/lit8 v6, v3, -0x1

    const/4 v7, 0x1

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/settings/location/SatelliteView;->sv_list_mask:I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView$2;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    :cond_6
    :goto_1
    return-void
.end method
