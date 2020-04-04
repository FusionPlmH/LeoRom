.class public Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiSnsPoorConnectionActivity.java"


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogTheme:I

.field private mEnabled:Z

.field private mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showSnsPoorConnectionDialog()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02e1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a097a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f121f43

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f121f45

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f121f25    # 1.94229E38f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f121f26

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    const/4 v3, 0x4

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mDialogTheme:I

    goto :goto_2

    :cond_2
    const/4 v3, 0x5

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mDialogTheme:I

    :goto_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mDialogTheme:I

    invoke-direct {v3, p0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f121f44

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f121f24

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f121c66

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "WifiSnsPoorConnectionActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiSnsPoorConnectionActivity appears with SNS Enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "wifi_poor_connection_warning"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    :cond_4
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->requestWindowFeature(I)Z

    iput-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->setupAlert()V

    const v1, 0x7f1301be

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->setTheme(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->setVisible(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->mEnabled:Z

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiSnsPoorConnectionActivity"

    const-string v1, "WifiSnsPoorConnectionActivity created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSnsPoorConnectionActivity;->showSnsPoorConnectionDialog()V

    return-void
.end method
