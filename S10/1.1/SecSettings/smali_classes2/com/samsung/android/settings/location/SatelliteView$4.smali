.class Lcom/samsung/android/settings/location/SatelliteView$4;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Landroid/location/LocationListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/location/SatelliteView$4;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 14

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v6

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v7

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-static {v2, v3}, Lcom/samsung/android/settings/location/SatelliteView;->access$202(D)D

    invoke-static {v0, v1}, Lcom/samsung/android/settings/location/SatelliteView;->access$302(D)D

    invoke-static {v4, v5}, Lcom/samsung/android/settings/location/SatelliteView;->access$402(D)D

    invoke-static {v6}, Lcom/samsung/android/settings/location/SatelliteView;->access$502(F)F

    iget-object v11, p0, Lcom/samsung/android/settings/location/SatelliteView$4;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    const/high16 v12, 0x45610000    # 3600.0f

    mul-float/2addr v12, v7

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v11, v12, v13}, Lcom/samsung/android/settings/location/SatelliteView;->access$602(Lcom/samsung/android/settings/location/SatelliteView;D)D

    iget-object v11, p0, Lcom/samsung/android/settings/location/SatelliteView$4;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v11, v8}, Lcom/samsung/android/settings/location/SatelliteView;->access$702(Lcom/samsung/android/settings/location/SatelliteView;F)F

    iget-object v11, p0, Lcom/samsung/android/settings/location/SatelliteView$4;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v11, v9, v10}, Lcom/samsung/android/settings/location/SatelliteView;->access$802(Lcom/samsung/android/settings/location/SatelliteView;J)J

    new-instance v11, Ljava/util/Date;

    iget-object v12, p0, Lcom/samsung/android/settings/location/SatelliteView$4;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v12}, Lcom/samsung/android/settings/location/SatelliteView;->access$800(Lcom/samsung/android/settings/location/SatelliteView;)J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    iget-object v12, p0, Lcom/samsung/android/settings/location/SatelliteView$4;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/samsung/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    iget-object v12, p0, Lcom/samsung/android/settings/location/SatelliteView$4;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v12}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView$4;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView$4;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView$4;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    return-void
.end method
