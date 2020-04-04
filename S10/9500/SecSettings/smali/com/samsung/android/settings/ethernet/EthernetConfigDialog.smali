.class public Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;
.super Landroid/app/AlertDialog;
.source "EthernetConfigDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field ipTextWatcher:Landroid/text/TextWatcher;

.field private mConTypeDhcp:Landroid/widget/RadioButton;

.field private mConTypeManual:Landroid/widget/RadioButton;

.field private mContext:Landroid/content/Context;

.field private mDevList:Landroid/widget/Spinner;

.field private mDevs:Landroid/widget/TextView;

.field private mDns:Landroid/widget/EditText;

.field private mEnablePending:Z

.field private mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

.field private mEthInfo:Landroid/net/EthernetDevInfo;

.field private mEthLayer:Lcom/samsung/android/settings/ethernet/EthernetLayer;

.field private mEthManager:Landroid/net/EthernetManager;

.field private mGw:Landroid/widget/EditText;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIpaddr:Landroid/widget/EditText;

.field private mMask:Landroid/widget/EditText;

.field private mOuterLayout:Landroid/widget/LinearLayout;

.field private mProxyAuthId:Landroid/widget/TextView;

.field private mProxyAuthPassword:Landroid/widget/TextView;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxyProperties:Landroid/net/ProxyInfo;

.field private mProxySettingLayout:Landroid/widget/LinearLayout;

.field private mProxySettings:I

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mView:Landroid/view/View;

