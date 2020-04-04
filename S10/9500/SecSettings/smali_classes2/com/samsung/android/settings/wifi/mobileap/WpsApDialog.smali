.class public Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;
.super Landroid/app/AlertDialog;
.source "WpsApDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;
    }
.end annotation


# instance fields
.field private WpsCount:I

.field private mContext:Landroid/content/Context;

.field private mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mTimeoutBar:Landroid/widget/ProgressBar;

.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsPin:Ljava/lang/String;

.field private mWpsSetup:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->WpsCount:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_INIT:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    const-string v0, "WpsApDialog"

    const-string v1, "inside WpsAPDialog Ctor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    const-string v0, "WpsApDialog"

    const-string v1, "wps_tether"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    if-ne v0, v1, :cond_1

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    :cond_1
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->WpsCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->WpsCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->WpsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->WpsCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "wifi_state"

    const/16 v2, 0xe

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->dismiss()V

    :cond_1
    goto/16 :goto_2

    :cond_2
    const-string v1, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wps_success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f121f4a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->CONNECTED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    :cond_3
    goto/16 :goto_2

    :cond_4
    const-string v2, "wps_fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f121f4b

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    :cond_5
    goto/16 :goto_2

    :cond_6
    const-string v2, "wps_overlap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    :cond_7
    goto/16 :goto_2

    :cond_8
    const-string v2, "wps_pin_needed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0xca

    :try_start_0
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput v2, v3, Landroid/os/Message;->what:I

    const-string v5, "cmd_type"

    const-string v6, "wps_cancel_int"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "WpsApDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error NullPointerException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "WpsApDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error NullPointerException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    const/4 v3, 0x2

    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    if-eqz v3, :cond_9

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput v2, v3, Landroid/os/Message;->what:I

    const-string v2, "cmd_type"

    const-string v5, "wps_ap_pin_client"

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wps_pin"

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    :cond_9
    :goto_2
    return-void
.end method

.method private updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V
    .locals 2

    const-string v0, "WpsApDialog"

    const-string v1, "Inside Update dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_COMPLETE:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02d7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0974

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f121f51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0976

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0975

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    const v0, 0x7f121f52

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f121d75

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->setView(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 8

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)V

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    const v2, 0x7f121f4b

    const/16 v3, 0xca

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput v3, v0, Landroid/os/Message;->what:I

    const-string v3, "cmd_type"

    const-string v4, "wps_pbc_int"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_START:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f121f4d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "WpsApDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_3

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    const/4 v4, 0x2

    if-ne v4, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput v3, v0, Landroid/os/Message;->what:I

    const-string v3, "cmd_type"

    const-string v6, "wps_ap_pin_client"

    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "wps_pin"

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_START:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f121f4e

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v1

    const-string v2, "WpsApDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void
.end method

.method protected onStop()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_COMPLETE:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    if-eq v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0xca

    iput v2, v0, Landroid/os/Message;->what:I

    const-string v2, "cmd_type"

    const-string v3, "wps_cancel_int"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "WpsApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "WpsApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_3
    return-void
.end method
