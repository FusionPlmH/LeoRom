.class Lcom/android/settings/datausage/DataUsageList$7;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settingslib/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$7;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/settingslib/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$7;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList$7;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageList;->access$1000(Lcom/android/settings/datausage/DataUsageList;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settingslib/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/net/ChartData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;",
            "Lcom/android/settingslib/net/ChartData;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$7;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$1100(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/widget/LoadingViewController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$7;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0, p2}, Lcom/android/settings/datausage/DataUsageList;->access$1202(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$7;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$500(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$7;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->access$1200(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settingslib/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$7;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$600(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$7;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->access$1200(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settingslib/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkStats(Landroid/net/NetworkStatsHistory;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$7;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$000(Lcom/android/settings/datausage/DataUsageList;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/settingslib/net/ChartData;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageList$7;->onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$7;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsageList;->access$1202(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$7;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$500(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$7;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$600(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkStats(Landroid/net/NetworkStatsHistory;)V

    :goto_0
    return-void
.end method
