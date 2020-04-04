.class Lcom/android/settings/wifi/details/WifiConnectPrefController$5;
.super Ljava/lang/Object;
.source "WifiConnectPrefController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/details/WifiConnectPrefController;->showErrorDialog(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$5;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$5;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$700(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Lcom/samsung/android/settings/display/widget/ButtonPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$5;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$600(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121dcb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$5;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$900(Lcom/android/settings/wifi/details/WifiConnectPrefController;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$5;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$800(Lcom/android/settings/wifi/details/WifiConnectPrefController;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$5;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1402(Lcom/android/settings/wifi/details/WifiConnectPrefController;Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$5;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$502(Lcom/android/settings/wifi/details/WifiConnectPrefController;Z)Z

    return-void
.end method
