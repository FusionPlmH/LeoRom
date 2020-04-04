.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivityVzw.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->onBackPressed()V

    return-void
.end method
