.class public Lcom/samsung/android/settings/fmm/SimChangeAlert;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static chkboxFlag:Z


# instance fields
.field public AlterMessageLengthFilter:Landroid/text/InputFilter;

.field private mActionBarLayout:Landroid/view/View;

.field private mAlertMessage:Landroid/widget/EditText;

.field private mContact:Landroid/widget/Button;

.field private mContent:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLinkedContactEdit:Landroid/widget/EditText;

.field private mLinkedContactTitle:Landroid/widget/TextView;

.field private mMaxToast:Landroid/widget/Toast;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTempName:Ljava/lang/String;

.field mView:Landroid/view/View;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/fmm/SimChangeAlert$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$2;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->AlterMessageLengthFilter:Landroid/text/InputFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/fmm/SimChangeAlert;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->setTitleTextVisible(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->addNewRecipient()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mTempName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/fmm/SimChangeAlert;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mTempName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mMaxToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/settings/fmm/SimChangeAlert;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mMaxToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method private addNewRecipient()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d01d4

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->setFocus(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f120e4b

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private enableDisableView(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->enableDisableView(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setTitleTextVisible(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactEdit:Landroid/widget/EditText;

    if-nez p1, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public DoSave()Z
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lcom/samsung/android/settings/fmm/NVStore;

    invoke-direct {v1}, Lcom/samsung/android/settings/fmm/NVStore;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "1"

    goto :goto_0

    :cond_0
    const-string v4, "0"

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1204ae

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredICCID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/NVStore;->IsPhLockeEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "1"

    goto :goto_1

    :cond_1
    const-string v9, "0"

    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    if-eqz v6, :cond_12

    if-eqz v6, :cond_2

    const-string v11, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_2

    goto/16 :goto_7

    :cond_2
    const/4 v11, 0x0

    move v12, v11

    move v11, v10

    :goto_2
    iget-object v13, v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-ge v11, v13, :cond_6

    iget-object v13, v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v13}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v14, 0x7f1207dc

    invoke-static {v15, v14, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->setFocus(Z)V

    return v10

    :cond_3
    invoke-virtual {v13}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v13}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    const-string v15, "00"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v13}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f12056b

    invoke-static {v14, v15, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->setFocus(Z)V

    return v10

    :cond_4
    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v13}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v14, "none;"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_6
    if-nez v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v13, 0x7f1207d9

    invoke-static {v11, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    return v10

    :cond_7
    :goto_4
    const/4 v11, 0x5

    if-eq v12, v11, :cond_8

    const-string v11, "none;"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    if-eqz v7, :cond_9

    if-eqz v7, :cond_a

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    :cond_9
    const-string v7, "0000"

    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI2()Ljava/lang/String;

    move-result-object v11

    const/4 v11, 0x0

    if-eqz v11, :cond_b

    if-eqz v11, :cond_c

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_c

    :cond_b
    const-string v11, "0000"

    :cond_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_d
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v13, "phone"

    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    if-eqz v8, :cond_f

    const-string v13, ""

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_f

    :cond_e
    const-string v8, "00000000"

    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string v11, "SimChangeAlert"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "data formed for writing = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lcom/samsung/android/settings/fmm/NVStore$datatype;->All:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    invoke-virtual {v1, v11, v13}, Lcom/samsung/android/settings/fmm/NVStore;->writedata(Ljava/lang/String;Lcom/samsung/android/settings/fmm/NVStore$datatype;)V

    iget-object v11, v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v11}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "change_alert"

    const/4 v14, 0x1

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "change_alert"

    invoke-static {v11, v13, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v13, 0x7f1200f4

    invoke-static {v11, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    const/4 v10, 0x1

    return v10

    :cond_12
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f1207db

    invoke-static {v11, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    return v10
.end method

.method public SetContactNumber(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/16 v4, 0x3b

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;

    invoke-virtual {v3}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v2, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d01d4

    iget-object v6, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    nop

    move v2, v5

    move v0, v6

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1180

    return v0
.end method

.method public init()V
    .locals 11

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/settings/fmm/NVStore;

    invoke-direct {v1}, Lcom/samsung/android/settings/fmm/NVStore;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const v5, 0x7f0d01d4

    if-nez v3, :cond_1

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v0, v7

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, ""

    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "none"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v0, v8

    goto :goto_3

    :cond_3
    :goto_2
    const-string v3, ""

    :goto_3
    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "none"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v8, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v0, v9

    goto :goto_5

    :cond_5
    :goto_4
    const-string v6, ""

    :goto_5
    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "none"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    goto :goto_6

    :cond_6
    iget-object v8, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5, v9, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v0, v10

    goto :goto_7

    :cond_7
    :goto_6
    const-string v7, ""

    :goto_7
    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "none"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_8

    goto :goto_8

    :cond_8
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v10, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v0, v9

    goto :goto_9

    :cond_9
    :goto_8
    const-string v8, ""

    :goto_9
    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    if-eqz v4, :cond_b

    const-string v5, "Keep this message."

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    const-string v4, ""

    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    const v2, 0x7f0a0066

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setNextFocusDownId(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "change_alert"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SetContactNumber(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->chkboxFlag:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->showNotificationChargeDialog()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f121c5b

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const v1, 0x7f0d0268

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v2, 0x7f0a042c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v2, 0x7f0a076e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f121829

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/settings/fmm/SimChangeAlert$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$3;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v2, 0x7f0a0066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/InputFilter;

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->AlterMessageLengthFilter:Landroid/text/InputFilter;

    aput-object v4, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v3, 0x7f0a0472

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v3, 0x7f0a0471

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/samsung/android/settings/fmm/SimChangeAlert$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$4;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v3, 0x7f0a046f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/fmm/SimChangeAlert$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$5;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v4, 0x7f0a01c1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContact:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContact:Landroid/widget/Button;

    new-instance v4, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->init()V

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    new-instance v4, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "change_alert"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    nop

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->enableDisableView(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1181

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->DoSave()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->finishFragment()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/fmm/SimChangeAlert$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$1;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    iput-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1182

    invoke-static {v0, v1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->enableDisableView(Landroid/view/View;Z)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->chkboxFlag:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->showNotificationChargeDialog()V

    :cond_0
    return-void
.end method

.method public showNotificationChargeDialog()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d020c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0289

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v2, Lcom/samsung/android/settings/fmm/SimChangeAlert$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$8;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1205ce

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/fmm/SimChangeAlert$11;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/fmm/SimChangeAlert$11;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/fmm/SimChangeAlert$10;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/fmm/SimChangeAlert$10;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/fmm/SimChangeAlert$9;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/fmm/SimChangeAlert$9;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    return-void
.end method
