.class public Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiSnsExceptionActivity.java"


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogTheme:I

.field private mIsResultReported:Z

.field private mPopUpAppearedTime:J

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSsid:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

.field mWifiSnsExceptionDialogListener:Landroid/view/View$OnClickListener;

.field private netId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mIsResultReported:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->updateBigdata(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mIsResultReported:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private showWifiSnsExceptionDialog()V
    .locals 14

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "SalesCode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vzw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f0d02e3

    invoke-static {v4, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f0d02e2

    invoke-static {v4, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :goto_0
    const v3, 0x7f0a0978

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a082c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f0a0427

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_ADAPTIVE_WIFI"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    const-string v6, "Smart Network Switch"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Wifi_ConfigAutoWifiNaming"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v11, 0x7f121f80

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v13, v12, v8

    iget-object v13, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    aput-object v13, v12, v7

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const v11, 0x7f121f81

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v10, v10, 0x30

    const/16 v11, 0x20

    if-ne v10, v11, :cond_2

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    if-eqz v7, :cond_3

    const/4 v10, 0x4

    iput v10, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mDialogTheme:I

    goto :goto_3

    :cond_3
    const/4 v10, 0x5

    iput v10, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mDialogTheme:I

    :goto_3
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget v11, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mDialogTheme:I

    invoke-direct {v10, p0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f121f86

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$2;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mPopUpAppearedTime:J

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    const-string v8, "WifiSnsExceptionActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiSnsExceptionActivity appears with SSID : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private updateBigdata(I)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mPopUpAppearedTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x139

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "event"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "time"

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mWifiSnsExceptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->setupAlert()V

    const v0, 0x7f1301be

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->setTheme(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "netId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    const-string v1, "SSID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    const-string v2, "<unknown ssid>"

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "AP"

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mSsid:Ljava/lang/String;

    :cond_2
    const-string v1, "WifiSnsExceptionActivity"

    const-string v2, "WifiSnsExceptionActivity created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->showWifiSnsExceptionDialog()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 5

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSnsExceptionActivity"

    const-string v1, "WifiSnsExceptionActivity onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mIsResultReported:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xc9

    iput v2, v0, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "keep_connection"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "netId"

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->netId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiSnsExceptionActivity"

    const-string v2, "WifiManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    move v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sns_dialog_for_starting_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    return-void
.end method
