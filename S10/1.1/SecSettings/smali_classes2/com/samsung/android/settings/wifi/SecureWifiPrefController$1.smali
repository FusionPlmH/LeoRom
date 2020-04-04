.class Lcom/samsung/android/settings/wifi/SecureWifiPrefController$1;
.super Landroid/content/BroadcastReceiver;
.source "SecureWifiPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/SecureWifiPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SecureWifiPrefController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SecureWifiPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/SecureWifiPrefController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/SecureWifiPrefController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/SecureWifiPrefController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->access$000(Lcom/samsung/android/settings/wifi/SecureWifiPrefController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method
