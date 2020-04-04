.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$1;
.super Landroid/os/Handler;
.source "PhoneStateMonitorRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xfeef

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->access$101(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->Movement:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v2

    aget-object v2, v0, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->LcdDirect:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->access$400(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->Embower:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->access$500(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->FinalLcdOff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->access$600(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->LcdOffInference:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->notifyObserver()V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "runner disabled"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
