.class Lcom/samsung/android/settings/wifi/WifiReset$1;
.super Ljava/lang/Thread;
.source "WifiReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiReset;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiReset;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiReset;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiReset;->access$000(Lcom/samsung/android/settings/wifi/WifiReset;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiReset;->access$100(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->factoryReset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiReset;->access$100(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiReset;->access$100(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xf2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiReset;->access$100(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiReset;->access$200()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiReset$1;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiReset;->access$100(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    :goto_0
    return-void
.end method
