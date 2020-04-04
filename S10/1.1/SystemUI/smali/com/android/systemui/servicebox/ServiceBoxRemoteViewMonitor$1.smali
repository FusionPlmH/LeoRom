.class Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ServiceBoxRemoteViewMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor$1;->this$0:Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateServiceBoxRemoteViews(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 3

    const-string v0, "ServiceBoxRemoteViewMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateServiceBoxRemoteViews() item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor$1;->this$0:Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor;

    invoke-static {v1}, Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor;->access$000(Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor$1;->this$0:Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor;

    invoke-virtual {v1, v0}, Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor;->removeRemoteViews(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor$1;->this$0:Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor;

    invoke-static {v1}, Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor;->access$100(Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor$RemoteViewObserver;

    invoke-interface {v2, p1}, Lcom/android/systemui/servicebox/ServiceBoxRemoteViewMonitor$RemoteViewObserver;->update(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    goto :goto_1

    :cond_1
    return-void
.end method
