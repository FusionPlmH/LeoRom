.class Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter$NetworkStatsServiceForceUpdateTask;
.super Landroid/os/AsyncTask;
.source "TrafficPresenter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsServiceForceUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter$NetworkStatsServiceForceUpdateTask;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter$NetworkStatsServiceForceUpdateTask;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter$NetworkStatsServiceForceUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter$NetworkStatsServiceForceUpdateTask;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;)Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TrafficPresenter"

    const-string v2, "Failed to force update stats service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "TrafficPresenter"

    const-string v2, "Failed to force update stats service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
