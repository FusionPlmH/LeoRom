.class Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$8;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$8;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$8;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2600(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "WifiP2pDevicePicker"

    const-string v2, "TTS : Initilization Failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_0
    const-string v1, "WifiP2pDevicePicker"

    const-string v2, "TTS : This Language is not downloaded"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "WifiP2pDevicePicker"

    const-string v2, "TTS : This Language is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method
