.class Lcom/android/settings/wifi/WifiSettings$11;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$11;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Z)V
    .locals 3

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabler changed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$11;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$900(Lcom/android/settings/wifi/WifiSettings;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$11;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$900(Lcom/android/settings/wifi/WifiSettings;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$11;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$900(Lcom/android/settings/wifi/WifiSettings;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$11;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$900(Lcom/android/settings/wifi/WifiSettings;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$11;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/WifiSettings;->access$1000(Lcom/android/settings/wifi/WifiSettings;Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$11;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$11;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged(I)V

    :goto_0
    return-void
.end method
