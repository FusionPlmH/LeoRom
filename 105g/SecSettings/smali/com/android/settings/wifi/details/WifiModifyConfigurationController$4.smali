.class Lcom/android/settings/wifi/details/WifiModifyConfigurationController$4;
.super Ljava/lang/Object;
.source "WifiModifyConfigurationController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiModifyConfigurationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiModifyConfigurationController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiModifyConfigurationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiModifyConfigurationController$4;->this$0:Lcom/android/settings/wifi/details/WifiModifyConfigurationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    const-string v0, "WifiModifyConfigurationController"

    const-string v1, "mSaveListener - onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiModifyConfigurationController$4;->this$0:Lcom/android/settings/wifi/details/WifiModifyConfigurationController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiModifyConfigurationController;->access$600(Lcom/android/settings/wifi/details/WifiModifyConfigurationController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121e56

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "WifiModifyConfigurationController"

    const-string v1, "mSaveListener onSuccess "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiModifyConfigurationController$4;->this$0:Lcom/android/settings/wifi/details/WifiModifyConfigurationController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiModifyConfigurationController;->access$500(Lcom/android/settings/wifi/details/WifiModifyConfigurationController;)V

    return-void
.end method
