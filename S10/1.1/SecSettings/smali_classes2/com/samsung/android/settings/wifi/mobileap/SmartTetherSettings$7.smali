.class Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$7;
.super Ljava/lang/Object;
.source "SmartTetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$400(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "SmartTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartWhiteListClicked`s onClick() : (Modify) Removing Device Name-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$400(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mac-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$400(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getInstance()Landroid/net/wifi/SemWifiApSmartWhiteList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$400(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$1000(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SemWifiApSmartWhiteList;->modifyWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$700(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V

    :cond_0
    return-void
.end method
