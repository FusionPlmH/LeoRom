.class Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;
.super Ljava/lang/Object;
.source "WifiApDeviceInfoPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const v0, 0x7f1212e9

    const v1, 0x7f1208f5

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$100(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$002(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$000(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$300(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ssid changed so need to apply new ssid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$000(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->createApConfigWithCurrentSsid(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x4d

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHSD"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->access$600(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_0
    return-void
.end method
