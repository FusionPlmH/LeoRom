.class Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummaryCHN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$1;->this$0:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$1;->this$0:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$1;->this$0:Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method