.field private staticInputView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/ethernet/EthernetEnabler;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$3;-><init>(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/ethernet/EthernetLayer;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ethernet/EthernetLayer;-><init>(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthLayer:Lcom/samsung/android/settings/ethernet/EthernetLayer;

    iput-object p2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-virtual {p2}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->getManager()Landroid/net/EthernetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->buildDialogContent(Landroid/content/Context;)I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->staticInputView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    return-object v0
.end method

.method private handle_saveconf()V
    .locals 5

    new-instance v0, Landroid/net/EthernetDevInfo;

    invoke-direct {v0}, Landroid/net/EthernetDevInfo;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setIfName(Ljava/lang/String;)V

    const-string v1, "EtherenetSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config device for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "EtherenetSettings"

    const-string v3, "mode dhcp"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "dhcp"

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setConnectMode(Ljava/lang/String;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setIpAddress(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setRouteAddr(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setDnsAddr(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/net/EthernetDevInfo;->setNetMask(I)V

    goto :goto_0

    :cond_1
    const-string v1, "EtherenetSettings"

    const-string v3, "mode manual"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "manual"

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setConnectMode(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setIpAddress(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setRouteAddr(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setDnsAddr(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->invertNetMask(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setNetMask(I)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    iget v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettings:I

    iget-object v4, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, v0, v3, v4}, Landroid/net/EthernetManager;->UpdateEthDevInfo(Landroid/net/EthernetDevInfo;ILandroid/net/ProxyInfo;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEnablePending:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->setCheckBox(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v1, v2}, Landroid/net/EthernetManager;->setUserDisabled(Z)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEnablePending:Z

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->setCheckBox(I)V

    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "EtherenetSettings"

    const-string v2, "ipAndProxyFieldsAreValid"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->validateIpConfigFields()I

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettings:I

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mHttpProxy:Landroid/net/ProxyInfo;

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    iget-object v0, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettings:I

    iget-object v0, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v0, "EtherenetSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " host, portStr, exclusionList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move v6, v2

    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    invoke-static {v11, v12, v13}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v6, v0

    const-string v0, "EtherenetSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const v6, 0x7f121144

    :goto_0
    move v14, v5

    move v0, v6

    if-nez v0, :cond_5

    iget-object v5, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v6, 0x7f0a061f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v5, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v5, "EtherenetSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " user, password"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v16, v10

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/net/ProxyInfo;

    move-object v5, v2

    move-object v6, v11

    move v7, v14

    move-object v8, v15

    move-object v9, v10

    move-object/from16 v16, v10

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_2

    :cond_2
    move-object/from16 v16, v10

    :goto_1
    return v2

    :cond_3
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v11, v14, v13}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mHttpProxy:Landroid/net/ProxyInfo;

    :cond_4
    :goto_2
    goto :goto_3

    :cond_5
    return v2

    :cond_6
    const/4 v0, 0x2

    if-ne v3, v0, :cond_9

    iget-object v0, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettings:I

    iget-object v0, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v5, "EtherenetSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " uriSequence"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    return v2

    :cond_7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_8

    return v2

    :cond_8
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v5}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v2, v1, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mHttpProxy:Landroid/net/ProxyInfo;

    :cond_9
    :goto_3
    return v4
.end method

.method private showProxyFields()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const v1, 0x7f0a0624

    const v2, 0x7f0a0621

    const/4 v3, 0x0

    const v4, 0x7f0a0629

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0622

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0625

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyPortView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyPortView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0620

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a061f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyAuthId:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a061c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyAuthId:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyAuthId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a061d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyAuthPassword:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyAuthPassword:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyHostView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyPortView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0623

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyPacView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private validateIpConfigField(Landroid/widget/EditText;)I
    .locals 5

    const-string v0, "EtherenetSettings"

    const-string/jumbo v1, "validateIpConfigField"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    nop

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "EtherenetSettings"

    const-string/jumbo v4, "validateIpConfigField : has IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    return v3
.end method

.method private validateIpConfigFields()I
    .locals 3

    const-string v0, "EtherenetSettings"

    const-string/jumbo v1, "validateIpConfigFields"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const-string v0, "EtherenetSettings"

    const-string v2, "mIpaddr is not valid"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EtherenetSettings"

    const-string v2, "mDns is not valid"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EtherenetSettings"

    const-string v2, "mGw is not valid"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->validateIpConfigField(Landroid/widget/EditText;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "EtherenetSettings"

    const-string v2, "mMask is not valid"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public buildDialogContent(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0182

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a02bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->staticInputView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a02d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevs:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a02da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0601c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0240

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0627

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettingLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0626

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a04af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a040e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a04fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a02db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a02dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a05a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mOuterLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setTextDirection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setTextDirection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setTextDirection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setGravity(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    new-instance v3, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$1;-><init>(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    new-instance v3, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog$2;-><init>(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->setInverseBackgroundForced(Z)V

    const/4 v0, -0x1

    const v1, 0x7f120e4b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    const v1, 0x7f120e3d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return v2
.end method

.method public enableSaveIfAppropriate()V
    .locals 4

    const-string v0, "EtherenetSettings"

    const-string v1, "enableSaveIfAppropriate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "EtherenetSettings"

    const-string v3, "save button is not set"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->ipAndProxyFieldsAreValid()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v2}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "EtherenetSettings"

    const-string v3, "Ethernet state is enabled so disabling save button"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public invertGetNetMask(I)Ljava/lang/String;
    .locals 3

    const-string v0, "EtherenetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invertGetNetMask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const-string v0, "255.0.0.0"

    return-object v0

    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    const-string v0, "255.255.0.0"

    return-object v0

    :cond_1
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    const-string v0, "255.255.255.0"

    return-object v0

    :cond_2
    const/16 v0, 0x20

    if-ne p1, v0, :cond_3

    const-string v0, "255.255.255.255"

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public invertNetMask(Ljava/lang/String;)I
    .locals 3

    const-string v0, "EtherenetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invertNetMask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "255.0.0.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    return v0

    :cond_0
    const-string v0, "255.255.0.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    return v0

    :cond_1
    const-string v0, "255.255.255.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x18

    return v0

    :cond_2
    const-string v0, "255.255.255.255"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0a061f

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a061b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    const-string v0, "EtherenetSettings"

    const-string v1, "Unknow button"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->handle_saveconf()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->setCheckBox(I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "EtherenetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->showProxyFields()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->setCheckBox(I)V

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onStart()V
    .locals 6

    const-string v0, "EtherenetSettings"

    const-string v1, "onStart to initialze/re-set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "eth0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "eth0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v1}, Landroid/net/EthernetManager;->getSavedEthConfig()Landroid/net/EthernetDevInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    const-string v1, "EtherenetSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->updateDevNameList([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    invoke-virtual {v1}, Landroid/net/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v1

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setSelection(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v3, v1}, Landroid/net/EthernetManager;->getSavedProxyInfo(Ljava/lang/String;)Landroid/net/ProxyInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxyProperties:Landroid/net/ProxyInfo;

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    invoke-virtual {v4}, Landroid/net/EthernetDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    invoke-virtual {v4}, Landroid/net/EthernetDevInfo;->getRouteAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    invoke-virtual {v4}, Landroid/net/EthernetDevInfo;->getDnsAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "EtherenetSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net mask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    invoke-virtual {v5}, Landroid/net/EthernetDevInfo;->getNetMask()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    invoke-virtual {v4}, Landroid/net/EthernetDevInfo;->getNetMask()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->invertGetNetMask(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v3, v1}, Landroid/net/EthernetManager;->getSavedProxySettings(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v4}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v3, v1}, Landroid/net/EthernetManager;->getSavedProxySettings(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v4}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->showProxyFields()V

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mEthInfo:Landroid/net/EthernetDevInfo;

    invoke-virtual {v3}, Landroid/net/EthernetDevInfo;->getConnectMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dhcp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->staticInputView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeDhcp:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocus()Z

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    return-void
.end method

.method public updateDevNameList([Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;->mDevList:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    return-void
.end method
