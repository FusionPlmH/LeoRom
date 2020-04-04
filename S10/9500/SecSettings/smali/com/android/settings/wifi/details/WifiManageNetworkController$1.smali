.class Lcom/android/settings/wifi/details/WifiManageNetworkController$1;
.super Ljava/lang/Object;
.source "WifiManageNetworkController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiManageNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiManageNetworkController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiManageNetworkController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController$1;->this$0:Lcom/android/settings/wifi/details/WifiManageNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiModifyActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "AcessPoint_SavedState"

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController$1;->this$0:Lcom/android/settings/wifi/details/WifiManageNetworkController;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiManageNetworkController;->access$000(Lcom/android/settings/wifi/details/WifiManageNetworkController;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiManageNetworkController$1;->this$0:Lcom/android/settings/wifi/details/WifiManageNetworkController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiManageNetworkController;->access$100(Lcom/android/settings/wifi/details/WifiManageNetworkController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
