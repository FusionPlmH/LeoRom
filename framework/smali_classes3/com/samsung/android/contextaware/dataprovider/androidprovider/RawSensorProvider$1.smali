.class Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;
.super Ljava/lang/Object;
.source "RawSensorProvider.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$000(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const-string v1, "SystemTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$100(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const-string v1, "TimeStamp"

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$200(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const-string v1, "Accuracy"

    iget v2, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$300(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v2

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->notifyObserver()V

    return-void
.end method
