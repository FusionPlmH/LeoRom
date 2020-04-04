.class Lcom/android/settings/wifi/details/WifiConnectPrefController$6;
.super Ljava/lang/Object;
.source "WifiConnectPrefController.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiConnectPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$6;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userSelectSpinnerItem(I)V
    .locals 3

    const-string v0, "WifiConnectPrefController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEapSpinnerCallback item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$6;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1102(Lcom/android/settings/wifi/details/WifiConnectPrefController;I)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$6;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1200(Lcom/android/settings/wifi/details/WifiConnectPrefController;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$6;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1300(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setSelection(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$6;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1400(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$6;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1500(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$6;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateImeOptionsForEditText()V

    return-void
.end method
