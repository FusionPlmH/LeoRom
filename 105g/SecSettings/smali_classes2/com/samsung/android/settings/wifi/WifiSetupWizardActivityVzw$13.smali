.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$13;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivityVzw.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$13;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$13;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$1000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    return-void
.end method
