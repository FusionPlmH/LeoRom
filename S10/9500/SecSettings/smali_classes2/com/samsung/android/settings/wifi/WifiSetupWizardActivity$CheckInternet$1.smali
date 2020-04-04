.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$1;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$1800(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;ZZLjava/lang/String;)V

    return-void
.end method
