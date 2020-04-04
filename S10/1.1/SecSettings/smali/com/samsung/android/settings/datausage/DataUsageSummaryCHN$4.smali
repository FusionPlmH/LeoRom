.class Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DataUsageSummaryCHN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$4;->this$0:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    const-string v0, "DataUsageSummary"

    const-string v1, "Vpn is connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$4;->this$0:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->access$102(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;Z)Z

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    const-string v0, "DataUsageSummary"

    const-string v1, "Vpn is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$4;->this$0:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->access$102(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;Z)Z

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    return-void
.end method
