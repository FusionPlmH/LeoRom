.class public Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiWcmKeepConnectActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static DBG:Z


# instance fields
.field private appLabel:Ljava/lang/String;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mDialogTheme:I

.field private mIsItFromWCM:Z

.field private mIsResultReported:Z

.field private mNegativeButton:Ljava/lang/String;

.field private mNotAskAgainCheck:Z

.field private mPositiveButton:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSsid:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiWcmKeepConnectionDialog:Landroid/app/AlertDialog;

.field private netId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mIsResultReported:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mIsItFromWCM:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mNotAskAgainCheck:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$1;-><init>(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mIsResultReported:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mIsResultReported:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mNotAskAgainCheck:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->netId:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->setAutoReconnectEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setAutoReconnectEnabled(ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiWcmKeepConnectActivity"

    const-string v1, "WifiManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->netId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x47

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "netId"

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "autoReconnect"

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->reconnect()Z

    :cond_2
    return-void
.end method

.method private showmWifiWcmKeepConnectionDialog()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02d5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0969

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->appLabel:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f121f08

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f121f04

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mIsItFromWCM:Z

    if-nez v5, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    const/16 v7, 0x20

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    if-eqz v3, :cond_2

    const/4 v5, 0x4

    iput v5, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mDialogTheme:I

    goto :goto_2

    :cond_2
    const/4 v5, 0x5

    iput v5, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mDialogTheme:I

    :goto_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget v7, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mDialogTheme:I

    invoke-direct {v5, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mIsItFromWCM:Z

    if-nez v7, :cond_3

    const v7, 0x7f121f09

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_3
    const v7, 0x7f121f05    # 1.9422835E38f

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_3
    const v7, 0x7f0a0177

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mNegativeButton:Ljava/lang/String;

    new-instance v8, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$2;-><init>(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mPositiveButton:Ljava/lang/String;

    new-instance v8, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$3;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$3;-><init>(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$4;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$4;-><init>(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)V

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiWcmKeepConnectionDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiWcmKeepConnectionDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiWcmKeepConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiWcmKeepConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    const-string v6, "WifiWcmKeepConnectActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WifiWcmKeepConnectionActivity appears with SSID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mSsid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiWcmKeepConnectionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiWcmKeepConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0a0177

    if-ne v0, v1, :cond_0

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mNotAskAgainCheck:Z

    const-string v0, "WifiWcmKeepConnectActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged mNotAskAgainCheck = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mNotAskAgainCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->requestWindowFeature(I)Z

    iput-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->setupAlert()V

    const v0, 0x7f1301b9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->setTheme(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "NETWORK_ID"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->netId:I

    const-string v2, "SSID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mSsid:Ljava/lang/String;

    const-string v2, "app_label"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->appLabel:Ljava/lang/String;

    const-string v2, "fromWCM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mIsItFromWCM:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mIsItFromWCM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120f80

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f121f0a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mNegativeButton:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mIsItFromWCM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f121f97

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f121f0b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mPositiveButton:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->netId:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mSsid:Ljava/lang/String;

    const-string v2, "<unknown ssid>"

    if-ne v0, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->finish()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mSsid:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "AP"

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mSsid:Ljava/lang/String;

    :cond_4
    const-string v0, "WifiWcmKeepConnectActivity"

    const-string v2, "WifiWcmKeepConnectActivity created"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->showmWifiWcmKeepConnectionDialog()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    const-string v0, "WifiWcmKeepConnectActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 5

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiWcmKeepConnectActivity"

    const-string v1, "WifiWcmKeepConnectActivity onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mIsResultReported:Z

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

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->netId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiWcmKeepConnectActivity"

    const-string v2, "WifiManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mContext:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sns_dialog_for_starting_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->finish()V

    return-void
.end method
