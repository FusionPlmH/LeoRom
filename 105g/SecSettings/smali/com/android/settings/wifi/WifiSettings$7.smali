.class Lcom/android/settings/wifi/WifiSettings$7;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->showConnectionWarningView(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;

.field final synthetic val$accessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/samsung/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$7;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$7;->val$accessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$7;->val$accessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$7;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$7;->val$accessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$7;->val$accessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    return-void
.end method
