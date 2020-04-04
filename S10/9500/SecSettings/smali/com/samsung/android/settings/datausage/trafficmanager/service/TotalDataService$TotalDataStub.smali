.class public Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService$TotalDataStub;
.super Lcom/samsung/android/trafficmanager/ITotalData$Stub;
.source "TotalDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TotalDataStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService$TotalDataStub;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;

    invoke-direct {p0}, Lcom/samsung/android/trafficmanager/ITotalData$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultSubscriptionId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ITotalDataService"

    const-string v1, "getDefaultSubscriptionId in Service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService$TotalDataStub;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->access$100(Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;)I

    move-result v0

    return v0
.end method

.method public getTotalUsedBytes()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ITotalDataService"

    const-string v1, "getTotalUsedBytes in Service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService$TotalDataStub;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public updatePolicy(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ITotalDataService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePolicy(int) subId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService$TotalDataStub;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;->access$200(Lcom/samsung/android/settings/datausage/trafficmanager/service/TotalDataService;I)I

    move-result v0

    return v0
.end method
